// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_label, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/constants/color_constant.dart';
import 'package:nft_app/presentation/widgets/bidtile_widget.dart';
import 'package:nft_app/presentation/widgets/page_widget.dart';

import '../widgets/browse_tile_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        child: Column(
          children: [_userInfo(), _popularBids(), _browse()],
        ),
      ),
    );
  }

  Widget _userInfo() => Padding(
        // padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        padding: EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left
            Row(
              children: [
                // avatar
                Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorConstant.primary),
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joy Singgih",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Level 109",
                      style: GoogleFonts.inter(
                          fontSize: 14, color: Color(0xFF909FB4)),
                    ),
                  ],
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/svgs/bell.svg')),
            ),
          ],
        ),
      );

  Widget _popularBids() {
    var bids = [
      Bid(
        image:
            'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=3328&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: "The Masa",
        ends: "35M 11s",
        price: "12.4",
      ),
      Bid(
        image:
            'https://images.unsplash.com/photo-1643101681441-0c38d714fa14?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: "The Masa",
        ends: "35M 11s",
        price: "12.4",
      ),
       Bid(
        image:
            'https://images.unsplash.com/photo-1643101681441-0c38d714fa14?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: "The Masa",
        ends: "35M 11s",
        price: "12.4",
      ),
       Bid(
        image:
            'https://images.unsplash.com/photo-1643101681441-0c38d714fa14?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: "The Masa",
        ends: "35M 11s",
        price: "12.4",
      ),
       Bid(
        image:
            'https://images.unsplash.com/photo-1643101681441-0c38d714fa14?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: "The Masa",
        ends: "35M 11s",
        price: "12.4",
      )
    ];

    return Padding(
      padding: EdgeInsets.only(top: 36),
      child: _listTile(
        title: 'Popular Bids',
        itemHeight: 268,
        itemBuilder: (context, index) => BidtileWidget(
          bid: bids[index],
        ),
      ),
    );
  }

  Widget _browse() {
    var browse = [
      Browse(
          image:
              "https://images.unsplash.com/photo-1636955840493-f43a02bfa064?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Vector",
          itemCount: 10000),
        Browse(
          image:
              "https://images.unsplash.com/photo-1639548206755-b20081a7cadc?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "3D",
          itemCount: 1232),
        Browse(
          image:
              "https://images.unsplash.com/photo-1664959784172-fafcb579808b?q=80&w=3458&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Vector",
          itemCount: 12312),
    ];
  
  
  return Padding(
        padding: EdgeInsets.only(top: 36),
        child: _listTile(
          title: 'Browse',
          itemHeight: 196,
          itemBuilder: (context, index) => BrowseTileWidget(
            browse: browse[index]
          ),
        ),
      );
  }

  Column _listTile(
      {required String title,
      required double itemHeight,
      required NullableIndexedWidgetBuilder itemBuilder,
      int itemCount = 3}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFF0D1220)),
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemBuilder: itemBuilder,
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: itemCount),
        )
      ],
    );
  }
}
