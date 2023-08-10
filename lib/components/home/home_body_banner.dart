import 'package:flutter/material.dart';

import '../../size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [_buildBannerImage(), _buildBannerCaption()],
      ),
    );
  }

  _buildBannerCaption() {
    return SizedBox();
  }

  _buildBannerImage() {
    return SizedBox();
  }
}
