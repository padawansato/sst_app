import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sst_app/main.dart';

void main() {
  testWidgets('シナリオ選択画面にシナリオが表示されることを確認', (WidgetTester tester) async {
    // アプリをビルドし、ウィジェットツリーに追加
    await tester.pumpWidget(SSTApp());

    // シナリオのテキストが画面上に表示されているかを確認
    expect(find.text('友人との会話'), findsOneWidget);
    expect(find.text('職場でのやりとり'), findsOneWidget);
    expect(find.text('公共の場でのコミュニケーション'), findsOneWidget);
  });

  testWidgets('シナリオをタップすると詳細画面に遷移することを確認', (WidgetTester tester) async {
    await tester.pumpWidget(SSTApp());

    // シナリオをタップ
    await tester.tap(find.text('友人との会話'));
    await tester.pumpAndSettle();

    // 詳細画面のテキストが表示されていることを確認
    expect(find.text('友人との会話 の練習がここに表示されます。'), findsOneWidget);
  });
}
