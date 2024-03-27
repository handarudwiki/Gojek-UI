import 'package:flutter/material.dart';
import 'package:gojek_gui/datas/news.dart';
import 'package:gojek_gui/theme.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.asset(
                'assets/images/image 8.png',
                height: 14,
              ),
              const SizedBox(height: 8,),
              Text(
                "Lebih Hemat pake GoPayLater 🤩",
                style: bold16.copyWith(color: dark1),
              ),
              const SizedBox(height:8),
              Text(
                "Yuk, belanja di TokoPedia pakai GoPayLater dan nikmatin cashback~nya",
                style: regular14.copyWith(color: dark2),
              ),
            ],
          ),
         ),
         const SizedBox(height: 24,),
         ...news.map((item) => Padding(
            padding: EdgeInsets.only(right: 16, left: 16, bottom: 24),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: dark4),
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/${item.image}"),
                  Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: bold16.copyWith(color: dark1),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      item.description,
                      style: regular14.copyWith(color: dark2),
                    )
                  ],
                ),
              )
                ],
              ),
            ),
          ))
      ],
    );
  }
}