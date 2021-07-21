import 'package:flutter/material.dart';
import '../constants/const.dart';
class BuildButton extends StatelessWidget {
  final Size size;
  final Function onTap;

  const BuildButton({Key key, this.size, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: size.width * 0.185,
          height: size.width * 0.185,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
          ),
          child: ShaderMask(
            shaderCallback: (ctx){
              return RadialGradient(
                center: Alignment.centerLeft,
                radius: 0.5,
                colors: [KColor1,KColor2],
                tileMode: TileMode.mirror,
              ).createShader(ctx);
            },
            child: Icon(Icons.arrow_forward,color: Colors.white,),
          )
      ),
    );
  }
}