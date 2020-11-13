import 'package:flutter/material.dart';

class ToAlign extends StatelessWidget {
  Alignment align;
  double widthF;
  double heightF;
  double wght;
  double hght;

  ToAlign(this.align, this.widthF, this.heightF, this.wght, this.hght);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      widthFactor: widthF,
      heightFactor: heightF,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(200)),
        color: Color.fromRGBO(255, 255, 255, 0.2),
        child: Container(
          width: wght,
          height: hght,
        ),
      ),
    );
  }
}
