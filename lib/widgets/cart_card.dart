import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CartCard extends StatelessWidget {
  // final CartModel cart;
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    // CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/image_shoes8.png'),
                    // NetworkImage(
                    //   cart.product.galleries[0].url,
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURT VISION 2.0',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '\$158,67',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // cartProvider.addQuantity(cart.id);
                    },
                    child: Image.asset(
                      'assets/button_add.png',
                      width: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      // cartProvider.reduceQuantity(cart.id);
                    },
                    child: Image.asset(
                      'assets/button_min.png',
                      width: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              // cartProvider.removeCart(cart.id);
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_remove.png',
                  width: 10,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Remove',
                  style: alertTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
