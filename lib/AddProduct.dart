import 'dart:convert';
import 'package:Online_Book_Shop/product/product10.dart';
import 'package:Online_Book_Shop/product/product11.dart';
import 'package:Online_Book_Shop/product/product12.dart';
import 'package:Online_Book_Shop/product/product13.dart';
import 'package:Online_Book_Shop/product/product14.dart';
import 'package:Online_Book_Shop/product/product15.dart';
import 'package:Online_Book_Shop/product/product16.dart';
import 'package:Online_Book_Shop/product/product17.dart';
import 'package:Online_Book_Shop/product/product18.dart';
import 'package:Online_Book_Shop/product/product19.dart';
import 'package:Online_Book_Shop/product/product2.dart';
import 'package:Online_Book_Shop/product/product.dart';
import 'package:Online_Book_Shop/product/product20.dart';
import 'package:Online_Book_Shop/product/product21.dart';
import 'package:Online_Book_Shop/product/product22.dart';
import 'package:Online_Book_Shop/product/product23.dart';
import 'package:Online_Book_Shop/product/product24.dart';
import 'package:Online_Book_Shop/product/product3.dart';
import 'package:Online_Book_Shop/product/product4.dart';
import 'package:Online_Book_Shop/product/product5.dart';
import 'package:Online_Book_Shop/product/product6.dart';
import 'package:Online_Book_Shop/product/product7.dart';
import 'package:Online_Book_Shop/product/product8.dart';
import 'package:Online_Book_Shop/product/product9.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Contact_Call.dart';
import 'Contact_Chat.dart';
import 'Funny_Book.dart';
import 'History_Book.dart';
import 'IslamicBook.dart';
import 'Literature_Book.dart';
import 'Sell.dart';
import 'bell.dart';
import 'main.dart';


void main() {
  runApp(AddP());
}

class AddP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Enter Book Details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: ProductForm(),
        ),
      ),
    );
  }
}


class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  String selectedImage = "assets/please.jpg";
  TextEditingController priceController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController editionController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  Future<void> navigateToProductsPage() async {
    String price = priceController.text;
    String name = nameController.text;
    String edition = editionController.text;
    String location = locationController.text;

    if (price.isEmpty || name.isEmpty || edition.isEmpty || location.isEmpty) {
      // Show alert if any field is empty
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Incomplete Data"),
            content: Text("Please fill out all fields."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    Product product = Product(
      image: selectedImage,
      price: price,
      name: name,
      edition: edition,
      location: location,
    );

    await saveProduct(product);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductListPage(),
      ),
    );
  }

  void showImageSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ImageSelectionDialog(
          onImageSelected: (String image) {
            setState(() {
              selectedImage = image;
            });
          },
        );
      },
    );
  }

  Future<void> saveProduct(Product product) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> productList = prefs.getStringList('productList') ?? [];
    productList.add(product.toJson());
    await prefs.setStringList('productList', productList);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 6, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              showImageSelectionDialog(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(6, 10, 5, 10),
                              child: Image.asset(
                                selectedImage,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: TextField(
                              controller: priceController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                labelText: 'Enter Price \$...',
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 1),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                labelText: "Enter Name of Book",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                            child: TextField(
                              controller: editionController,
                              decoration: InputDecoration(
                                labelText: "Enter Book Edition",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 2),
                            child: TextField(
                              controller: locationController,
                              decoration: InputDecoration(
                                labelText: "Enter Address.......",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: ElevatedButton(
                              onPressed: navigateToProductsPage,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                backgroundColor: Color.fromRGBO(0, 48, 52, 1),
                                minimumSize: Size(200, 50),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageSelectionDialog extends StatefulWidget {
  final Function(String) onImageSelected;

  ImageSelectionDialog({required this.onImageSelected});

  @override
  _ImageSelectionDialogState createState() => _ImageSelectionDialogState();
}

class _ImageSelectionDialogState extends State<ImageSelectionDialog> {
  String selectedCategory = 'All';
  final Map<String, List<int>> categoryImages = {
    'Islamic': [1, 2, 3, 4, 5],
    'Funny': [6, 7, 8, 9, 10],
    'History': [11, 12, 13, 14, 15],
    'Literature': [16, 17, 18, 19, 20],
    'Art&Design': [21, 22, 23, 24, 25],
    'Science': [26, 27, 28, 29, 30],
    'Medical': [31, 32, 33, 34, 35],
  };

  List<int> getFilteredImages() {
    if (selectedCategory == 'All') {
      return List<int>.generate(35, (index) => index + 1);
    }
    return categoryImages[selectedCategory] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select Image"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownButton<String>(
            value: selectedCategory,
            onChanged: (String? newValue) {
              setState(() {
                selectedCategory = newValue!;
              });
            },
            items: <String>[
              'All',
              'Islamic',
              'Funny',
              'History',
              'Literature',
              'Art&Design',
              'Science',
              'Medical',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: getFilteredImages().length,
                itemBuilder: (BuildContext context, int index) {
                  int imageIndex = getFilteredImages()[index];
                  return GestureDetector(
                    onTap: () {
                      widget.onImageSelected("assets/image_$imageIndex.jpg");
                      Navigator.of(context).pop();
                    },
                    child: Image.asset("assets/image_$imageIndex.jpg"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String image;
  final String price;
  final String name;
  final String edition;
  final String location;

  Product({
    required this.image,
    required this.price,
    required this.name,
    required this.edition,
    required this.location,
  });

  String toJson() {
    return jsonEncode({
      'image': image,
      'price': price,
      'name': name,
      'edition': edition,
      'location': location,
    });
  }

  factory Product.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return Product(
      image: map['image'],
      price: map['price'],
      name: map['name'],
      edition: map['edition'],
      location: map['location'],
    );
  }
}

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Product> productList = [];
  late String name, name2, price, b1, b2, b3, b4, b5, b6;
  String selectedCity = "Multan,PAK";
  List<String> cities = ["Multan,PAK", "Lahore,PAK", "Karachi,PAK", "Vehari,PAK", "Islamabad,PAK"];

  @override
  void initState() {
    super.initState();
    loadProductList();
  }

  Future<void> loadProductList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> productJsonList = prefs.getStringList('productList') ?? [];
    setState(() {
      productList = productJsonList.map((json) => Product.fromJson(json)).toList();
    });
  }

  void deleteProduct(Product product) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> productJsonList = prefs.getStringList('productList') ?? [];
    productJsonList.remove(product.toJson());
    await prefs.setStringList('productList', productJsonList);
    setState(() {
      productList.remove(product);
    });
    // Show delete success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Deleted successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Adding Book List',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: productList.isEmpty
            ? Center(
          child: Text('No products found.'),
        )
            : Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView.builder(
              itemCount: (productList.length / 2).ceil(),
              itemBuilder: (BuildContext context, int index) {
                int startIndex = index * 2;
                int endIndex = startIndex + 1;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (startIndex < productList.length)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            width: 160,
                            child: ProductCard(
                              product: productList[startIndex],
                              onDelete: deleteProduct,
                            ),
                          ),
                        ),
                      if (endIndex < productList.length)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            width: 160,
                            child: ProductCard(
                              product: productList[endIndex],
                              onDelete: deleteProduct,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}


class ProductCard extends StatelessWidget {
  final Product product;
  final Function(Product) onDelete;

  ProductCard({required this.product, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        // Navigate to Chat page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chat()),
        );
      },
      onDoubleTap: () {
        // Navigate to Call page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Call()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              product.image,
              height: 160,
              width: 160,
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        '\$: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('${product.price}'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Name: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${product.name}'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Edition: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${product.edition}'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Address: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${product.location}'),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                // Delete button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      onDelete(product);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      backgroundColor: Colors.red,
                      minimumSize: Size(200, 50),
                    ),
                    child: Text(
                      'Delete',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

