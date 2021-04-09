import 'package:deep_mobile_learning/sonnet_exercice/pages/read.dart';
import 'package:flutter/material.dart';

class Launch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Optimus ged on sonnet\nExercise",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Read()));
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.green,
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
