



import 'package:flutter/material.dart';
import 'package:wow_shopping/widgets/category_nav_list.dart';
import 'package:wow_shopping/widgets/top_nav_bar.dart';

class Homside extends StatefulWidget {
  const Homside({super.key});

  @override
  State<Homside> createState() => _HomsideState();
}


  void _onCategoryItemPressed(CategoryItem value) {
    // FIXME: implement filter or deep link?
  }


class _HomsideState extends State<Homside> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TopNavBar(title: Text('hello'),bottom: CategoryNavList(
                  onCategoryItemPressed: _onCategoryItemPressed,
                ),),
    );
  }
}