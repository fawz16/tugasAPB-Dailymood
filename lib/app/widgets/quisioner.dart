import 'package:flutter/material.dart';

class quisioner extends StatelessWidget {
  String title;
  String subtitle;
  Widget fiturimage;
  Color color;
  Color gradient;

  quisioner(
    this.title, 
    this.subtitle, 
    this.fiturimage, 
    this.color, 
    this.gradient,
    );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                      offset: Offset(5.0, 5.0)
                    )
                  ]
                ),
                alignment: Alignment.center,
                width: 100,
                height: 100,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }   
}