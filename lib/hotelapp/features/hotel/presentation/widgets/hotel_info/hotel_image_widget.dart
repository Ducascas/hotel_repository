import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotel_app/hotelapp/common/style/style.dart';
import 'package:hotel_app/hotelapp/common/utils/app_settings.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelImageWidgets extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelImageWidgets({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 257,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: _imageBox(hotel: hotel),
      ),
    );
  }
}

class _imageBox extends StatefulWidget {
  final HotelEntity? hotel;

  _imageBox({super.key, this.hotel});

  @override
  State<_imageBox> createState() => _imageBoxState();
}

class _imageBoxState extends State<_imageBox> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> hotelImagesList = widget.hotel?.imageUrls ?? [];

    List<ClipRRect> imageList = hotelImagesList
        .map((image) => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ))
        .toList();

    return Stack(
      fit: StackFit.expand,
      children: [
        _imageCarousel(context, imageList),
        _buttonImage(imageList),
      ],
    );
  }

  Positioned _buttonImage(List<ClipRRect> imageList) {
    final imageListLength = imageList.length;

    return Positioned(
      left: 134,
      bottom: 8,
      child: Container(
        width: 75,
        height: 17,
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: AppSettings.imageBarDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...Iterable<int>.generate(imageListLength).map(
              (int page) => Flexible(child: _buttonIcon(page)),
            )
          ],
        ),
      ),
    );
  }

  CarouselSlider _imageCarousel(
      BuildContext context, List<ClipRRect> imageList) {
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1.0,
      ),
      items: imageList,
    );
  }

  ElevatedButton _buttonIcon(int page) {
    return ElevatedButton(
        onPressed: () => controller.animateToPage(page),
        style: buttonIconStyle(page),
        child: null);
  }
}
