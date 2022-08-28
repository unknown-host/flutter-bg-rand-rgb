import 'package:flutter/material.dart';
import 'package:rgb_color_gen/rgbo.dart';

void main() => runApp(const Demo());

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random background color on click',
      home: Scaffold(
        body: Center(
          child: Wraper(),
        ),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Color _color = RGBO.color();

  void _handleTap() {
    setState(() {
      _color = RGBO.color();
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          color: _color,
        ),
        child: Center(
          child: Text(
            'Hey there \n the background rgb is $_color',
            style: const TextStyle(fontSize: 32.0, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}

