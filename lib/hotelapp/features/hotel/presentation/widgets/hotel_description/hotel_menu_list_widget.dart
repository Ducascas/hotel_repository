import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';

List<MenuRowData> menuRows = [
  MenuRowData(iconImage: AppImages.imageEmojiHappy, text: 'Удобства'),
  MenuRowData(iconImage: AppImages.imageCloseSquare, text: 'Что включено'),
  MenuRowData(iconImage: AppImages.imageTickSquare, text: 'Что не включено'),
];

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: AppSettings.menuListDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: menuRows
            .map((menuRow) => _MenuRow(
                  menuRows: menuRow,
                  textStyleMain: textStyleMainSetting,
                  textStyleSub: textStyleSubSetting,
                ))
            .toList(),
      ),
    );
  }
}

class MenuRowData {
  final AssetImage iconImage;
  final String text;

  MenuRowData({required this.iconImage, required this.text});
}

class _MenuRow extends StatelessWidget {
  final MenuRowData menuRows;
  final TextStyle? textStyleMain;
  final TextStyle? textStyleSub;

  _MenuRow(
      {super.key,
      required this.menuRows,
      this.textStyleMain,
      this.textStyleSub});

  final ButtonStyle _buttonStyle =
      ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: _buttonStyle,
          onPressed: () {},
          child: _rowMenu(),
        ),
        const Divider(indent: 38)
      ],
    );
  }

  Row _rowMenu() {
    return Row(
      children: [
        _imageIcon(),
        const SizedBox(width: 12),
        _textMenuList(),
        const Icon(
          Icons.keyboard_arrow_right,
          size: 24,
        ),
      ],
    );
  }

  Image _imageIcon() {
    return Image(
      width: 24,
      height: 24,
      image: menuRows.iconImage,
    );
  }

  Expanded _textMenuList() {
    const String textSub = 'Самое необходимое';
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(menuRows.text, style: textStyleMain),
          Text(textSub, style: textStyleSub),
        ],
      ),
    );
  }
}
