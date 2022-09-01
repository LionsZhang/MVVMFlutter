import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/styles.dart';
import 'package:library_base/res/gaps.dart';

//登陆注册界面edittext输入框
class PwdTextField extends StatefulWidget {

  final FocusNode? focusNode;
  final Function()? onTextChanged;
  final TextEditingController? controller;

  final String? prefixText;
  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  final String? hintText;
  final TextStyle? hintStyle;

  PwdTextField({
    Key? key,
    required this.controller,
    this.focusNode,
    this.onTextChanged,
    this.prefixText,
    this.backgroundColor,
    this.focusedBorder,
    this.enabledBorder,
    this.hintText,
    this.hintStyle
  }) : super(key: key);

  @override
  _AccountTextFieldState createState() => _AccountTextFieldState();
}

class _AccountTextFieldState extends State<PwdTextField> {

  bool _isShowPassWord = false;

  void _showPassWord() {
    setState(() {
      _isShowPassWord = !_isShowPassWord;
    });
  }

  bool _isEmptyText() {
    return widget.controller!.text == null || widget.controller!.text.isEmpty;
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
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
          obscureText: !_isShowPassWord,
          keyboardType: TextInputType.visiblePassword,
          maxLines: 1,
          maxLength: 20,
          decoration: InputDecoration(
              counterText: "",
              hintText: widget.hintText ?? S.of(context).passwordHint,
              contentPadding: EdgeInsets.only(top: 16, bottom: 16),
              hintStyle: widget.hintStyle ?? TextStyles.textGray400_w400_14,
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
