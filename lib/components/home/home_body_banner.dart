import 'package:ch09_flutter_airbnb/styles.dart';
import 'package:flutter/material.dart';

import '../../size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              '이제, 여행은 가까운 곳에서',
              style: h4(mColor: Colors.white),
            ),
          ),
          SizedBox(
            height: gap_m,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 250,
            ),
            child: Text(
              '새로운 공간에 머물러 보세요. 살아보기 등등등등등등등',
              style: subTitle1(mColor: Colors.white),
            ),
          ),
          SizedBox(
            height: gap_m,
          ),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              onPressed: () {},
              child: Text(
                '가까운 여행지 둘러보기',
                style: subTitle2(),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/banner.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }
}
