import 'package:flutter/material.dart';

import '../../../../../common/utils/app_settings.dart';
import '../../../../../common/style/app_text_style.dart';

class ReservTextFormField extends StatefulWidget {
  final String labelText;
  final Function(String)? validators;

  ReservTextFormField({super.key, required this.labelText, this.validators});

  @override
  State<ReservTextFormField> createState() => _ReservTextFormFieldState();
}

class _ReservTextFormFieldState extends State<ReservTextFormField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final _textStyle = AppTextStyle().textStyleTextField;
  final _textLabelStyle = AppTextStyle().textStyleLabelClient;

  final _decorationError = AppSettings.errorFieldForm;
  final _decoration = AppSettings.boxTextFieldForm;
  bool isError = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
          decoration: isError ? _decorationError : _decoration,
          child: _textFormField(
              labelText: widget.labelText,
              textLabelStyle: _textLabelStyle,
              textStyle: _textStyle),
        ),
        const SizedBox(height: 8)
      ],
    );
  }

  TextFormField _textFormField(
      {String? labelText, TextStyle? textLabelStyle, TextStyle? textStyle}) {
    return TextFormField(
      controller: _controller,
      validator: _validateForm,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: textStyle,
      decoration: _inputPhoneDecoration(
          labelText: labelText, textLabelStyle: textLabelStyle),
    );
  }

  String? _validateForm(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isError =! isError;
      });
      return 'Некорректные данные';
    } else {
      return null;
    }
  }

  InputDecoration _inputPhoneDecoration(
      {String? labelText, TextStyle? textLabelStyle}) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: textLabelStyle,
      contentPadding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
      // isCollapsed: true,
      isDense: true,
      enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    );
  }
}
