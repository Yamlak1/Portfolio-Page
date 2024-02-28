import 'package:flutter/material.dart';
import 'package:portfolio_page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double lineHeight = 1.0; // Initial height of the line

  @override
  void initState() {
    super.initState();

    // Example: Trigger line expansion after 2 seconds (adjust as needed)
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        lineHeight = MediaQuery.of(context)
            .size
            .height; // Set height to cover the whole page
      });

      // Navigate to the next screen after the expansion animation (adjust duration accordingly)
      Future.delayed(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                MyHomePage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0,
                  1.0); // Change the start offset to make it appear from the bottom
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
            transitionDuration:
                Duration(seconds: 1), // Adjust the duration as needed
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 53, 55, 75),
        ),
        child: Center(
          child: AnimatedContainer(
            duration:
                Duration(seconds: 1), // Duration for the expansion animation
            height: lineHeight,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 80, 114, 123),
              borderRadius:
                  BorderRadius.circular(15.0), // Set the radius as needed
            ),
          ),
        ),
      ),
    );
  }
}
