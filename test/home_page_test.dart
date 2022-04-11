import 'package:card_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Widgets existence test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    expect(
      find.byType(
        CircleAvatar,
      ),
      findsOneWidget,
    );
    expect(
      find.byType(
        Text,
      ),
      findsNWidgets(3),
    );
    expect(
      find.descendant(
        of: find.byType(
          Scaffold,
        ),
        matching: find.byType(
          CircleAvatar,
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(
          Scaffold,
        ),
        matching: find.byType(
          Text,
        ),
      ),
      findsNWidgets(3),
    );
    expect(
      find.text('Ezequiel Hernan Setzes'),
      findsOneWidget,
    );
    expect(
      find.text('Flutter Mobile Developer'),
      findsOneWidget,
    );
    expect(
      find.text('ezequielsetzes1904@gmail.com'),
      findsOneWidget,
    );
  });
}
