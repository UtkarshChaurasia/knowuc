import 'package:knowuc/utils/utils.dart';
import 'package:flutter/material.dart';

class ScrollArrow extends StatefulWidget {
  final VoidCallback onPressed;

  const ScrollArrow({Key key, this.onPressed}) : super(key: key);

  @override
  _ScrollArrowState createState() => _ScrollArrowState();
}

class _ScrollArrowState extends State<ScrollArrow> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: widget.onPressed,
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                isHover = true;
              });
            } else {
              setState(() {
                isHover = false;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: primarycolor1.withAlpha(200),
                        blurRadius: 12.0,
                        offset: Offset(2.0, 3.0),
                      )
                    ]
                  : [],
            ),
            child: Icon(
              Icons.arrow_drop_up_outlined,
              color: primarycolor1,
              size: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
