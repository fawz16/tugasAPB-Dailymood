import 'package:flutter/material.dart';
import 'package:get/get.dart';

class activityTiles extends StatelessWidget {
  String title;
  String subtitle;
  Widget moodimage;
  VoidCallback onTab;
  Color color;
  Color gradient;

  activityTiles(this.title, this.subtitle, this.gradient, this.color,
      this.moodimage, this.onTab);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: GestureDetector(
        onTap: onTab,
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Card(
              child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(colors: [color, gradient],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight),
                  ),
                  child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(title),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: moodimage,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
