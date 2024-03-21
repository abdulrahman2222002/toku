// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
class category extends StatelessWidget {
   category({Key? key, this.name,this.color,this.onTap}) : super(key: key) ;
   String? name;
   Color? color;
   Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 54,
        width: double.infinity,
        color: color,
        child:  Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            name!,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
