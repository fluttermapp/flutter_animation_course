import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../pages/home_page.dart';
import '../pages/widgets/text_field_widget.dart';
import '../pages/widgets/wave_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isTextField = false;
  bool isSignIn = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: greenColor,
      appBar: AppBar(
        title: Text(
          'Coffee Cup',
          style: textStyle,
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          //Todo: 10. Animated Positioned
          //Todo: 11. Custom WaveWidget (Animated Builder)
          const Placeholder(
            strokeWidth: 5,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset(
              'images/coffee.png',
            ),
          ),
          //Todo: 8. AnimatedCrossFade
          //Todo: 9. Animated Container
        ],
      ),
    );
  }
}
