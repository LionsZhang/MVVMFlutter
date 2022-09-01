import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/gaps.dart';
import 'package:library_base/res/styles.dart';

//登陆注册界面edittext输入框
class AccountTextField extends StatefulWidget {

  final FocusNode focusNode;
  final Function()? onTextChanged;
  final Function()? onPrefixPressed;
  final TextEditingController controller;

  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  AccountTextField({
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
  _AccountTextFieldState createState() => _AccountTextFieldState();
}

class _AccountTextFieldState extends State<AccountTextField> {

  bool _isEmptyText() {
    return widget.controller.text == null || widget.controller.text.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48.0,
        color: widget.backgroundColor ?? Colours.transparent,
        child: TextField(
          focusNode: widget.focusNode,
          controller: widget.controller,
          style: TextStyles.textBlack14,
          maxLines: 1,
          maxLength: 20,
          decoration: InputDecoration(
            counterText: "",
            hintText: S.of(context).loginPhoneHint,
            contentPadding: EdgeInsets.only(top: 16, bottom: 16),
            hintStyle: TextStyles.textGray400_w400_14,
            focusedBorder: widget.focusedBorder ?? BorderStyles.underlineInputMain,
            enabledBorder: widget.enabledBorder ?? BorderStyles.underlineInputGray,
          ),
          onChanged: (text) {
            setState(() {
              if (widget.onTextChanged != null) {
                widget.onTextChanged!();
              }
            });
          },
        )
    );
  }
}
