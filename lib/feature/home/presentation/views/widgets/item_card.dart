import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/navigation.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';
import 'package:shopui/feature/home/presentation/views/details_view.dart';

import '../../../../../core/utils/asset.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goTo(context,  HomeDetailsView(
          productModel: productModel,
        ),);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            width: 160,
            height: 180,
            decoration: BoxDecoration(
              color: productModel.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(productModel.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              productModel.title,
              style: const TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "\$${productModel.price}",
                style: const TextStyle(
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetData.kCart,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetData.kHeart,
                  colorFilter: const ColorFilter.mode(
                    Colors.red,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            Icon(Icons.monitor_heart_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
