import 'package:flutter/material.dart';


class StoryIcon extends StatefulWidget {
  final String url;
  bool isActive;
  final String userName;
  final double width;
  final double height;
  final double radius;

  StoryIcon(
      {Key key,
      this.url,
      this.isActive,
      this.userName = '',
      this.height,
      this.width,
      this.radius})
      : super(key: key);

  @override
  _StoryIconState createState() => _StoryIconState();
}

class _StoryIconState extends State<StoryIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: widget.userName != ''
            ? EdgeInsets.only(left: 15, top: 10)
            : EdgeInsets.only(left: 15),
        width: widget.width,
        height: widget.height,
        decoration: (widget.isActive == true)
            ? BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.url),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.all(new Radius.circular(widget.radius)),
                border: Border.all(width: 4.0, color: Colors.red),
              )
            : BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.url),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.all(new Radius.circular(widget.radius)),
              ),
      ),
      widget.userName != ''
          ? Padding(
              padding: EdgeInsets.only(left: 18), child: Text(widget.userName))
          : Padding(padding: EdgeInsets.only(left: 18)),
    ] // border: Border.all(width: 4.0, color: Colors.red),
        );
  }
}
