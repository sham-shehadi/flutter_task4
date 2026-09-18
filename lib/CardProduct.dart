import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final String title;
  final String price;
 // final VoidCallback onProductpressed; //كارد ما قيل خاصية ضغط ع منتج
  final VoidCallback onAddtocart;
  final VoidCallback oniconpressed;


  const  CardProduct({
    super.key,
    required this.image,
    required this.title,
    required this.price,
   // required this.onProductpressed,
    required this.onAddtocart,
    required this.oniconpressed
  });

  @override
  Widget build(BuildContext context) {
    return Card(


      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xFFFFFBF7),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),

             SizedBox(height: 8),

             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                      color: Color(0xFF2F3E34),
                    ),
                  ),

                  IconButton(
                    onPressed: oniconpressed,
                    icon: const Icon(Icons.favorite_border,
                      color: Color(0xFF6B9080),
                    ),
                  ),
                ],
              ),


             Text(
                price,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF6B9080),
                ),
              ),


            SizedBox(height: 10),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onAddtocart,

                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFFFFB7C3),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Text('Add to Cart'),
                ),
              ),


             SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}