import 'dart:async';
import 'package:flutter/services.dart';

class EventChannelSample {
  final _channel = EventChannel('codes.romao.event');
  StreamSubscription _channelSubscription;

  EventChannelSample() {
    _channelSubscription = _channel
        .receiveBroadcastStream()
        .listen((event) {
          if (event is int) {
            _handleNewEvent(event);
          } else {
            _handleUnknownEvent(event);
          }
        },
    );
  }

  void dispose() {
    _channelSubscription.cancel();
  }

  void _handleNewEvent(int event) {}
  void _handleUnknownEvent(dynamic event) {}
}
