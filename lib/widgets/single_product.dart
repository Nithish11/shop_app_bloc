import 'dart:math';

import 'package:e_commerce/model/product/product.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  final Product product;
  SingleProduct({super.key, required this.product});
  
   bool isActive = false;

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: ListTile(
          shape: BeveledRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(7)),
          title: InkWell(
            onTap: (){
              isActive = !isActive;
            },
            child: Text(
              widget.product.productTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.amber ),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.productDescription,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text("Price"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${widget.product.productprice.toString()}  ₹',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text("Rating :"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('${widget.product.rating.rating.toString()}🌟'),
                ],
              )
            ],
          ),
          leading: Container(
              height: 70, width: 70, child: Image.network(widget.product.image)),
        ),
      );
  }
}
