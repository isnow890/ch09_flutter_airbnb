import 'package:ch09_flutter_airbnb/constraints.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        Text(
          'RoomOfAll',
          style: h5(mColor: Colors.white),
        )
      ],
    );
  }

  _buildAppBarMenu() {
    return Row(
      children: [
        InkWell(onTap: (){}, child: Text('회원가입', style: subTitle1(mColor: Colors.white),)),
        SizedBox(width: gap_m,),
        InkWell(onTap: (){},child: Text('로그인', style: subTitle1(mColor: Colors.white),)),
      ],
    );
  }
}
