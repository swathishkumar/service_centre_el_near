import 'package:flutter/material.dart';

// Define the Store class
class Store {
  String name;
  String location;
  String mobileNumber;
  String imageUrl;

  Store({
    required this.name,
    required this.location,
    required this.mobileNumber,
    required this.imageUrl,
  });
}

// Sample data for mobile and laptop service centers in Kochi
List<Store> serviceCentersInKochi = [
  Store(
    name: "Mobile Fix",
    location: "MG Road, Kochi",
    mobileNumber: "+91 9876543210",
    imageUrl: "https://example.com/images/mobilefix.jpg",
  ),
  Store(
    name: "Laptop Care",
    location: "Marine Drive, Kochi",
    mobileNumber: "+91 9876543211",
    imageUrl: "https://example.com/images/laptopcare.jpg",
  ),
  Store(
    name: "Techno Repair",
    location: "Vytilla, Kochi",
    mobileNumber: "+91 9876543212",
    imageUrl: "https://example.com/images/technorepair.jpg",
  ),
  Store(
    name: "QuickFix Mobiles",
    location: "Palarivattom, Kochi",
    mobileNumber: "+91 9876543213",
    imageUrl: "https://example.com/images/quickfixmobiles.jpg",
  ),
  Store(
    name: "Laptop Pro",
    location: "Edappally, Kochi",
    mobileNumber: "+91 9876543214",
    imageUrl: "https://example.com/images/laptoppro.jpg",
  ),
  Store(
    name: "SmartPhone Clinic",
    location: "Kadavanthra, Kochi",
    mobileNumber: "+91 9876543215",
    imageUrl: "https://example.com/images/smartphoneclinic.jpg",
  ),
  Store(
    name: "Laptop Hub",
    location: "Kaloor, Kochi",
    mobileNumber: "+91 9876543216",
    imageUrl: "https://example.com/images/laptophub.jpg",
  ),
  Store(
    name: "Gadget Rescue",
    location: "Thrikkakara, Kochi",
    mobileNumber: "+91 9876543217",
    imageUrl: "https://example.com/images/gadgetrescue.jpg",
  ),
  Store(
    name: "Mobile Masters",
    location: "Aluva, Kochi",
    mobileNumber: "+91 9876543218",
    imageUrl: "https://example.com/images/mobilemasters.jpg",
  ),
  Store(
    name: "Laptop Express",
    location: "Fort Kochi, Kochi",
    mobileNumber: "+91 9876543219",
    imageUrl:
        "https://d2ocdqfo0e576d.cloudfront.net/1205/store-images/dell-exclusive-store-1205-store-image-100.JPG",
  ),
];

// DetailsScreen that displays the service centers
class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Centers in Kochi'),
      ),
      body: ListView.builder(
        itemCount: serviceCentersInKochi.length,
        itemBuilder: (context, index) {
          final store = serviceCentersInKochi[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                store.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(store.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Location: ${store.location}"),
                  Text("Mobile: ${store.mobileNumber}"),
                ],
              ),
              onTap: () {
                // Add any action on tapping the ListTile
                // For now, it simply shows a SnackBar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${store.name} tapped!")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// // Main App Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Service Centers in Kochi',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DetailsScreen(),
//     );
//   }
// }
