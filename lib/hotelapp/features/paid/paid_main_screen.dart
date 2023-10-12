import 'package:flutter/material.dart';

import '../../common/app_button_style.dart';
import '../../common/app_colors.dart';
import '../../common/app_images.dart';
import '../../common/app_settings.dart';
import '../../common/app_text_style.dart';
import 'widgets/paid_navigator_bar.dart';

class PaidMainScreen extends StatefulWidget {
  final int? randomNumber;

  PaidMainScreen({super.key, this.randomNumber});

  @override
  State<PaidMainScreen> createState() => _PaidMainScreenState();
}

class _PaidMainScreenState extends State<PaidMainScreen> {
  final AssetImage _imageParty = AppImages.imageParty;
  final TextStyle _textStyleTitleBig = AppTextStyle().textStyleTitleBig;
  final TextStyle? _textStyleTitle = AppTextStyle().textStyleTitle;
  final TextStyle? _textStyleButtonText =
      TextStyleSetting(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cellBackgroundColor,
      body: Column(children: [
        Container(height: 44, color: AppColors.cellBackgroundColor),
        PaidNavigatorBar(),
        Container(
          color: AppColors.cellBackgroundColor,
          padding: const EdgeInsets.only(top: 223, left: 23, right: 23),
          child: Column(children: [
            _image(),
            const SizedBox(height: 32),
            _textBig(),
            const SizedBox(height: 20),
            _textPaid(),
          ]),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppSettings.paidLine,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 12, right: 16, bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: AppButtonStyle().buttonStyle,
                      onPressed: () => Navigator.pushNamed(context, '/hotel'),
                      child: Text('Супер', style: _textStyleButtonText),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Text _textPaid() {
    return Text(
        'Подтверждение заказа №${widget.randomNumber} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
        style: _textStyleTitle,
        textAlign: TextAlign.center);
  }

  Text _textBig() =>
      Text('Ваш заказ принят в работу', style: _textStyleTitleBig);

  Container _image() {
    return Container(
      height: 44,
      width: 44,
      decoration: AppSettings.paidImageParty,
      child: Image(
        width: 32,
        height: 32,
        image: _imageParty,
      ),
    );
  }
}
