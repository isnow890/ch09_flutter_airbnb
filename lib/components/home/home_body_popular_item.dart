import 'package:ch09_flutter_airbnb/constraints.dart';
import 'package:ch09_flutter_airbnb/size.dart';
import 'package:ch09_flutter_airbnb/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({super.key, required this.id});

  final id;
  final popularList = ['p1.jpeg', 'p2.jpeg', 'p3.jpeg'];

  @override
  Widget build(BuildContext context) {
    //1. 인기아이템은 전체화면의 70%의 1/3만큼의 사이즈의 -5 의 크기를 가짐.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        //2. 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위하여 최소 제약조건을 걸어줌.

        constraints: BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/${popularList[id]}',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          '깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔깔끔',
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  _buildPopularItemUserInfo() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/p1.jpeg'),
        ),
        const SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              '데어',
              style: subTitle1(),
            )
          ],
        ),
      ],
    );
  }
}
