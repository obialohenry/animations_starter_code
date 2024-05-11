import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: isClicked ? 200 : 80.0,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: isClicked ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(isClicked ? 30 : 10.0),
            ),
            child: isClicked
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      Text(
                        'Added to Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
          ),
        ),
      ),
    );
  }
}
