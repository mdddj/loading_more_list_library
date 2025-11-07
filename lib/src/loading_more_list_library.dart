import 'dart:async';

import 'dart:collection';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/status.dart';

abstract class RefreshBase<T> {
  Future<bool> refresh([bool notifyStateChanged = false]);

  Future<bool> errorRefresh();

  ///数据加载完成回调函数
  void completed(IList<T> list, bool isFirst) {}
}

abstract class LoadingMoreBase<T> extends ChangeNotifier
    with ListBase<T>
    implements RefreshBase<T> {
  IList<T> array = <T>[].lock;

  bool _isDiapose = false;


  bool isDispose() {
    return _isDiapose;
  }

  @override
  T operator [](int index) => array[index];

  @override
  void operator []=(int index, T value) => array.replace(index, value);

  bool get hasMore => true;
  bool isLoading = false;

  //do not change this in out side
  IndicatorStatusModel indicatorStatus =
      IndicatorStatusModel.fullScreenBusying();

  Future<bool> loadMore() async {
    final IndicatorStatusModel preStatus = indicatorStatus;
    indicatorStatus = IndicatorStatusModel.loadingMoreBusying();
    if (preStatus.runtimeType != indicatorStatus.runtimeType) {
      onStateChanged();
    }
    return await _innerloadData(true);
  }

  Future<bool> _innerloadData([bool isLoadMoreAction = false]) async {
    try {
      if (isLoading || !hasMore) {
        return true;
      }
      isLoading = true;
      final bool _tag = isEmpty;
      final bool isSuccess = await loadData(isLoadMoreAction);
      isLoading = false;
      if (isSuccess) {
        indicatorStatus = IndicatorStatusModel.none();
        if (isEmpty) {
          indicatorStatus = IndicatorStatusModel.empty(this);
        }
      } else {
        if (indicatorStatus is IndicatorStatusModelWithFullScreenBusying) {
          indicatorStatus =
              IndicatorStatusModel.fullScreenError(refreshBase: this);
        } else if (indicatorStatus
            is IndicatorStatusModelWithLoadingMoreBusying) {
          indicatorStatus = IndicatorStatusModel.error(refreshBase: this);
        }
      }
      onStateChanged();
      completed(array, _tag);
      return isSuccess;
    } catch (e, s) {
      if (indicatorStatus is IndicatorStatusModelWithFullScreenBusying) {
        indicatorStatus = IndicatorStatusModel.fullScreenError(
            error: e, stackTrace: s, refreshBase: this);
      } else if (indicatorStatus
          is IndicatorStatusModelWithLoadingMoreBusying) {
        indicatorStatus = IndicatorStatusModel.error(
            error: e, stackTrace: s, refreshBase: this);
      }
      onStateChanged();
      return false;
    }
  }

  Future<bool> loadData([bool isLoadMoreAction = false]);

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) async {
    if (notifyStateChanged) {
      clear();
      isLoading = false;
      indicatorStatus = IndicatorStatusModel.fullScreenBusying();
      onStateChanged();
    }
    return await _innerloadData();
  }

  @override
  Future<bool> errorRefresh() async {
    if (isEmpty) {
      return await refresh(true);
    }
    return await loadMore();
  }

  @override
  int get length => array.length;

  @override
  set length(int newLength) => array.unlock.length = newLength;

  bool get hasError {
    return indicatorStatus is IndicatorStatusModelWithFullScreenError ||
        indicatorStatus is IndicatorStatusModelWithError;
  }

  /// update ui
  void setState() {
    notifyListeners();
  }

  void onStateChanged() {
    notifyListeners();
  }

  T getWithIndex(int index, {T Function(int index)? orElse}) {
    if (orElse == null) {
      return this[index];
    }
    return (index < 0 || index >= length) //
        ? orElse(index)
        : this[index];
  }

  T updateItem(T oldItem, T Function(T old) call, [bool updateUi = false]) {
    final int index = array.indexOf(oldItem);
    final T newItem = call(get(index));
    array = array.replace(index, newItem);
    if (updateUi) {
      setState();
    }
    return newItem;
  }

  @override
  void add(T element) {
    array = array.add(element);
  }

  @override
  void addAll(Iterable<T> iterable) {
    array = array.addAll(iterable);
  }

  @override
  void clear() {
    array = array.clear();
  }

  @override
  void removeWhere(bool Function(T element) test) {
    array = array.removeWhere(test);
  }

  @override
  void insert(int index, T element) {
    array = array.insert(index, element);
  }

  Widget watchThis<C extends LoadingMoreBase<T>>(
      {required Widget Function(C model, IList<T> list) builder}) {
    return ChangeNotifierProvider<C>.value(
      value: this as C,
      child: Consumer<C>(
        builder: (BuildContext context, C value, Widget? child) {
          return builder.call(value, value.array);
        },
      ),
    );
  }

  Widget watch<C extends LoadingMoreBase<T>>({required Widget child}) {
    return ChangeNotifierProvider<C>.value(
      value: this as C,
      child: child,
    );
  }

  Widget watchBy<S, C extends LoadingMoreBase<T>>(
      {required Widget Function(S value, C model) builder,
        required S Function(C model) select}) {
    return ChangeNotifierProvider<C>.value(
      value: this as C,
      child: Selector<C, S>(
        builder: (BuildContext context, S value, Widget? child) {
          return builder.call(value, this as C);
        },
        selector: (BuildContext context, C model) => select(model),
      ),
    );
  }

  @override
  void completed(IList<T> list, bool isFirst) {}

  @override
  void notifyListeners() {
    if (hasListeners && !_isDiapose) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if(!_isDiapose){
          super.notifyListeners();
        }
      });
    }
  }

  @override
  void dispose() {
    if(_isDiapose){
      return;
    }
    _isDiapose = true;
    super.dispose();
  }
}
