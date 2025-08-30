import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        centerTitle: true,
        title: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(
            "assets/logo.png",
          ), // Replace with your logo
        ),
        actions: [
          Icon(Icons.camera_alt_outlined, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting + Weather Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Pucchakayala Narendar Reddy,",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Good Morning,  Tuesday, 26 August",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.cloud, color: Colors.grey),
                          SizedBox(width: 6),
                          Text("23.0° C"),
                        ],
                      ),
                      Text(
                        "Partly Cloudy",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "View Schedule",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Essentials Label
            Text(
              "ESSENTIALS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),

            // Essentials Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.2,
              children: [
                buildEssentialCard(
                  color: Colors.green[100]!,
                  icon: Icons.calendar_today,
                  title: "Attendance",
                  subtitle: "81.01 %",
                  footer: "As on Aug 25, 15:15 PM",
                ),
                buildEssentialCard(
                  color: Colors.red[100]!,
                  icon: Icons.payment,
                  title: "Fee Payments",
                  subtitle: "INR 0.00",
                  footer: "As on Aug 19, 15:22 PM",
                ),
                buildSimpleCard(
                  color: Colors.purple[100]!,
                  icon: Icons.location_on,
                  title: "Campus Events",
                ),
                buildSimpleCard(
                  color: Colors.blue[100]!,
                  icon: Icons.group,
                  title: "Campus Clubs",
                ),
              ],
            ),

            SizedBox(height: 24),
            Text(
              "TOOLS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 80), // Placeholder for "Tools" section
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
    );
  }

  Widget buildEssentialCard({
    required Color color,
    required IconData icon,
    required String title,
    required String subtitle,
    required String footer,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.black54, size: 28),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 6),
          Text(subtitle, style: TextStyle(color: Colors.black87)),
          Spacer(),
          Text(footer, style: TextStyle(fontSize: 10, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget buildSimpleCard({
    required Color color,
    required IconData icon,
    required String title,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.black54, size: 28),
          Spacer(),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
