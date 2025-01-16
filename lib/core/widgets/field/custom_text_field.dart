import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wasly_template/core/widgets/Border/custom_outline_input_border.dart';
import 'package:wasly_template/core/widgets/field/textStyle/custom_text_field_style.dart';
import 'package:wasly_template/helpers/app_constants.dart';

class CustomTextField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final String hintText;
  final String? defaultIcon;
  final String? focusedIcon;
  final BorderRadius? border;
  final TextEditingController? controller;
  final bool readOnly;
  final Color? fillColor;
  final String? Function(String?)? validator;
  const CustomTextField({
    Key? key,
    this.onChanged,
    this.onSaved,
    required this.hintText,
    required this.defaultIcon,
    required this.focusedIcon,
    this.controller,
    this.border,
    this.readOnly = false,
    this.fillColor,
    this.validator, // Made optional by removing 'required'
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      controller: widget.controller,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      style: CustomTextFieldStyle.defaultTextStyle(),
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      validator: widget.validator,
      textInputAction: TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      focusNode: _focusNode,
      decoration: InputDecoration(
        fillColor: widget.fillColor ?? Colors.white,
        hintText: widget.hintText,
        hintStyle: CustomTextFieldStyle.hintTextStyle(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        suffixIcon: widget.defaultIcon != null && widget.focusedIcon != null
            ? Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset(
                  _focusNode.hasFocus
                      ? widget.focusedIcon!
                      : widget.defaultIcon!,
                  height: 24,
                  width: 24,
                  fit: BoxFit.scaleDown,
                ),
              )
            : null,
        border: CustomOutlineInputBorder.defaultBorder(border: widget.border),
        enabledBorder:
            CustomOutlineInputBorder.defaultBorder(border: widget.border),
        focusedBorder:
            CustomOutlineInputBorder.focusedBorder(border: widget.border),
        errorBorder:
            CustomOutlineInputBorder.errorBorder(border: widget.border),
        focusedErrorBorder:
            CustomOutlineInputBorder.focusedErrorBorder(border: widget.border),
        errorStyle: CustomTextFieldStyle.errorTextStyle(),
      ),
    );
  }
}
