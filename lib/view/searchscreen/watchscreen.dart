import 'package:flutter/material.dart';
import 'package:service_centre_el_near/view/screen/details.dart';

class SmartWatchDetailsFormScreen extends StatefulWidget {
  const SmartWatchDetailsFormScreen({super.key});

  @override
  _SmartWatchDetailsFormScreenState createState() =>
      _SmartWatchDetailsFormScreenState();
}

class _SmartWatchDetailsFormScreenState
    extends State<SmartWatchDetailsFormScreen> {
  final List<String> smartwatchBrands = [
    'Apple Watch',
    'Samsung Galaxy Watch',
    'Fitbit',
    'Garmin',
    'Fossil',
    'Huawei',
    'Amazfit',
    'Suunto',
    'Noise',
    'Boat',
    'Fire-Boltt',
    'Zebronics',
    'Titan',
    'Maxima',
    'Fastrack',
  ];

  final List<String> locations = [
    'Ernakulam',
    'Kakkanad',
    'Aluva',
    'Perumbavoor',
    'Angamaly',
    'Thrippunithura',
    'Muvattupuzha',
  ];

  String? selectedBrand;
  String? selectedLocation;
  final TextEditingController productNameController = TextEditingController();
  // final TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    productNameController.dispose();
    // phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smartwatch Details Form'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/appbg.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Enter Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),

                // Smartwatch Model Name Field
                TextField(
                  controller: productNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Smartwatch Model Name',
                  ),
                ),
                const SizedBox(height: 20),

                // Smartwatch Brand Dropdown
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Smartwatch Brand',
                  ),
                  value: selectedBrand,
                  items: smartwatchBrands.map((String brand) {
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

                // Location Dropdown
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Location near Ernakulam',
                  ),
                  value: selectedLocation,
                  items: locations.map((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLocation = newValue;
                    });
                  },
                ),
                // const SizedBox(height: 20),

                // // Phone Number Field
                // TextField(
                //   controller: phoneNumberController,
                //   decoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Phone Number',
                //   ),
                //   keyboardType: TextInputType.phone,
                // ),
                const SizedBox(height: 30),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (selectedBrand != null &&
                            selectedLocation != null &&
                            productNameController.text.isNotEmpty
                        // &&
                        // phoneNumberController.text.isNotEmpty
                        ) {
                      // Proceed with the form submission logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
                          ));
                    } else {
                      // Show error if any field is missing
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill all the fields'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color.fromARGB(255, 57, 92, 152),
                  ),
                  child: const Text(
                    'Search',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
