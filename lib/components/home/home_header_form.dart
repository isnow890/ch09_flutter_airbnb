import 'package:flutter/material.dart';

import '../../size.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(), //위젯 제목
                  _buildFormField(), //Text 입력 양식 영역
                  _buildFormSubmit() //위젯 전송 버튼 영역
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildFormTitle() {return SizedBox();}

  _buildFormField() {return SizedBox();}

  _buildFormSubmit() {return SizedBox();}
}
