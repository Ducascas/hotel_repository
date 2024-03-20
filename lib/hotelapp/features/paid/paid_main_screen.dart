import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

import 'widgets/paid_navigator_bar.dart';

class PaidMainScreen extends StatefulWidget {
  final int? randomNumber;

  const PaidMainScreen({super.key, this.randomNumber});

  @override
  State<PaidMainScreen> createState() => _PaidMainScreenState();
}

class _PaidMainScreenState extends State<PaidMainScreen> {
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
                      style: buttonStyle,
                      onPressed: () => Navigator.pushNamed(context, '/hotel'),
                      child: Text('Супер', style: textStyleButtonText),
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
    return Text(AppConstants.textSubmit(widget.randomNumber),
        style: textStyleTitle, textAlign: TextAlign.center);
  }

  Text _textBig() =>
      Text(AppConstants.textSuccess, style: textStyleTitleBig);

  Container _image() {
    return Container(
      height: 44,
      width: 44,
      decoration: AppSettings.paidImageParty,
      child: const Image(
        width: 32,
        height: 32,
        image: AppImages.imageParty,
      ),
    );
  }
}
