import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wasly_template/constants/data_constants.dart';
import 'package:wasly_template/core/widgets/Border/custom_outline_input_border.dart';
import 'package:wasly_template/core/widgets/field/custom_text_field.dart';
import 'package:wasly_template/core/widgets/field/textStyle/custom_text_field_style.dart';
import 'package:wasly_template/core/widgets/text/text_field_3.dart';
import 'package:wasly_template/helpers/models/phone_model.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomPhoneField extends StatefulWidget {
  final TextEditingController phoneNumberController;

  const CustomPhoneField({
    super.key,
    required this.phoneNumberController,
  });

  @override
  State<CustomPhoneField> createState() => _CustomPhoneFieldState();
}

class _CustomPhoneFieldState extends State<CustomPhoneField> {
  late PhoneCode phoneSelected;
  final List<PhoneCode> phoneCodes = DataConstants.phoneCodes;

  @override
  void initState() {
    super.initState();
    phoneSelected = phoneCodes.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField2<PhoneCode>(
          value: phoneSelected,
          isExpanded: true,
          decoration: InputDecoration(
            label: TextParagraph3(
              text: "Select Your Country Code",
            ),
            errorStyle: CustomTextFieldStyle.errorTextStyle(),
            errorBorder: CustomOutlineInputBorder.errorBorder(
              border: CustomBorderRadius.phoneDropDownBorder(),
            ),
            focusedErrorBorder: CustomOutlineInputBorder.errorBorder(
              border: CustomBorderRadius.phoneDropDownBorder(),
            ),
            focusedBorder: CustomOutlineInputBorder.focusedBorder(
              border: CustomBorderRadius.phoneDropDownBorder(),
            ),
            border: CustomOutlineInputBorder.defaultBorder(
              border: CustomBorderRadius.phoneDropDownBorder(),
            ),
            enabledBorder: CustomOutlineInputBorder.defaultBorder(
              border: CustomBorderRadius.phoneDropDownBorder(),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          ),
          items: phoneCodes
              .map(
                (item) => DropdownMenuItem<PhoneCode>(
                  value: item,
                  child: PhoneWidget(phoneCode: item),
                ),
              )
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Please select a country code.';
            }
            return null;
          },
          onChanged: (value) {
            if (value != null) {
              setState(() {
                phoneSelected = value;
              });
            }
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 0),
          ),
        ),
        const SizedBox(height: 16),
        CustomTextField(
          defaultIcon: null,
          focusedIcon: null,
          border: CustomBorderRadius.phonFieldBorder(),
          hintText: "Phone Number",
          controller: widget.phoneNumberController,
        ),
      ],
    );
  }
}

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({super.key, required this.phoneCode});
  final PhoneCode phoneCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(phoneCode.icon),
        TextField3(
          text: phoneCode.country,
        ),
        TextField3(
          text: phoneCode.code,
        ),
      ],
    );
  }
}
