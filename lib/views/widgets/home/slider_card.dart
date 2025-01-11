import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomeSliderCard extends StatelessWidget {
  const HomeSliderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 360,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://www.ajantashoes.com/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/e/g/eg1001.jpg',
              height: 160,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 2),
                const Text(
                  'Happy New Year special Deal Save 30% Today',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(45, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: AppColor.primaryColor),
                    )),
                const SizedBox(height: 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
