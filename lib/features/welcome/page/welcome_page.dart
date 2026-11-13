import "package:material_ui/material_ui.dart"
    show
        BuildContext,
        Center,
        Column,
        FontWeight,
        Image,
        MainAxisAlignment,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

class const WelcomePage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 100, height: 100),
            const SizedBox(height: 20),
            const Text(
              "Welcome to Kennedy Mega Bank",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
