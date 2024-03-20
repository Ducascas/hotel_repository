import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class RoomImageWidget extends StatelessWidget {
  final RoomEntity? room;

  const RoomImageWidget({super.key, this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 257,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: _imageBox(roomImages: room?.imageUrls),
    );
  }
}

class _imageBox extends StatefulWidget {
  final List<String>? roomImages;

  _imageBox({super.key, this.roomImages});

  @override
  State<_imageBox> createState() => _imageBoxState();
}

class _imageBoxState extends State<_imageBox> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> roomImages = widget.roomImages ?? [];

    List<ClipRRect> imageList = roomImages
        .map((image) => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ))
        .toList();

    return Stack(
      fit: StackFit.expand,
      children: [
        _imageCarousel(context, imageList),
        _buttonImage(),
      ],
    );
  }

  Positioned _buttonImage() {
    return Positioned(
      left: 134,
      // right: 134,
      bottom: 8,
      child: Container(
        width: 75,
        height: 17,
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: AppSettings.imageBarDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...Iterable<int>.generate(5).map(
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
