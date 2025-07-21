import 'package:ecommerce/homepage/home_dashboard.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to E commerce App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
                const SizedBox(height: 100,),
                GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeDashboard()),
                );
              },
              child: const Text(
                  "Get started",
                  style: TextStyle(
                    fontFamily: 'Chango',
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                    letterSpacing: 1.2,
                  ),
                )
                ),
          ],
        )
        )
        // ):
        );
  }
}
