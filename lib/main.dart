import 'package:flutter/material.dart';
import 'CardProduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:
          HomePage
        (),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     int _curentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDEBD3),
      appBar: AppBar
        (

        backgroundColor: Color(0xFFFFB7C3),
        title: Text('Terra Shop',
          style: TextStyle(fontSize: 20,fontWeight: .w400,color: Color(0xFF6B9080),),
        ),  centerTitle: true,
        actions: [Icon(Icons.shopping_cart,color: Color(0xFF6B9080))],

       ),
       drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:  EdgeInsets.all(16),
              height: 470,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 470,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage('pj/p1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color:  Color(0xFF6B9080).withOpacity(0.55),// هون شفافيه
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),

                         Text(
                          'NEW ARRIVALS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                         SizedBox(height: 20),

                         Text(
                          'Sustainable\nLiving\nCollection',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                         SizedBox(height: 25),

                         Text(
                          'Embrace nature in your daily space\n'
                              'with our mindfully crafted, earthy essentials.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),

                         SizedBox(height: 25),

                        Container(
                          padding:  EdgeInsets.symmetric(
                            horizontal: 28,
                          ),
                          decoration: BoxDecoration(
                            color:  Color(0xFF6B9080),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:  Text(
                            'EXPLORE COLLECTION',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F3E34),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All →',
                      style: TextStyle(
                        color: Color(0xFF6B9080),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

      GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(16),
          mainAxisExtent: 500,
          children: [
            CardProduct(
              image: 'pj/p2.jpg',
              title: 'Cloud Hanging Chair',
              price: '\$120.00',
              onAddtocart: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ),
                );
              },

              oniconpressed: () {},
            ),
            CardProduct(
              image: 'pj/p3.jpg',
              title: 'Flower Bunny Lamp',
              price: '\$35.00',

              onAddtocart: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ),
                );
              },

              oniconpressed: () {},
            ),
            CardProduct(
              image: 'pj/p4.jpg',
              title: 'Cute Chick Tissue Box',
              price: '\$18.00',

              onAddtocart: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ),
                );
              },

              oniconpressed: () {},
            ),
          ],
      ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ] ,currentIndex: _curentindex ,selectedItemColor: Color(0xFFFFB7C3),
      unselectedItemColor:  Color(0xFF6B9080),onTap: (index) {
      setState(() {
        _curentindex =index;
      });
       },),

    );
  }
}
class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  String selectco='Earth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDED6D1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Stack(
          children: [
          Image.asset(
            'pj/p3.jpg',
            width: double.infinity,
            height: 380,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 45,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF2F3E34),
                ),
              ),
            ),
          ),
          ],
        ),

        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Flower Bunny Lamp',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F3E34),
                    ),
                  ),
                ),

                Text(
                  '\$35.00',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4F8A68),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),

            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Color(0xFF6B5B35),
                ),

                SizedBox(width: 8),

                Text(
                  'Product Description',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F3E34),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            Text(
              'A charming flower-shaped lamp with a cute bunny. '
                  'It gives your room a soft and cozy light and is perfect '
                  'for a bedroom, living room or children room.',
              style: TextStyle(
                fontSize: 16,

                color: Color(0xFF555555),
              ),
            ),

            SizedBox(height: 35),

            Row(
              children: [
                Icon(
                  Icons.palette_outlined,
                  color: Color(0xFF6B5B35),
                  size: 28,
                ),

                SizedBox(width: 8),

                Text(
                  'Select Color',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F3E34),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Wrap(
                children: [
            Column(
            children: [
            TextButton(
            onPressed: () {
        setState(() {
        selectco = 'Earth';
        });
        },
            child: Container(

                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: selectco == 'Earth' ? Color(0xFF4F8A68) : Colors.transparent,
                      width: 3,//سماكة لطار عنصر الي اخترت لونخ
                    ),
                ),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xFF9B8B7A),
              ),
            ),
        ),

              SizedBox(height: 8),

              Text(
                'Earth',
                style: TextStyle(
                  fontSize: 16,

                ),
              ),
            ],
          ),

          SizedBox(width: 25),

          Column(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    selectco = 'Moss';
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:selectco == 'Moss'
                          ? Color(0xFF4F8A68) : Colors.transparent,
                       width: 3,//سماكة لطار عنصر الي اخترت لونخ
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFF758B73),
                  ),
                ),
              ),

              SizedBox(height: 8),

              Text(
                'Moss',
                style: TextStyle(
                  fontSize: 16,

                ),
              ),
            ],
          ),

          SizedBox(width: 25),

          Column(
              children: [
              TextButton(
              onPressed: () {
        setState(() {
          selectco = 'Sand';
        });
        },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selectco == 'Sand'
                    ? Color(0xFF4F8A68)
                    : Colors.transparent,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xFFD6CEBA),
            ),
          ),
        ),

        SizedBox(height: 8),

        Text(
            'Sand',
            style: TextStyle(
                fontSize: 16,


            ),
        ),
              ],
          ),
                ],
            ),

                SizedBox(height: 50),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3EFE7),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove),
                          ),

                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 15),


                    SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CheckoutPage(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4F8A68),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_bag_outlined),

                              SizedBox(width: 8),

                              Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                  ],
                ),

                SizedBox(height: 30),
              ],
            ),
        ),
            ],
          ),
        ),




    );
  }
}

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
 bool save=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDED6D1),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFD6DE),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF8C4A5A),
            ),
          ),
          title: Text(
            'Checkout',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8C4A5A),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
            Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Row(
            children: [
            Icon(
            Icons.shopping_bag_outlined,
              color: Color(0xFF8C4A5A),
              size: 28,
            ),
            SizedBox(width: 10),
            Text(
              'Order Summary',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F2F),
              ),
            ),
            ],
          ),

          SizedBox(height: 25),

          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('pj/p3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 11),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flower Bunny Lamp',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Qty: 1',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 90,),
              Text(
                '\$35.00',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD76C82),
                ),
              ),
            ],
          ),

          Divider(height: 35),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('pj/p4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 15),

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cute Chick Tissue Box',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Qty: 1',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width:70 ,),

                    Text(
                      '\$12.00',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD76C82),
                      ),
                    ),
                  ],
                ),

                Divider(height: 35),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '\$35.00',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '\$12.50',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$47.00',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD76C82),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

            SizedBox(height: 25),

            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping_outlined,
                        color: Color(0xFF8C4A5A),
                        size: 28,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Shipping Details',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 8),

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Jane Doe',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Shipping Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 8),

                  TextField(
                    decoration: InputDecoration(
                      hintText: '123 Grove Street, Apt 4B',

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 8),

                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '(555) 123-4567',

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Checkbox(
                        value: save,
                        activeColor: Color(0xFFD76C82),
                        onChanged: (value) {
                          setState(() {
                            save= value!;
                          });
                        },
                      ),
                       Text(
                          'Save this address for future orders',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),

                    ],
                  ),
                ],
              ),
            ),

          SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD76C82),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Confirm Order',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),



    );
  }
}


