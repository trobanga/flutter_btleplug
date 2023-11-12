// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bridge_generated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BleEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleEventCopyWith<BleEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleEventCopyWith<$Res> {
  factory $BleEventCopyWith(BleEvent value, $Res Function(BleEvent) then) = _$BleEventCopyWithImpl<$Res, BleEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$BleEventCopyWithImpl<$Res, $Val extends BleEvent> implements $BleEventCopyWith<$Res> {
  _$BleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleEvent_DeviceDiscoveredImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_DeviceDiscoveredImplCopyWith(_$BleEvent_DeviceDiscoveredImpl value, $Res Function(_$BleEvent_DeviceDiscoveredImpl) then) = __$$BleEvent_DeviceDiscoveredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BleEvent_DeviceDiscoveredImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_DeviceDiscoveredImpl> implements _$$BleEvent_DeviceDiscoveredImplCopyWith<$Res> {
  __$$BleEvent_DeviceDiscoveredImplCopyWithImpl(_$BleEvent_DeviceDiscoveredImpl _value, $Res Function(_$BleEvent_DeviceDiscoveredImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BleEvent_DeviceDiscoveredImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleEvent_DeviceDiscoveredImpl implements BleEvent_DeviceDiscovered {
  const _$BleEvent_DeviceDiscoveredImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BleEvent.deviceDiscovered(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_DeviceDiscoveredImpl && (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_DeviceDiscoveredImplCopyWith<_$BleEvent_DeviceDiscoveredImpl> get copyWith => __$$BleEvent_DeviceDiscoveredImplCopyWithImpl<_$BleEvent_DeviceDiscoveredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return deviceDiscovered(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return deviceDiscovered?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceDiscovered != null) {
      return deviceDiscovered(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return deviceDiscovered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return deviceDiscovered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceDiscovered != null) {
      return deviceDiscovered(this);
    }
    return orElse();
  }
}

abstract class BleEvent_DeviceDiscovered implements BleEvent {
  const factory BleEvent_DeviceDiscovered({required final String id}) = _$BleEvent_DeviceDiscoveredImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_DeviceDiscoveredImplCopyWith<_$BleEvent_DeviceDiscoveredImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_DeviceUpdatedImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_DeviceUpdatedImplCopyWith(_$BleEvent_DeviceUpdatedImpl value, $Res Function(_$BleEvent_DeviceUpdatedImpl) then) = __$$BleEvent_DeviceUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BleEvent_DeviceUpdatedImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_DeviceUpdatedImpl> implements _$$BleEvent_DeviceUpdatedImplCopyWith<$Res> {
  __$$BleEvent_DeviceUpdatedImplCopyWithImpl(_$BleEvent_DeviceUpdatedImpl _value, $Res Function(_$BleEvent_DeviceUpdatedImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BleEvent_DeviceUpdatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleEvent_DeviceUpdatedImpl implements BleEvent_DeviceUpdated {
  const _$BleEvent_DeviceUpdatedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BleEvent.deviceUpdated(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_DeviceUpdatedImpl && (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_DeviceUpdatedImplCopyWith<_$BleEvent_DeviceUpdatedImpl> get copyWith => __$$BleEvent_DeviceUpdatedImplCopyWithImpl<_$BleEvent_DeviceUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return deviceUpdated(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return deviceUpdated?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceUpdated != null) {
      return deviceUpdated(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return deviceUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return deviceUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceUpdated != null) {
      return deviceUpdated(this);
    }
    return orElse();
  }
}

abstract class BleEvent_DeviceUpdated implements BleEvent {
  const factory BleEvent_DeviceUpdated({required final String id}) = _$BleEvent_DeviceUpdatedImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_DeviceUpdatedImplCopyWith<_$BleEvent_DeviceUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_DeviceConnectedImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_DeviceConnectedImplCopyWith(_$BleEvent_DeviceConnectedImpl value, $Res Function(_$BleEvent_DeviceConnectedImpl) then) = __$$BleEvent_DeviceConnectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BleEvent_DeviceConnectedImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_DeviceConnectedImpl> implements _$$BleEvent_DeviceConnectedImplCopyWith<$Res> {
  __$$BleEvent_DeviceConnectedImplCopyWithImpl(_$BleEvent_DeviceConnectedImpl _value, $Res Function(_$BleEvent_DeviceConnectedImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BleEvent_DeviceConnectedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleEvent_DeviceConnectedImpl implements BleEvent_DeviceConnected {
  const _$BleEvent_DeviceConnectedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BleEvent.deviceConnected(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_DeviceConnectedImpl && (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_DeviceConnectedImplCopyWith<_$BleEvent_DeviceConnectedImpl> get copyWith => __$$BleEvent_DeviceConnectedImplCopyWithImpl<_$BleEvent_DeviceConnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return deviceConnected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return deviceConnected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceConnected != null) {
      return deviceConnected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return deviceConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return deviceConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceConnected != null) {
      return deviceConnected(this);
    }
    return orElse();
  }
}

abstract class BleEvent_DeviceConnected implements BleEvent {
  const factory BleEvent_DeviceConnected({required final String id}) = _$BleEvent_DeviceConnectedImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_DeviceConnectedImplCopyWith<_$BleEvent_DeviceConnectedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_DeviceDisconnectedImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_DeviceDisconnectedImplCopyWith(_$BleEvent_DeviceDisconnectedImpl value, $Res Function(_$BleEvent_DeviceDisconnectedImpl) then) = __$$BleEvent_DeviceDisconnectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BleEvent_DeviceDisconnectedImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_DeviceDisconnectedImpl> implements _$$BleEvent_DeviceDisconnectedImplCopyWith<$Res> {
  __$$BleEvent_DeviceDisconnectedImplCopyWithImpl(_$BleEvent_DeviceDisconnectedImpl _value, $Res Function(_$BleEvent_DeviceDisconnectedImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BleEvent_DeviceDisconnectedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleEvent_DeviceDisconnectedImpl implements BleEvent_DeviceDisconnected {
  const _$BleEvent_DeviceDisconnectedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BleEvent.deviceDisconnected(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_DeviceDisconnectedImpl && (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_DeviceDisconnectedImplCopyWith<_$BleEvent_DeviceDisconnectedImpl> get copyWith => __$$BleEvent_DeviceDisconnectedImplCopyWithImpl<_$BleEvent_DeviceDisconnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return deviceDisconnected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return deviceDisconnected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceDisconnected != null) {
      return deviceDisconnected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return deviceDisconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return deviceDisconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (deviceDisconnected != null) {
      return deviceDisconnected(this);
    }
    return orElse();
  }
}

abstract class BleEvent_DeviceDisconnected implements BleEvent {
  const factory BleEvent_DeviceDisconnected({required final String id}) = _$BleEvent_DeviceDisconnectedImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_DeviceDisconnectedImplCopyWith<_$BleEvent_DeviceDisconnectedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_ManufacturerDataAdvertisementImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_ManufacturerDataAdvertisementImplCopyWith(_$BleEvent_ManufacturerDataAdvertisementImpl value, $Res Function(_$BleEvent_ManufacturerDataAdvertisementImpl) then) = __$$BleEvent_ManufacturerDataAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<MapData> manufacturerData});
}

/// @nodoc
class __$$BleEvent_ManufacturerDataAdvertisementImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_ManufacturerDataAdvertisementImpl> implements _$$BleEvent_ManufacturerDataAdvertisementImplCopyWith<$Res> {
  __$$BleEvent_ManufacturerDataAdvertisementImplCopyWithImpl(_$BleEvent_ManufacturerDataAdvertisementImpl _value, $Res Function(_$BleEvent_ManufacturerDataAdvertisementImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? manufacturerData = null,
  }) {
    return _then(_$BleEvent_ManufacturerDataAdvertisementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturerData: null == manufacturerData
          ? _value._manufacturerData
          : manufacturerData // ignore: cast_nullable_to_non_nullable
              as List<MapData>,
    ));
  }
}

/// @nodoc

class _$BleEvent_ManufacturerDataAdvertisementImpl implements BleEvent_ManufacturerDataAdvertisement {
  const _$BleEvent_ManufacturerDataAdvertisementImpl({required this.id, required final List<MapData> manufacturerData}) : _manufacturerData = manufacturerData;

  @override
  final String id;
  final List<MapData> _manufacturerData;
  @override
  List<MapData> get manufacturerData {
    if (_manufacturerData is EqualUnmodifiableListView) return _manufacturerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_manufacturerData);
  }

  @override
  String toString() {
    return 'BleEvent.manufacturerDataAdvertisement(id: $id, manufacturerData: $manufacturerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_ManufacturerDataAdvertisementImpl && (identical(other.id, id) || other.id == id) && const DeepCollectionEquality().equals(other._manufacturerData, _manufacturerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_manufacturerData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_ManufacturerDataAdvertisementImplCopyWith<_$BleEvent_ManufacturerDataAdvertisementImpl> get copyWith => __$$BleEvent_ManufacturerDataAdvertisementImplCopyWithImpl<_$BleEvent_ManufacturerDataAdvertisementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return manufacturerDataAdvertisement(id, manufacturerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return manufacturerDataAdvertisement?.call(id, manufacturerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (manufacturerDataAdvertisement != null) {
      return manufacturerDataAdvertisement(id, manufacturerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return manufacturerDataAdvertisement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return manufacturerDataAdvertisement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (manufacturerDataAdvertisement != null) {
      return manufacturerDataAdvertisement(this);
    }
    return orElse();
  }
}

abstract class BleEvent_ManufacturerDataAdvertisement implements BleEvent {
  const factory BleEvent_ManufacturerDataAdvertisement({required final String id, required final List<MapData> manufacturerData}) = _$BleEvent_ManufacturerDataAdvertisementImpl;

  @override
  String get id;
  List<MapData> get manufacturerData;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_ManufacturerDataAdvertisementImplCopyWith<_$BleEvent_ManufacturerDataAdvertisementImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_ServiceDataAdvertisementImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_ServiceDataAdvertisementImplCopyWith(_$BleEvent_ServiceDataAdvertisementImpl value, $Res Function(_$BleEvent_ServiceDataAdvertisementImpl) then) = __$$BleEvent_ServiceDataAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<MapData> serviceData});
}

/// @nodoc
class __$$BleEvent_ServiceDataAdvertisementImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_ServiceDataAdvertisementImpl> implements _$$BleEvent_ServiceDataAdvertisementImplCopyWith<$Res> {
  __$$BleEvent_ServiceDataAdvertisementImplCopyWithImpl(_$BleEvent_ServiceDataAdvertisementImpl _value, $Res Function(_$BleEvent_ServiceDataAdvertisementImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceData = null,
  }) {
    return _then(_$BleEvent_ServiceDataAdvertisementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceData: null == serviceData
          ? _value._serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as List<MapData>,
    ));
  }
}

/// @nodoc

class _$BleEvent_ServiceDataAdvertisementImpl implements BleEvent_ServiceDataAdvertisement {
  const _$BleEvent_ServiceDataAdvertisementImpl({required this.id, required final List<MapData> serviceData}) : _serviceData = serviceData;

  @override
  final String id;
  final List<MapData> _serviceData;
  @override
  List<MapData> get serviceData {
    if (_serviceData is EqualUnmodifiableListView) return _serviceData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceData);
  }

  @override
  String toString() {
    return 'BleEvent.serviceDataAdvertisement(id: $id, serviceData: $serviceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_ServiceDataAdvertisementImpl && (identical(other.id, id) || other.id == id) && const DeepCollectionEquality().equals(other._serviceData, _serviceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_serviceData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_ServiceDataAdvertisementImplCopyWith<_$BleEvent_ServiceDataAdvertisementImpl> get copyWith => __$$BleEvent_ServiceDataAdvertisementImplCopyWithImpl<_$BleEvent_ServiceDataAdvertisementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return serviceDataAdvertisement(id, serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return serviceDataAdvertisement?.call(id, serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (serviceDataAdvertisement != null) {
      return serviceDataAdvertisement(id, serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return serviceDataAdvertisement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return serviceDataAdvertisement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (serviceDataAdvertisement != null) {
      return serviceDataAdvertisement(this);
    }
    return orElse();
  }
}

abstract class BleEvent_ServiceDataAdvertisement implements BleEvent {
  const factory BleEvent_ServiceDataAdvertisement({required final String id, required final List<MapData> serviceData}) = _$BleEvent_ServiceDataAdvertisementImpl;

  @override
  String get id;
  List<MapData> get serviceData;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_ServiceDataAdvertisementImplCopyWith<_$BleEvent_ServiceDataAdvertisementImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleEvent_ServicesAdvertisementImplCopyWith<$Res> implements $BleEventCopyWith<$Res> {
  factory _$$BleEvent_ServicesAdvertisementImplCopyWith(_$BleEvent_ServicesAdvertisementImpl value, $Res Function(_$BleEvent_ServicesAdvertisementImpl) then) = __$$BleEvent_ServicesAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> services});
}

/// @nodoc
class __$$BleEvent_ServicesAdvertisementImplCopyWithImpl<$Res> extends _$BleEventCopyWithImpl<$Res, _$BleEvent_ServicesAdvertisementImpl> implements _$$BleEvent_ServicesAdvertisementImplCopyWith<$Res> {
  __$$BleEvent_ServicesAdvertisementImplCopyWithImpl(_$BleEvent_ServicesAdvertisementImpl _value, $Res Function(_$BleEvent_ServicesAdvertisementImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? services = null,
  }) {
    return _then(_$BleEvent_ServicesAdvertisementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$BleEvent_ServicesAdvertisementImpl implements BleEvent_ServicesAdvertisement {
  const _$BleEvent_ServicesAdvertisementImpl({required this.id, required final List<String> services}) : _services = services;

  @override
  final String id;
  final List<String> _services;
  @override
  List<String> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'BleEvent.servicesAdvertisement(id: $id, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BleEvent_ServicesAdvertisementImpl && (identical(other.id, id) || other.id == id) && const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleEvent_ServicesAdvertisementImplCopyWith<_$BleEvent_ServicesAdvertisementImpl> get copyWith => __$$BleEvent_ServicesAdvertisementImplCopyWithImpl<_$BleEvent_ServicesAdvertisementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deviceDiscovered,
    required TResult Function(String id) deviceUpdated,
    required TResult Function(String id) deviceConnected,
    required TResult Function(String id) deviceDisconnected,
    required TResult Function(String id, List<MapData> manufacturerData) manufacturerDataAdvertisement,
    required TResult Function(String id, List<MapData> serviceData) serviceDataAdvertisement,
    required TResult Function(String id, List<String> services) servicesAdvertisement,
  }) {
    return servicesAdvertisement(id, services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deviceDiscovered,
    TResult? Function(String id)? deviceUpdated,
    TResult? Function(String id)? deviceConnected,
    TResult? Function(String id)? deviceDisconnected,
    TResult? Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult? Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult? Function(String id, List<String> services)? servicesAdvertisement,
  }) {
    return servicesAdvertisement?.call(id, services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deviceDiscovered,
    TResult Function(String id)? deviceUpdated,
    TResult Function(String id)? deviceConnected,
    TResult Function(String id)? deviceDisconnected,
    TResult Function(String id, List<MapData> manufacturerData)? manufacturerDataAdvertisement,
    TResult Function(String id, List<MapData> serviceData)? serviceDataAdvertisement,
    TResult Function(String id, List<String> services)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (servicesAdvertisement != null) {
      return servicesAdvertisement(id, services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BleEvent_DeviceDiscovered value) deviceDiscovered,
    required TResult Function(BleEvent_DeviceUpdated value) deviceUpdated,
    required TResult Function(BleEvent_DeviceConnected value) deviceConnected,
    required TResult Function(BleEvent_DeviceDisconnected value) deviceDisconnected,
    required TResult Function(BleEvent_ManufacturerDataAdvertisement value) manufacturerDataAdvertisement,
    required TResult Function(BleEvent_ServiceDataAdvertisement value) serviceDataAdvertisement,
    required TResult Function(BleEvent_ServicesAdvertisement value) servicesAdvertisement,
  }) {
    return servicesAdvertisement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult? Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult? Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult? Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult? Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult? Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult? Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
  }) {
    return servicesAdvertisement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BleEvent_DeviceDiscovered value)? deviceDiscovered,
    TResult Function(BleEvent_DeviceUpdated value)? deviceUpdated,
    TResult Function(BleEvent_DeviceConnected value)? deviceConnected,
    TResult Function(BleEvent_DeviceDisconnected value)? deviceDisconnected,
    TResult Function(BleEvent_ManufacturerDataAdvertisement value)? manufacturerDataAdvertisement,
    TResult Function(BleEvent_ServiceDataAdvertisement value)? serviceDataAdvertisement,
    TResult Function(BleEvent_ServicesAdvertisement value)? servicesAdvertisement,
    required TResult orElse(),
  }) {
    if (servicesAdvertisement != null) {
      return servicesAdvertisement(this);
    }
    return orElse();
  }
}

abstract class BleEvent_ServicesAdvertisement implements BleEvent {
  const factory BleEvent_ServicesAdvertisement({required final String id, required final List<String> services}) = _$BleEvent_ServicesAdvertisementImpl;

  @override
  String get id;
  List<String> get services;
  @override
  @JsonKey(ignore: true)
  _$$BleEvent_ServicesAdvertisementImplCopyWith<_$BleEvent_ServicesAdvertisementImpl> get copyWith => throw _privateConstructorUsedError;
}
