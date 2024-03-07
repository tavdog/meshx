// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_message_sender_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendTextMessageHash() => r'a854d6e68fd4f26c9a9e946369088aba4816436e';

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

/// See also [sendTextMessage].
@ProviderFor(sendTextMessage)
const sendTextMessageProvider = SendTextMessageFamily();

/// See also [sendTextMessage].
class SendTextMessageFamily extends Family<AsyncValue<void>> {
  /// See also [sendTextMessage].
  const SendTextMessageFamily();

  /// See also [sendTextMessage].
  SendTextMessageProvider call({
    required int channel,
    required String text,
  }) {
    return SendTextMessageProvider(
      channel: channel,
      text: text,
    );
  }

  @override
  SendTextMessageProvider getProviderOverride(
    covariant SendTextMessageProvider provider,
  ) {
    return call(
      channel: provider.channel,
      text: provider.text,
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
  String? get name => r'sendTextMessageProvider';
}

/// See also [sendTextMessage].
class SendTextMessageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [sendTextMessage].
  SendTextMessageProvider({
    required int channel,
    required String text,
  }) : this._internal(
          (ref) => sendTextMessage(
            ref as SendTextMessageRef,
            channel: channel,
            text: text,
          ),
          from: sendTextMessageProvider,
          name: r'sendTextMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendTextMessageHash,
          dependencies: SendTextMessageFamily._dependencies,
          allTransitiveDependencies:
              SendTextMessageFamily._allTransitiveDependencies,
          channel: channel,
          text: text,
        );

  SendTextMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channel,
    required this.text,
  }) : super.internal();

  final int channel;
  final String text;

  @override
  Override overrideWith(
    FutureOr<void> Function(SendTextMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendTextMessageProvider._internal(
        (ref) => create(ref as SendTextMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channel: channel,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SendTextMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendTextMessageProvider &&
        other.channel == channel &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendTextMessageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `channel` of this provider.
  int get channel;

  /// The parameter `text` of this provider.
  String get text;
}

class _SendTextMessageProviderElement
    extends AutoDisposeFutureProviderElement<void> with SendTextMessageRef {
  _SendTextMessageProviderElement(super.provider);

  @override
  int get channel => (origin as SendTextMessageProvider).channel;

  @override
  String get text => (origin as SendTextMessageProvider).text;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member