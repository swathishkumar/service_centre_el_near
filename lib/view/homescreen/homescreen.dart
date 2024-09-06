import 'package:flutter/material.dart';
import 'package:service_centre_el_near/view/feedbackscreen.dart';
import 'package:service_centre_el_near/view/loginscreen/loginscreen.dart';
import 'package:service_centre_el_near/view/searchscreen/headsetscreen.dart';
import 'package:service_centre_el_near/view/searchscreen/laptopscreen.dart';
import 'package:service_centre_el_near/view/searchscreen/mobilescreen.dart';
import 'package:service_centre_el_near/view/searchscreen/watchscreen.dart';
import 'package:service_centre_el_near/view/settingsscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Username'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50, color: Colors.blue),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.search),
            //   title: Text('Search'),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Searchscreen(),
            //       ),
            //     );
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    )); // Add navigation to Settings screen if you have one
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedbackScreen(),
                    ));
              },
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginscreen(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/appbg.jpeg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Carousel Slider
            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: 200,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 3),
            //     enlargeCenterPage: true,
            //     aspectRatio: 16 / 9,
            //     viewportFraction: 0.8,
            //   ),
            //   items: [
            //     'asset/banner1.jpg',
            //     'asset/banner2.jpg',
            //     'asset/banner3.jpg',
            //   ]
            //       .map((item) => Container(
            //             margin: EdgeInsets.symmetric(horizontal: 5.0),
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage(item),
            //                 fit: BoxFit.cover,
            //               ),
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ))
            //       .toList(),
            // ),
            SizedBox(
                height:
                    20), // Add some spacing between the carousel and the rest of the content
            Text(
              'Choose your device',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomFormScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 57, 92, 152),
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('asset/mobilebg.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('Mobiles')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LaptopDetailsFormScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 57, 92, 152),
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('asset/laptop.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('Laptops')],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SmartWatchDetailsFormScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 92, 152),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('asset/swatch.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text('Watches')],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HeadsetDetailsFormScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 92, 152),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('asset/headset.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Headsets'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
