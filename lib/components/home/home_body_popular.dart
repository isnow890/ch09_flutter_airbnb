import 'package:ch09_flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: gap_m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildPopularTitle(), _buildPopularList()],
      ),
    );
  }

  _buildPopularTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기',
          style: h4(),
        ),
        Text(
          '게스트 훅디 2550505858585858585',
          style: body1(),
        ),
        SizedBox(height: gap_m,),
      ],
    );
  }

  _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(id: 1),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
