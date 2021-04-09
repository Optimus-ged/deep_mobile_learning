import 'package:flutter/material.dart';

class Launch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Optimus ged on sonnet\nExercise",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 40),
                child: Text(
                  'Commencer',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
