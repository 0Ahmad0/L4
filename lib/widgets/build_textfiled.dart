import 'package:flutter/material.dart';

class BuildTextFiled extends StatelessWidget {
  const BuildTextFiled({
    Key key,
    @required this.size, this.text, this.marginV = 20.0,
  }) : super(key: key);

  final Size size;
  final String text;
  final double marginV;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.5),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1,vertical: marginV),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(
              fontSize: size.width *0.05,
              color: Color(0xffA7A7A7),
            )
        ),
      ),
    );
  }
}
