import 'package:flutter/material.dart';
import 'package:ui_challenges/social_app/screen/home_screen/home_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.height * 0.5,
                child: const GalaxyContainer(),
              ),
              Text(
                'Let\'s Connect Together',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Align(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      /*gradient: const LinearGradient(
                        colors: [
                          Colors.deepOrange,
                          Colors.orange,
                        ],
                      ),*/
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(40.0)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Align(
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GalaxyContainer extends StatelessWidget {
  const GalaxyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    String assetsUrl = 'assets/social_app/images/';
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 0.5),
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 0.5),
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: ClipOval(
            child: Image.asset('${assetsUrl}richard.jpeg'),
          ),
        ),
        Positioned(
          left: 20,
          top: 150,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blueGrey,
            child: ClipOval(
              child: Image.asset('${assetsUrl}ash.jpeg'),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 150,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blueGrey,
            child: ClipOval(
              child: Image.asset('${assetsUrl}karen.jpeg'),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 120,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blueGrey,
            child: ClipOval(
              child: Image.asset('${assetsUrl}chan.jpeg'),
            ),
          ),
        ),
        Positioned(
          top: 60,
          right: 120,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blueGrey,
            child: ClipOval(
              child: Image.asset('${assetsUrl}david.jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 100,
          top: 85,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xFFFF5829),
          ),
        ),
        const Positioned(
          right: 100,
          bottom: 85,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xFFFF5829),
          ),
        ),
        const Positioned(
          left: 115,
          bottom: 170,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xFFFF5829),
          ),
        ),
        const Positioned(
          right: 115,
          top: 170,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xFFFF5829),
          ),
        ),
      ],
    );
  }
}
