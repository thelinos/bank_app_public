import "package:flutter/material.dart";

class UploadCustomerPictureButtonShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width * 0.10, 0)
      ..lineTo(size.width * 0.95, 0)
      ..quadraticBezierTo(size.width, 0, size.width * 0.995, size.height * 0.05)
      ..lineTo(size.width * 0.84, size.height * 0.93)
      ..quadraticBezierTo(
        size.width * 0.84,
        size.height,
        size.width * 0.78,
        size.height,
      )
      ..lineTo(size.width * 0.05, size.height)
      ..quadraticBezierTo(
        0,
        size.height,
        size.width * 0.01,
        size.height * 0.93,
      )
      ..lineTo(size.width * 0.1499, size.height * 0.055)
      ..quadraticBezierTo(
        size.width * 0.15,
        size.height * 0.005,
        size.width * 0.2,
        0,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
