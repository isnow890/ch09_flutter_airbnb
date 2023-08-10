import 'package:ch09_flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter/material.dart';

import '../../size.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
      top: gap_m,

        ),child: Column(
      crossAxisAlignment: CrossAxisAlignment.start
      ,
      children: [_buildPopularTitle(),_buildPopularList()],
    ),);
  }

  _buildPopularTitle() {return SizedBox();}

  _buildPopularList() {return Wrap(
    children: [

      HomeBodyPopularItem(id: 0),
      SizedBox(width: 7.5,),
      HomeBodyPopularItem(id: 1),
      SizedBox(width: 7.5,),
      HomeBodyPopularItem(id: 2),
    ],
  );}
}
