import 'package:flutter/material.dart';

import 'package:urbanoasis/featruers/shop/screen/home/widget/container/primay_header_container.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/home_app_bar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            OPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App Bar
                  OHomeAppBar(),

                  //Search Bar

                  //Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








