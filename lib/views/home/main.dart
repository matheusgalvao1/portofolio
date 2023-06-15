import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 10,
          horizontal: MediaQuery.of(context).size.width / 10,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(
                        0,
                        3,
                      ), // changes the position of the shadow
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/images/profile.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Matheus Galvão',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  const Text(
                    'Mobile and AI Developer',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'matheusgalvao@protonmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
