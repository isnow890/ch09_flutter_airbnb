import 'package:ch09_flutter_airbnb/styles.dart';
import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  final String prefixText;
  final String hintText;

  const CommonFormField(
      {super.key, required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom, //내부 세로 정렬
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 30, left: 20, bottom: 10),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 2))),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            ))
      ],
    );
  }
}
