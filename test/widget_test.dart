import 'package:flutter_test/flutter_test.dart';
import 'package:mental_health_app/main.dart';

void main() {
  testWidgets('App starts and shows login screen', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MentalHealthApp());

    // Verify that the login screen is shown
    expect(find.text('Bienvenido'), findsOneWidget);
    expect(find.text('Inicia sesión para continuar'), findsOneWidget);
    expect(find.text('Correo electrónico'), findsOneWidget);
    expect(find.text('Contraseña'), findsOneWidget);
    expect(find.text('Iniciar Sesión'), findsOneWidget);
  });

  testWidgets('Login button is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MentalHealthApp());
    
    // Find the login button
    final loginButton = find.text('Iniciar Sesión');
    expect(loginButton, findsWidgets);
  });
}
