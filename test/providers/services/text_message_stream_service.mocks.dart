// Mocks generated by Mockito 5.4.4 from annotations
// in meshx/test/providers/services/text_message_stream_service.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:meshx/models/text_message.dart' as _i4;
import 'package:meshx/providers/repository/text_message_repository.dart' as _i3;
import 'package:meshx/providers/services/text_message_receiver_service.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeStreamSubscription_0<T> extends _i1.SmartFake
    implements _i2.StreamSubscription<T> {
  _FakeStreamSubscription_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TextMessageRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTextMessageRepository extends _i1.Mock
    implements _i3.TextMessageRepository {
  MockTextMessageRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Future<List<List<_i4.TextMessage>>> getByNodeNum() => (super.noSuchMethod(
        Invocation.method(
          #getByNodeNum,
          [],
        ),
        returnValue: _i2.Future<List<List<_i4.TextMessage>>>.value(
            <List<_i4.TextMessage>>[]),
      ) as _i2.Future<List<List<_i4.TextMessage>>>);

  @override
  _i2.Future<int> add({required _i4.TextMessage? textMessage}) =>
      (super.noSuchMethod(
        Invocation.method(
          #add,
          [],
          {#textMessage: textMessage},
        ),
        returnValue: _i2.Future<int>.value(0),
      ) as _i2.Future<int>);

  @override
  _i2.Future<List<_i4.TextMessage>> getBy({
    required int? nodeNum,
    required int? channel,
    required int? limit,
    int? offset = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBy,
          [],
          {
            #nodeNum: nodeNum,
            #channel: channel,
            #limit: limit,
            #offset: offset,
          },
        ),
        returnValue:
            _i2.Future<List<_i4.TextMessage>>.value(<_i4.TextMessage>[]),
      ) as _i2.Future<List<_i4.TextMessage>>);

  @override
  _i2.Future<int> count({
    required int? channel,
    required int? nodeNum,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
          {
            #channel: channel,
            #nodeNum: nodeNum,
          },
        ),
        returnValue: _i2.Future<int>.value(0),
      ) as _i2.Future<int>);
}

/// A class which mocks [TextMessageReceiverService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTextMessageReceiverService extends _i1.Mock
    implements _i5.TextMessageReceiverService {
  MockTextMessageReceiverService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.StreamSubscription<_i4.TextMessage> addMessageListener({
    required int? channel,
    required void Function(_i4.TextMessage)? listener,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addMessageListener,
          [],
          {
            #channel: channel,
            #listener: listener,
          },
        ),
        returnValue: _FakeStreamSubscription_0<_i4.TextMessage>(
          this,
          Invocation.method(
            #addMessageListener,
            [],
            {
              #channel: channel,
              #listener: listener,
            },
          ),
        ),
      ) as _i2.StreamSubscription<_i4.TextMessage>);
}