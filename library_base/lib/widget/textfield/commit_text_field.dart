import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/styles.dart';

//登陆注册界面edittext输入框
class CommitTextField extends StatefulWidget {

  final FocusNode focusNode;
  final Function()? onTextChanged;
  final Function()? onPrefixPressed;
  final TextEditingController controller;

  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  CommitTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    this.onTextChanged,
    this.onPrefixPressed,
    this.backgroundColor,
    this.focusedBorder,
    this.enabledBorder
  }) : super(key: key);

  @override
  _CommitTextFieldState createState() => _CommitTextFieldState();
}

class _CommitTextFieldState extends State<CommitTextField> {

  bool _isEmptyText() {
    return widget.controller.text == null || widget.controller.text.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.backgroundColor ?? Colours.transparent,
        height: 100,
        // child: ConstrainedBox(
        //   constraints: BoxConstraints(
        //       maxHeight: 150,
        //       minHeight: 120,
        //   ),
          child: TextField(
            focusNode: widget.focusNode,
            controller: widget.controller,
            style: TextStyles.textBlack14,
            maxLength: 20,
            decoration: InputDecoration(
              counterText: "",
              contentPadding: EdgeInsets.only(top: 3, left: 3),
              // contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
              hintStyle: TextStyles.textGray400_w400_14,
              focusedBorder: widget.focusedBorder ?? BorderStyles.outlineInputR2,
              enabledBorder: widget.enabledBorder ?? BorderStyles.outlineInputR2,
            ),
            onChanged: (text) {
              setState(() {
                if (widget.onTextChanged != null) {
                  widget.onTextChanged!();
                }
              });
            },
          ),
        // )
    );
  }
}
