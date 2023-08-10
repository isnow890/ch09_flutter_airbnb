import 'package:flutter/material.dart';

import '../../size.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(gap_m),
    child: Row(
      children: [
        _buildAppBarLogo(),
        Spacer(),
        _buildAppBarMenu(),
      ],
    ),);
  }

  _buildAppBarLogo() {return const SizedBox();}

  _buildAppBarMenu() {return const SizedBox();}
}
