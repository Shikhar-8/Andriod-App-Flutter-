import 'package:flutter/material.dart';
import 'package:hitechstudy23/sidebar/navigation_bloc.dart';

class Privacy extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Privacy', style: TextStyle(fontSize: 36.0),),
    );
  }
}