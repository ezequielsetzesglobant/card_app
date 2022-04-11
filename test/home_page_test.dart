import 'package:card_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Widgets existence and functionality test', () {
    testWidgets('Widgets existence test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      expect(find.byType(CircleAvatar), findsOneWidget);
      expect(find.byType(Text), findsNWidgets(4));
      expect(find.byType(IconButton), findsOneWidget);
      expect(
          find.descendant(
            of: find.byType(Scaffold),
            matching: find.byType(CircleAvatar),
          ),
          findsOneWidget);
      expect(
          find.descendant(
            of: find.byType(Scaffold),
            matching: find.byType(Text),
          ),
          findsNWidgets(4));
      expect(
          find.descendant(
            of: find.byType(Scaffold),
            matching: find.byType(IconButton),
          ),
          findsOneWidget);
      expect(find.text('Ezequiel Hernan Setzes'), findsOneWidget);
      expect(find.text('Flutter Mobile Developer'), findsOneWidget);
      expect(find.text('ezequielsetzes1904@gmail.com'), findsOneWidget);
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('Like increments counter test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.thumb_up));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}
