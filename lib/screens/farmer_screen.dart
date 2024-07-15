import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:good_food/components/card.dart';
import 'package:good_food/screens/bank_transaction.dart';
import 'package:good_food/screens/disease_identifier.dart';
import 'package:good_food/screens/help_screen.dart';
import 'package:good_food/screens/news_screen.dart';
import 'package:good_food/screens/notification_screens.dart';
import 'package:good_food/screens/planting_tips.dart';
import 'package:good_food/screens/price_info.dart';
import 'package:good_food/screens/treatment.dart';
import 'package:good_food/screens/upload_products.dart';

class FarmerScreen extends StatefulWidget {
  const FarmerScreen({super.key});

  @override
  State<FarmerScreen> createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  int myIndex = 0;

  final List<Widget> screens = [
    FarmerHomeContent(), // Main content with GridView.builder
    NotificationScreens(),
    NewsScreen(),
    HelpScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Good Food",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Scanner clicked");
            },
            icon: Icon(
              Icons.qr_code_scanner_sharp,
              color: Colors.white,
              size: 33,
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: screens[myIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            myIndex = value;
          });
        },
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: "Help",
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName:
              Text("prasanna"),
              accountEmail: Text("prasannasunuwar03@gmail.com"),
           currentAccountPicture:ClipOval(
             child: SizedBox(
               height: 30,
               width: 30,
               child: Image.asset("assets/images/user.png",
               fit: BoxFit.cover,),

             ),
           ),),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              // Handle Profile tap
              print("Profile tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              Navigator.pop(context);
              // Handle History tap
              print("History tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Download'),
            onTap: () {
              Navigator.pop(context);
              // Handle Download tap
              print("Download tapped");

            },
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text('Save'),
            onTap: () {
              Navigator.pop(context);
              // Handle Save tap
              print("Save tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              Navigator.pop(context);
              // Handle Notification tap
              print("Notification tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              // Handle Settings tap
              print("Settings tapped");
            },
          ),
        ],
      ),
    );
  }
}

class FarmerHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                        hintText: "search here...",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Notification button clicked");
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.lightbulb,
                      color: Colors.green[500],
                      size: 33,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  CardContainer(icon: FontAwesomeIcons.upload,
                      txtName: "Upload",
                  onPressed: (){
                    print("click on upload");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadProducts()));
                  },),
        
                  CardContainer(icon: FontAwesomeIcons.dollarSign,
                      txtName: "Price Info",
                  onPressed: (){
                    print("click on price inof");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>PriceInfo()));
                  },)
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  CardContainer(icon: FontAwesomeIcons.disease,
                    txtName: "Disease Identifier",
                    onPressed: (){
                    print("click on disease identifier");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseaseIdentifier()));
                    },),
        
                  CardContainer(icon: FontAwesomeIcons.seedling,
                    txtName: "Treatment",
                    onPressed: (){
                    print("click on treatment");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Treatment()));
                    },)
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardContainer(icon: FontAwesomeIcons.handHoldingWater,
                      txtName: "Planting Tips",
                      onPressed: (){
                      print("click on planting tips");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PlantingTips()));
                      }),
        
                  CardContainer(icon:  FontAwesomeIcons.moneyCheckAlt,
                      txtName: "Bank Transaction",
                      onPressed: (){
                    print("click on bank transaction");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BankTransaction()));
                      })
        
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
