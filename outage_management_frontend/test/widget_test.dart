import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:outage_management_frontend/main.dart';

void main() {
  testWidgets('App generation message displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('outage_management_frontend App is being generated...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('outage_management_frontend'), findsOneWidget);
  });
}
