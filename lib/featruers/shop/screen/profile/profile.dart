import 'package:flutter/material.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        title: Text('Profile'),
        actions: [],
      ),
    );
  }
}
