import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.cardBtnIcon,
    required this.cardBtnOnTap,
  });
  final IconData cardBtnIcon;
  final VoidCallback cardBtnOnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteNames.productDetailsScreen);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: SizedBox(
          height: 160,
          width: 135,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                width: 140,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor.withAlpha(50),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      topRight: Radius.circular(6.0),
                    ),
                    image: const DecorationImage(
                        image: AssetImage(AppAssetsPath.demoShoe))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product Name',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$100',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold)),
                        const Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 14),
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: cardBtnOnTap,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              color: AppColor.primaryColor,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(cardBtnIcon,
                                    size: 14, color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
