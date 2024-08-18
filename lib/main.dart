import 'dart:developer' as dev;
import 'dart:ui';
import 'package:bento_coding_challenge/src/app/app.dart';
import 'package:bento_coding_challenge/src/service_location/service_location.dart'
    as sl;
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  sl.configureDependencies();

  // https://docs.flutter.dev/testing/errors
  _registerErrorHandlers();

  runApp(const MainApp());
}

void _registerErrorHandlers() {
  // Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    dev.log(details.exceptionAsString(), stackTrace: details.stack);
  };
  // Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    dev.log(error.toString(), stackTrace: stack, error: error);
    return true;
  };
  // Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    dev.log(details.exceptionAsString(), stackTrace: details.stack);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('An error occurred'),
      ),
      body: Center(child: Text(details.toString())),
    );
  };
}
