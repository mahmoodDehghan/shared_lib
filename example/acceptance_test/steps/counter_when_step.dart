import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric tapButtonNTimesStep() {
  return when2<String, int, FlutterWorld>(
    'I tap the {string} icon {int} times',
    (String key, int count, StepContext<FlutterWorld> context) async {
      final locator = find.byValueKey(key).runtimeType;
      await context.world.appDriver.waitForAppToSettle();
      for (var i = 0; i < count; i += 1) {
        await context.world.appDriver.tap(locator);
      }
    },
  );
}
