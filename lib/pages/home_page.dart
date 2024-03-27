import 'package:flutter/material.dart';
import 'package:gojek_gui/components/akses.dart';
import 'package:gojek_gui/components/goclub.dart';
import 'package:gojek_gui/components/gopay.dart';
import 'package:gojek_gui/components/header.dart';
import 'package:gojek_gui/components/menus.dart';
import 'package:gojek_gui/components/news.dart';
import 'package:gojek_gui/components/search.dart';
import 'package:gojek_gui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const SingleChildScrollView(
        child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Search(),GoPay(),Menus(),GoClub(), Akses(), News()],
          )
      ),
    );
  }
}