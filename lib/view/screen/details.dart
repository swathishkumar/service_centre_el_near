import 'package:flutter/material.dart';

class ServiceCentre {
  final String brandName;
  final String serviceCentreName;
  final String contactNumber;
  final String location;
  final String shopImage;
  final String timings;

  ServiceCentre({
    required this.brandName,
    required this.serviceCentreName,
    required this.contactNumber,
    required this.location,
    required this.shopImage,
    required this.timings,
  });
}

class ShopDetailsDisplayScreen extends StatefulWidget {
  final List<ServiceCentre> serviceCentres;

  const ShopDetailsDisplayScreen({super.key, required this.serviceCentres});

  @override
  _ShopDetailsDisplayScreenState createState() =>
      _ShopDetailsDisplayScreenState();
}

class _ShopDetailsDisplayScreenState extends State<ShopDetailsDisplayScreen> {
  String? selectedBrand;

  final List<String> availableBrands = [
    'Samsung',
    'Apple',
    'OnePlus',
    'Xiaomi',
    'Oppo',
    'Vivo',
    'Realme',
    'Google Pixel',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter the service centers by the selected brand
    List<ServiceCentre> filteredCentres = selectedBrand == null
        ? []
        : widget.serviceCentres
            .where((serviceCentre) => serviceCentre.brandName == selectedBrand)
            .toList();

    // Limit to 5 shops
    filteredCentres = filteredCentres.take(5).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Service Centres for $selectedBrand'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/appbg.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Brand Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Select Brand',
                ),
                value: selectedBrand,
                items: availableBrands.map((String brand) {
                  return DropdownMenuItem<String>(
                    value: brand,
                    child: Text(brand),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBrand = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Display Shops List
              Expanded(
                child: filteredCentres.isEmpty
                    ? Center(
                        child: Text(
                          selectedBrand == null
                              ? 'Please select a brand'
                              : 'No service centres available for $selectedBrand',
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black87),
                        ),
                      )
                    : ListView.builder(
                        itemCount: filteredCentres.length,
                        itemBuilder: (context, index) {
                          final serviceCentre = filteredCentres[index];

                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Shop Image Section
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(serviceCentre.shopImage),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),

                                  // Service Centre Details
                                  Text(
                                    serviceCentre.serviceCentreName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  // Brand Name
                                  Text(
                                    'Brand: ${serviceCentre.brandName}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                  const SizedBox(height: 5),

                                  // Contact Number
                                  Text(
                                    'Contact: ${serviceCentre.contactNumber}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                  const SizedBox(height: 5),

                                  // Location
                                  Text(
                                    'Location: ${serviceCentre.location}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                  const SizedBox(height: 5),

                                  // Timings
                                  Text(
                                    'Timings: ${serviceCentre.timings}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ShopDetailsDisplayScreen(
      serviceCentres: [
        ServiceCentre(
          brandName: 'Samsung',
          serviceCentreName: 'Samsung Care Centre 1',
          contactNumber: '1234567890',
          location: 'Ernakulam',
          shopImage: 'asset/shop1.jpg',
          timings: 'Mon-Fri: 9 AM - 6 PM',
        ),
        ServiceCentre(
          brandName: 'Samsung',
          serviceCentreName: 'Samsung Care Centre 2',
          contactNumber: '0987654321',
          location: 'Kakkanad',
          shopImage: 'asset/shop2.jpg',
          timings: 'Mon-Fri: 10 AM - 5 PM',
        ),
        ServiceCentre(
          brandName: 'Apple',
          serviceCentreName: 'Apple Service Centre 1',
          contactNumber: '9876543210',
          location: 'Aluva',
          shopImage: 'asset/shop3.jpg',
          timings: 'Mon-Sat: 9 AM - 6 PM',
        ),
        ServiceCentre(
          brandName: 'OnePlus',
          serviceCentreName: 'OnePlus Service Centre',
          contactNumber: '1231231234',
          location: 'Ernakulam',
          shopImage: 'asset/shop4.jpg',
          timings: 'Mon-Fri: 9 AM - 6 PM',
        ),
        ServiceCentre(
          brandName: 'Samsung',
          serviceCentreName: 'Samsung Care Centre 3',
          contactNumber: '1122334455',
          location: 'Perumbavoor',
          shopImage: 'asset/shop5.jpg',
          timings: 'Mon-Sat: 9 AM - 7 PM',
        ),
        // Add more service centres here
      ],
    ),
  ));
}
