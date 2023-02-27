import 'dart:async';

import 'dart:collection';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:meta/meta.dart';

abstract class RefreshBase {
  Future<bool> refresh([bool notifyStateChanged = false]);

  Future<bool> errorRefresh();
}

extension IListEx<T> on IList<T> {
  IList<T> updateItemEx(T oldItem, T Function(T old) call) {
    final int index = indexOf(oldItem);
    if(index>=0){
      final T newItem = call(get(index));
      return replace(index, newItem);
    }
    return this;
  }
}

enum IndicatorStatus { none, loadingMoreBusying, fullScreenBusying, error, fullScreenError, noMoreLoad, empty }

abstract class LoadingMoreBase<T> extends ListBase<T> with _LoadingMoreBloc<T>, RefreshBase {
  IList<T> _array = <T>[].lock;

  IList<T> get array => _array;

  set array(IList<T> data) => _array = data;

  @override
  T operator [](int index) => _array[index];

  @override
  void operator []=(int index, T value) => _array.replace(index, value);

  bool get hasMore => true;
  bool isLoading = false;

  //do not change this in out side
  IndicatorStatus indicatorStatus = IndicatorStatus.fullScreenBusying;

  @mustCallSuper
  Future<bool> loadMore() async {
    final IndicatorStatus preStatus = indicatorStatus;
    indicatorStatus = IndicatorStatus.loadingMoreBusying;
    if (preStatus != indicatorStatus) {
      onStateChanged(this);
    }
    return await _innerloadData(true);
  }

  Future<bool> _innerloadData([bool isLoadMoreAction = false]) async {
    if (isLoading || !hasMore) {
      return true;
    }
    isLoading = true;
    final bool isSuccess = await loadData(isLoadMoreAction);
    isLoading = false;
    if (isSuccess) {
      indicatorStatus = IndicatorStatus.none;
      if (isEmpty) {
        indicatorStatus = IndicatorStatus.empty;
      }
    } else {
      if (indicatorStatus == IndicatorStatus.fullScreenBusying) {
        indicatorStatus = IndicatorStatus.fullScreenError;
      } else if (indicatorStatus == IndicatorStatus.loadingMoreBusying) {
        indicatorStatus = IndicatorStatus.error;
      }
    }
    onStateChanged(this);
    return isSuccess;
  }

  Future<bool> loadData([bool isLoadMoreAction = false]);

  @override
  @mustCallSuper
  Future<bool> refresh([bool notifyStateChanged = false]) async {
    if (notifyStateChanged) {
      clear();
      isLoading = false;
      indicatorStatus = IndicatorStatus.fullScreenBusying;
      onStateChanged(this);
    }
    return await _innerloadData();
  }

  @override
  @mustCallSuper
  Future<bool> errorRefresh() async {
    if (isEmpty) {
      return await refresh(true);
    }
    return await loadMore();
  }

  @override
  int get length => _array.length;

  @override
  set length(int newLength) => _array.unlock.length = newLength;

  @override
  //@protected
  @mustCallSuper
  void onStateChanged(LoadingMoreBase<T> source) {
    super.onStateChanged(source);
  }

  bool get hasError {
    return indicatorStatus == IndicatorStatus.fullScreenError || indicatorStatus == IndicatorStatus.error;
  }

  /// update ui
  void setState() {
    super.onStateChanged(this);
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
    final int index = _array.indexOf(oldItem);
    final T newItem = call(get(index));
    _array = _array.replace(index, newItem);
    if (updateUi) {
      setState();
    }
    return newItem;
  }

  @override
  void add(T element) {
    _array = _array.add(element);
  }

  @override
  void addAll(Iterable<T> iterable) {
    _array = _array.addAll(iterable);
  }

  @override
  void clear() {
    _array = _array.clear();
  }

  @override
  void removeWhere(bool Function(T element) test) {
    _array = _array.removeWhere(test);
  }

  @override
  void insert(int index, T element) {
    _array = _array.insert(index, element);
  }
}

class _LoadingMoreBloc<T> {
  final StreamController<LoadingMoreBase<T>> _rebuild = StreamController<LoadingMoreBase<T>>.broadcast();

  Stream<LoadingMoreBase<T>> get rebuild => _rebuild.stream;

  void onStateChanged(LoadingMoreBase<T> source) {
    if (!_rebuild.isClosed) {
      _rebuild.sink.add(source);
    }
  }

  void dispose() {
    _rebuild.close();
  }
}
