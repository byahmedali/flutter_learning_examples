import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_learning_examples_bse5a/main.dart';

void main() {
  testWidgets('dashboard opens with demo list', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Learning Hub'), findsOneWidget);
    expect(find.text('Firebase Authentication'), findsOneWidget);
  });
}
