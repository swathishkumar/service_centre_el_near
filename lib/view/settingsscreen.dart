import 'package:flutter/material.dart';
import 'package:service_centre_el_near/view/homescreen/widget/aboutscreen.dart';
import 'package:service_centre_el_near/view/homescreen/widget/helpandfeedbackscreen.dart';
import 'package:service_centre_el_near/view/homescreen/widget/notificationscreen.dart';
import 'package:service_centre_el_near/view/homescreen/widget/profilescreen.dart';
import 'package:service_centre_el_near/view/loginscreen/loginscreen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Profile Section
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            subtitle: Text('Manage your profile information'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          Divider(),

          // Notifications Section
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Manage notification preferences'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ));
            },
          ),
          Divider(),

          // Privacy Section
          // ListTile(
          //   leading: Icon(Icons.lock),
          //   title: Text('Privacy'),
          //   subtitle: Text('Privacy settings and data security'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // Navigate to Privacy settings
          //   },
          // ),
          // Divider(),

          // // Language Section
          // ListTile(
          //   leading: Icon(Icons.language),
          //   title: Text('Language'),
          //   subtitle: Text('Change app language'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // Navigate to Language settings
          //   },
          // ),
          // Divider(),

          // // Theme Section
          // ListTile(
          //   leading: Icon(Icons.palette),
          //   title: Text('Theme'),
          //   subtitle: Text('Select app theme'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // Navigate to Theme settings
          //   },
          // ),
          // Divider(),

          // Help Section
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Feedback'),
            subtitle: Text('Get help and provide feedback'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpFeedbackScreen(),
                  ));
            },
          ),
          Divider(),

          // About Section
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            subtitle: Text('App information and version'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ));
            },
          ),
          Divider(),

          // Logout Button
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Loginscreen(),
                  ));
            },
            child: Text('Logout'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
