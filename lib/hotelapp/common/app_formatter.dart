import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter maskPhoneFormatter = MaskTextInputFormatter(
  mask: '+7 (***) ***-**-**',
  filter: {"*": RegExp(r'[0-9]')},
);

MaskTextInputFormatter maskEmailFormatter = MaskTextInputFormatter(
  filter: {"*": RegExp(r'[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}')},
);
