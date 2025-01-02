import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wasly_template/core/widgets/field/inputBorder/custom_outline_input_border.dart';
import 'package:wasly_template/core/widgets/field/textStyle/custom_text_field_style.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final String hintText;
  final BorderRadius? border;
  const CustomPasswordField(
      {Key? key,
      this.onChanged,
      this.onSaved,
      this.hintText = "Enter your password",
      this.border})
      : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isPasswordVisible = false;
  final FocusNode _focusNode = FocusNode(); // FocusNode to track focus state

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {}); // Rebuild widget when focus changes
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Dispose the focus node
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      style: CustomTextFieldStyle.defaultTextStyle(),
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      obscureText: !_isPasswordVisible,
      textInputAction: TextInputAction.done,
      textAlignVertical: TextAlignVertical.center,
      focusNode: _focusNode, // Attach the focus node
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: CustomTextFieldStyle.hintTextStyle(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              _focusNode.hasFocus
                  ? (_isPasswordVisible
                      ? AppConstants.getIconPath("eye_off_focused.svg")
                      : AppConstants.getIconPath("eye.svg"))
                  : (_isPasswordVisible
                      ? AppConstants.getIconPath("eye_off.svg")
                      : AppConstants.getIconPath("eye.svg")),
              height: 24,
              width: 24,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        border: CustomOutlineInputBorder.defaultBorder(border: widget.border),
        enabledBorder:
            CustomOutlineInputBorder.defaultBorder(border: widget.border),
        focusedBorder:
            CustomOutlineInputBorder.focusedBorder(border: widget.border),
        errorStyle: CustomTextFieldStyle.errorTextStyle(),
        errorBorder:
            CustomOutlineInputBorder.defaultBorder(border: widget.border),
        focusedErrorBorder:
            CustomOutlineInputBorder.focusedErrorBorder(border: widget.border),
      ),
    );
  }
}
