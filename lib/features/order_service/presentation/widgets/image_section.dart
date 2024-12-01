import 'package:flutter/material.dart';

// created by: Nadeen Mohamed
// created at date: 15/10/2024
// This file contains image section in order service screen

/// the edit: wrapped the image widget with Sized box and give it width:double.infinity to fit the screen width
/// Edited by : Naira Ali
/// Edited at: 17/10/2024

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // Edited by: nadeen mohamed
    // Edited at date: 17/10/2024
    // Edit note: Add sizedBox to the image to set double.infinity for width
    return SizedBox(
        width: double.infinity,
        // Edited by: Nadeen Mohamed
        // Edited at date: 29/10/2024
        // Edit note: use networkImage to display image from api
        child: Image(image: NetworkImage(imageUrl)));
  }
}
