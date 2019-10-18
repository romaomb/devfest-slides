import 'dart:async';
import 'package:flutter/services.dart';

class MethodChannelSample {
  final _channel = MethodChannel('codes.romao.method');

  MethodChannelSample() {
    _channel.setMethodCallHandler(_methodHandler);
  }

  Future<dynamic> _methodHandler(MethodCall call) async {
    switch (call.method) {
      case 'dartMethod':
        _invokeDartMethod(call.arguments);
        break;
      default:
        _handleUnknownMethod(call.method);
        break;
    }
  }

  Future<void> invokeNativeMethod() async {
    try {
      bool nativeAnswer = await _channel.invokeMethod('method', 'argument');
    } on PlatformException catch (error) {
      _handleNativeError(error.message);
    }
  }

  void _invokeDartMethod(dynamic arguments) {}
  void _handleUnknownMethod(String methodName) {}
  void _handleNativeError(String errorMessage) {}
}
