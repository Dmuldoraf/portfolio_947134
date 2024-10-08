// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_947134/main.dart';
import 'package:portfolio_947134/presentation/home_page/home_screen.dart';


void main() {
  testWidgets('Test build app', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Test if the home page is available
    expect(find.byType(HomeScreen), findsOneWidget);


    // Failing tests
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);
    // expect(find.byType(ProjectTwoScreen), findsOneWidget);

    
  });
}
    
  

