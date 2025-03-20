// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionControllerHash() => r'fcb663220b42628e46c57a7be350500d1b8d39fa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [sessionController].
@ProviderFor(sessionController)
const sessionControllerProvider = SessionControllerFamily();

/// See also [sessionController].
class SessionControllerFamily extends Family<AsyncValue<List<Session>>> {
  /// See also [sessionController].
  const SessionControllerFamily();

  /// See also [sessionController].
  SessionControllerProvider call(
    ID userId,
  ) {
    return SessionControllerProvider(
      userId,
    );
  }

  @override
  SessionControllerProvider getProviderOverride(
    covariant SessionControllerProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sessionControllerProvider';
}

/// See also [sessionController].
class SessionControllerProvider
    extends AutoDisposeFutureProvider<List<Session>> {
  /// See also [sessionController].
  SessionControllerProvider(
    ID userId,
  ) : this._internal(
          (ref) => sessionController(
            ref as SessionControllerRef,
            userId,
          ),
          from: sessionControllerProvider,
          name: r'sessionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionControllerHash,
          dependencies: SessionControllerFamily._dependencies,
          allTransitiveDependencies:
              SessionControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  SessionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final ID userId;

  @override
  Override overrideWith(
    FutureOr<List<Session>> Function(SessionControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionControllerProvider._internal(
        (ref) => create(ref as SessionControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Session>> createElement() {
    return _SessionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionControllerProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SessionControllerRef on AutoDisposeFutureProviderRef<List<Session>> {
  /// The parameter `userId` of this provider.
  ID get userId;
}

class _SessionControllerProviderElement
    extends AutoDisposeFutureProviderElement<List<Session>>
    with SessionControllerRef {
  _SessionControllerProviderElement(super.provider);

  @override
  ID get userId => (origin as SessionControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
