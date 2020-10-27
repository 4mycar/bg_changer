import 'dart:math';
import 'package:flutter/material.dart';


class HomeScreen  extends StatefulWidget {
  @override
  _BGChangerState createState() => _BGChangerState();
}

class _BGChangerState extends State<HomeScreen> {
  Color currentBgColor;

  void setNewColor() {
    setState(() {
      currentBgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  void setDefaultColor() {
    setState(() {
      currentBgColor = Colors.white;
    });
  }

  @override
  void initState() {
    super.initState();
    setDefaultColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background changer Demo'),
      ),
      body: GestureDetector(
        onTap: () => setNewColor(),
        onLongPress: () => setDefaultColor(),
        child: SizedBox.expand(
          child: Container(
            alignment: Alignment.center,
            color: currentBgColor,
            child: Container(
              child: Text(
                'Hey there',
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black54,
                      offset: Offset(4.0, 4.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}