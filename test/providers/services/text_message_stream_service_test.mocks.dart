// Mocks generated by Mockito 5.4.4 from annotations
// in meshx/test/providers/services/text_message_stream_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:meshx/models/chat_type.dart' as _i7;
import 'package:meshx/models/text_message.dart' as _i2;
import 'package:meshx/models/text_message_status.dart' as _i5;
import 'package:meshx/providers/repository/text_message_repository.dart' as _i4;
import 'package:meshx/providers/services/text_message_receiver_service.dart'
    as _i6;
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

class _FakeTextMessage_0 extends _i1.SmartFake implements _i2.TextMessage {
  _FakeTextMessage_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamSubscription_1<T> extends _i1.SmartFake
    implements _i3.StreamSubscription<T> {
  _FakeStreamSubscription_1(
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
    implements _i4.TextMessageRepository {
  MockTextMessageRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<List<_i2.TextMessage>>> getByNodeNum() => (super.noSuchMethod(
        Invocation.method(
          #getByNodeNum,
          [],
        ),
        returnValue: _i3.Future<List<List<_i2.TextMessage>>>.value(
            <List<_i2.TextMessage>>[]),
      ) as _i3.Future<List<List<_i2.TextMessage>>>);

  @override
  _i3.Future<int> add({required _i2.TextMessage? textMessage}) =>
      (super.noSuchMethod(
        Invocation.method(
          #add,
          [],
          {#textMessage: textMessage},
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);

  @override
  _i3.Future<void> updateStatusByPacketId({
    required _i5.TextMessageStatus? status,
    required int? packetId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateStatusByPacketId,
          [],
          {
            #status: status,
            #packetId: packetId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<_i2.TextMessage> getByPacketId({required int? packetId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getByPacketId,
          [],
          {#packetId: packetId},
        ),
        returnValue: _i3.Future<_i2.TextMessage>.value(_FakeTextMessage_0(
          this,
          Invocation.method(
            #getByPacketId,
            [],
            {#packetId: packetId},
          ),
        )),
      ) as _i3.Future<_i2.TextMessage>);

  @override
  _i3.Future<List<_i2.TextMessage>> getBy({
    required int? toNode,
    int? fromNode,
    required int? channel,
    required int? limit,
    int? offset = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBy,
          [],
          {
            #toNode: toNode,
            #fromNode: fromNode,
            #channel: channel,
            #limit: limit,
            #offset: offset,
          },
        ),
        returnValue:
            _i3.Future<List<_i2.TextMessage>>.value(<_i2.TextMessage>[]),
      ) as _i3.Future<List<_i2.TextMessage>>);

  @override
  _i3.Future<int> count({
    required int? channel,
    required int? toNode,
    int? fromNode,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
          {
            #channel: channel,
            #toNode: toNode,
            #fromNode: fromNode,
          },
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);
}

/// A class which mocks [TextMessageReceiverService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTextMessageReceiverService extends _i1.Mock
    implements _i6.TextMessageReceiverService {
  MockTextMessageReceiverService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.StreamSubscription<_i2.TextMessage> addMessageListener({
    required _i7.ChatType? chatType,
    required void Function(_i2.TextMessage)? listener,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addMessageListener,
          [],
          {
            #chatType: chatType,
            #listener: listener,
          },
        ),
        returnValue: _FakeStreamSubscription_1<_i2.TextMessage>(
          this,
          Invocation.method(
            #addMessageListener,
            [],
            {
              #chatType: chatType,
              #listener: listener,
            },
          ),
        ),
      ) as _i3.StreamSubscription<_i2.TextMessage>);
}
