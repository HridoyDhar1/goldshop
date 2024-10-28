// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class SellImagePreviewPage extends StatelessWidget {
   var img;

   SellImagePreviewPage({Key? key, required this.img  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
          imageProvider: NetworkImage(img),
        enableRotation: true,
      )
    );
  }
}
