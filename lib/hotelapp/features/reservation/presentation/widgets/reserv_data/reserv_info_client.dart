import 'package:flutter/material.dart';

import '../../../../../common/app_formatter.dart';
import '../../../../../common/app_settings.dart';
import '../../../../../common/app_text_style.dart';

GlobalKey<FormState> clientKey = GlobalKey<FormState>();

class ReservInfoClient extends StatefulWidget {
  const ReservInfoClient({super.key});

  @override
  State<ReservInfoClient> createState() => _ReservInfoClientState();
}

class _ReservInfoClientState extends State<ReservInfoClient> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  bool isError = false;

  final _textStyle = AppTextStyle().textStyleLabelClient;

  final _decorationError = AppSettings.errorFieldForm;
  final _decoration = AppSettings.boxTextFieldForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      decoration: AppSettings.boxCircularDecoration,
      child: Form(
        key: clientKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textTitle(),
            const SizedBox(height: 20),
            _phoneNumberForm(),
            const SizedBox(height: 8),
            _emailForm(),
            const SizedBox(height: 8),
            _textInformation()
          ],
        ),
      ),
    );
  }

  Container _phoneNumberForm() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
      decoration: isError ? _decorationError : _decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Номер телефон', style: _textStyle),
          _textPhoneFormField(),
        ],
      ),
    );
  }

  TextFormField _textPhoneFormField() {
    return TextFormField(
      controller: _phoneController,
      inputFormatters: [maskPhoneFormatter],
      decoration: inputPhoneDecoration(),
      style: AppTextStyle().textStyleTextField,
      validator: validatePhone,
    );
  }

  InputDecoration inputPhoneDecoration() {
    return const InputDecoration(
      hintText: '+ 7 (***) *** - ** - **',
      contentPadding: EdgeInsets.zero,
      isCollapsed: true,
      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
    );
  }

  Container _emailForm() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
      decoration: isError ? _decorationError : _decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Почта', style: _textStyle),
          _textEmailFormField(),
        ],
      ),
    );
  }

  TextFormField _textEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      inputFormatters: [maskEmailFormatter],
      decoration: inputEmailDecoration(),
    );
  }

  InputDecoration inputEmailDecoration() {
    return const InputDecoration(
      contentPadding: EdgeInsets.zero,
      isCollapsed: true,
      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
    );
  }

  Text _textTitle() => Text(
        'Информация о покупателе',
        style: AppTextStyle().textStyleTitleBig,
      );

  Text _textInformation() => Text(
        'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
        style: AppTextStyle().textStyleInformation,
      );

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите корректную почту';
    } else if (!_emailController.text.contains('@') ||
        !_emailController.text.contains('.')) {
      setState(() {
        isError = !isError;
      });
      return 'Введите корректную почту';
    } else {
      return null;
    }
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isError = !isError;
      });
      return 'Некорректные данные';
    } else {
      return null;
    }
  }
}

bool isValidPhoneNumber(String phoneNumber) {
  return phoneNumber.isNotEmpty;
}

bool isValidEmail(String email) {
  final emailRegexp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  return email.isNotEmpty && emailRegexp.hasMatch(email);
}
