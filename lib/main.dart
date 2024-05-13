import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 181, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://cdn.fandangoseo.com/wp-content/uploads/2022/02/solutions_marketplace_header-2048x1511.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10), // مسافة بين النص والأيقونة
                Text(
                  'Welcome to Simple Style',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: Icon(Icons.info_outline),
              label: const Text('About Us'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: Icon(Icons.category),
              label: const Text('Categories'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OffersPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: Icon(Icons.local_offer),
              label: const Text('Offers'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: Icon(Icons.person),
              label: const Text('Login'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: Icon(Icons.shopping_cart),
              label: const Text('Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      backgroundColor: Color.fromARGB(255, 167, 181, 195),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 167, 181, 195),
              Color.fromARGB(255, 232, 243, 253),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  'https://stardatelogs.com/images/user/login.png'), // إضافة الصورة هنا
              Text(
                'Login to your Account ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Color.fromARGB(255, 232, 243, 253),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Color.fromARGB(255, 232, 243, 253),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 232, 243, 253),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 232, 243, 253),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                child: const Text('Don’t have an account? SIGN UP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _login(BuildContext context) async {
  // Retrieve user data from SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final storedEmail = prefs.getString('email');
  final storedPassword = prefs.getString('password');

  // Navigate to home page
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}

class SharedPreferences {
  static getInstance() {}
}

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color.fromARGB(255, 167, 181, 195),
      ),
      backgroundColor: const Color.fromARGB(255, 167, 181, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://stardatelogs.com/images/user/login.png'),
            Text(
              'SIGN UP',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 243, 253),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  prefixIcon: const Icon(Icons.email),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 243, 253),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.password),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 232, 243, 253),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                _signUp(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
              ),
              child: const Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp(BuildContext context) async {
    // Perform sign-up logic here

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Account created successfully!'),
      ),
    );

    // Navigate to home page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://i0.wp.com/blog.velocity.in/wp-content/uploads/2023/03/Copy-of-Blog-Cover-Product-Description-01.jpg?w=1200&ssl=1'), // إضافة الصورة هنا
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(6.0), // Adjust padding as needed
              child: Text(
                '''The "Simple Style" app 
                is a specialized digital store for selling shoes, allowing users to explore and purchase a variety of footwear for women, men, and children. The app provides a wide range of shoes, users can find footwear suitable for all occasions and uses, whether they are athletic, casual, or elegant. The app also features a seamless and convenient shopping experience. ''',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose a Category !',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomenPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              icon: Icon(Icons.female), // أيقونة النساء
              label: const Text('Women'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              icon: Icon(Icons.male), // أيقونة الرجال
              label: const Text('Men'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KidsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              icon: Icon(Icons.child_care), // أيقونة الأطفال
              label: const Text('Kids'),
            ),
          ],
        ),
      ),
    );
  }
}

class WomenPage extends StatelessWidget {
  WomenPage({Key? key});

  // قائمة بروابط الصور للمنتجات
  final List<String> productImages = [
    'https://m.media-amazon.com/images/I/7119aQzqxWL._AC_UL480_FMwebp_QL65_.jpg',
    'https://m.media-amazon.com/images/I/51Q16iN5lsL._AC_UL480_QL65_.jpg',
    'https://m.media-amazon.com/images/I/71nmHZJsC+L._AC_UL480_FMwebp_QL65_.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Page'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Shoes ${index + 1}'),
            subtitle: const Text('Price: \$20'),
            leading: Image.network(
              productImages[index],
              width: 150, // تعديل العرض للصورة
              height: 150, // تعديل الارتفاع للصورة
            ),
            trailing: ElevatedButton(
              onPressed: () {
                addToCart(context, 'Shoes ${index + 1}');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              child: const Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }

  void addToCart(BuildContext context, String productName) {
    CartPage.products.add(productName); // إضافة المنتج إلى قائمة السلة
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName added to cart!'),
      ),
    );
  }
}

class MenPage extends StatelessWidget {
  MenPage({Key? key});

  // قائمة بروابط الصور للمنتجات
  final List<String> productImages = [
    'https://m.media-amazon.com/images/I/61w20RRQuhL._AC_UL480_FMwebp_QL65_.jpg',
    'https://m.media-amazon.com/images/I/715MKPtfkRL._AC_UL480_FMwebp_QL65_.jpg',
    'https://m.media-amazon.com/images/I/715wkwKDZKL._AC_UL480_QL65_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men Page'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Shoes ${index + 1}'),
            subtitle: const Text('Price: \$20'),
            leading: Image.network(
              productImages[index],
              width: 150, // تعديل العرض للصورة
              height: 150, // تعديل الارتفاع للصورة
            ),
            trailing: ElevatedButton(
              onPressed: () {
                addToCart(context, 'Shoes ${index + 1}');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              child: const Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }

  void addToCart(BuildContext context, String productName) {
    CartPage.products.add(productName); // إضافة المنتج إلى قائمة السلة
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName added to cart!'),
      ),
    );
  }
}

class KidsPage extends StatelessWidget {
  KidsPage({Key? key});

  // قائمة بروابط الصور للمنتجات
  final List<String> productImages = [
    'https://m.media-amazon.com/images/I/511aWmhxS-L._AC_SY300_DpWeblab_.jpg',
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQz4YgQjra4PXNZNdNV53witOUEpIsBkWDSNf3REvrO2g6Z5vds',
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSg0LarHZ7VPgLZTtchMGnRMpwIEz5PnF-U46AHqqqqvzVRCm9i',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kids Page'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Shoes ${index + 1}'),
            subtitle: const Text('Price: \$20'),
            leading: Image.network(
              productImages[index],
              width: 150, // تعديل العرض للصورة
              height: 150, // تعديل الارتفاع للصورة
            ),
            trailing: ElevatedButton(
              onPressed: () {
                addToCart(context, 'Shoes ${index + 1}');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              child: const Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }

  void addToCart(BuildContext context, String productName) {
    CartPage.products.add(productName); // إضافة المنتج إلى قائمة السلة
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName added to cart!'),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  static List<String> products = []; // المنتجات المحفوظة في السلة

  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]), // عرض اسم المنتج
            trailing: ElevatedButton(
              onPressed: () {
                removeFromCart(context, index); // حذف المنتج من السلة
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 232, 243, 253),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
              ),
              child: const Text('Remove'),
            ),
          );
        },
      ),
    );
  }

  void removeFromCart(BuildContext context, int index) {
    String removedProduct = products.removeAt(index); // حذف المنتج
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$removedProduct removed from cart!'),
      ),
    );
  }
}

class OffersPage extends StatelessWidget {
  OffersPage({Key? key});

  final List<String> imageUrls = [
    'https://m.media-amazon.com/images/I/61w20RRQuhL.AC_UL480_FMwebp_QL65.jpg',
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQz4YgQjra4PXNZNdNV53witOUEpIsBkWDSNf3REvrO2g6Z5vds',
    'https://m.media-amazon.com/images/I/51Q16iN5lsL.AC_UL480_QL65.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers Page'),
        backgroundColor: Color.fromARGB(255, 167, 181, 195),
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return OfferItem(
            productName: 'Shoes ${index + 1}',
            offerPrice: '\$20',
            originalPrice: '\$30',
            imageUrl: imageUrls[index],
            onTapBuyNow: () {
              addToCart(context, 'Shoes ${index + 1}');
            },
          );
        },
      ),
    );
  }

  void addToCart(BuildContext context, String productName) {
    CartPage.products.add(productName);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName added to cart!'),
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final String productName;
  final String offerPrice;
  final String originalPrice;
  final String imageUrl;
  final VoidCallback? onTapBuyNow;

  const OfferItem({
    required this.productName,
    required this.offerPrice,
    required this.originalPrice,
    required this.imageUrl,
    this.onTapBuyNow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(productName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Offer Price: $offerPrice'),
            Text('Original Price: $originalPrice'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: onTapBuyNow, // استدعاء onTapBuyNow عند الضغط
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 232, 243, 253),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          child: const Text('Buy Now'),
        ),
      ),
    );
  }
}

class Women {
  final String id;
  final String name;
  final int price;
  final String imageUrl; // رابط الصورة

  Women({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  factory Women.fromJson(Map<String, dynamic> json) {
    return Women(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'], // اسم الحقل المستخدم في JSON
    );
  }
}

Future<List<Women>> loadWomen() async {
  String jsonString = await rootBundle.loadString('data.json');
  List<dynamic> jsonList = jsonDecode(jsonString);
  List<Women> womens = [];
  for (var json in jsonList) {
    womens.add(Women.fromJson(json));
  }
  return womens;
}

class Men {
  final String id;
  final String name;
  final int price;
  final String imageUrl; // رابط الصورة

  Men({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  factory Men.fromJson(Map<String, dynamic> json) {
    return Men(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'], // اسم الحقل المستخدم في JSON
    );
  }
}

Future<List<Men>> loadMen() async {
  String jsonString = await rootBundle.loadString('men_data.json');
  List<dynamic> jsonList = jsonDecode(jsonString);
  List<Men> mens = [];
  for (var json in jsonList) {
    mens.add(Men.fromJson(json));
  }
  return mens;
}

class Kid {
  final String id;
  final String name;
  final int price;
  final String imageUrl; // رابط الصورة

  Kid({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  factory Kid.fromJson(Map<String, dynamic> json) {
    return Kid(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }
}

Future<List<Kid>> loadKid() async {
  String jsonString = await rootBundle.loadString('kids_data.json');
  List<dynamic> jsonList = jsonDecode(jsonString);
  List<Kid> kids = [];
  for (var json in jsonList) {
    kids.add(Kid.fromJson(json));
  }
  return kids;
}

class CartItem {
  final String productName;
  final String price;

  CartItem({
    required this.productName,
    required this.price,
  });
}
