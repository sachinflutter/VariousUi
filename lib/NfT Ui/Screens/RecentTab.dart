import 'package:flutter/material.dart';

import 'NftCard.dart';
class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NFTCard(imagepath: 'assets/pictures/Nft1.webp',),
    );
  }
}
