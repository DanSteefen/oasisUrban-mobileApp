import 'package:flutter/material.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        title: Text('Wish List'),
        actions: [],
      ),
    );
  }
}
