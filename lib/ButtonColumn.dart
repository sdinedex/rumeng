import 'package:flutter/material.dart';

class ButtonColumn extends StatefulWidget {
  const ButtonColumn({super.key});

  @override
  State<ButtonColumn> createState() => _ButtonColumnState();
}

class _ButtonColumnState extends State<ButtonColumn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 40,
              color: Colors.red[600],
            ),
            Text(
              "hello world",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.red[500],
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.accessible_forward_sharp,
              size: 40,
              color: Colors.green[600],
            ),
            Text(
              "hello world",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ac_unit_rounded,
              size: 40,
              color: Colors.blue[600],
            ),
            Text(
              "snow",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600],
              ),
            )
          ],
        ),
      ],
    );
  }
}
