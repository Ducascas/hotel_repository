import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

import 'text_form_field.dart';

class ReservInfoTourist extends StatefulWidget {
  String? indexListTourist;

  ReservInfoTourist({super.key, required this.indexListTourist});

  @override
  State<ReservInfoTourist> createState() => _ReservInfoTouristState();
}

class _ReservInfoTouristState extends State<ReservInfoTourist> {
  final AssetImage _iconUp = AppImages.imageIconUp;
  final AssetImage _iconDown = AppImages.imageIconDown;

  bool _isButton = true;

  List<String> labelTextListEmpty = [];

  List<String> labelTextList = [
    'Имя',
    'Фамилия',
    'Дата рождения',
    'Гражданство',
    'Номер загранпаспорта',
    'Срок действия загранпаспорта',
  ];

  void _listInfo() {
    setState(() {
      if (_isButton!) {
        labelTextListEmpty = [];
      } else {
        labelTextListEmpty = labelTextList;
      }
      _isButton = !_isButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          decoration: AppSettings.boxCircularDecoration,
          child: Column(
            children: [
              _rowButton(),
              _infoColumn(labelTextListEmpty),
            ],
          ),
        ),
        Container(color: AppColors.mainBackgroundColor, height: 8)
      ],
    );
  }

  Row _rowButton() {
    return Row(
      children: [
        _titleText(),
        ElevatedButton(
          style: buttonTouristStyle,
          onPressed: _listInfo,
          child: _isButton! ? _imageIcon(_iconUp) : _imageIcon(_iconDown),
        ),
      ],
    );
  }

  Image _imageIcon(AssetImage _iconImage) {
    return Image(
      width: 32,
      height: 32,
      image: _iconImage,
    );
  }

  Expanded _titleText() {
    return Expanded(
      child: Text(
        '${widget.indexListTourist} турист',
        style: textStyleTitleBig,
      ),
    );
  }

  Column _infoColumn(List<String> labelTextList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: labelTextList
          .map((labelTextList) => ReservTextFormField(labelText: labelTextList))
          .toList(),
    );
  }
}
