import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/models/Product.dart';
import 'package:tokoto_by_nanda/screens/home/components/product_card.dart';
import 'package:tokoto_by_nanda/screens/home/components/section_title.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionText(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
