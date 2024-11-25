import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currentPageIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 : Home',
      style: optionStyle,
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(
                Icons.notifications_active_sharp,
                color: Colors.red,
              ),
              title: Text('Notification 1'),
              subtitle: Text('This is a notification'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.notifications_active_sharp,
                color: Colors.red,
              ),
              title: Text('Notification 2'),
              subtitle: Text('This is a notification'),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Account Details',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, color: Colors.blue), // Name Icon
              SizedBox(width: 10),
              Text(
                'Name: Mohit Kushwah',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined, color: Colors.green), // Email Icon
              SizedBox(width: 10),
              Text(
                'Email: mohitkushwah123@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: Colors.orange), // Address Icon
              SizedBox(width: 10),
              Text(
                'Address: Ring Road Bholaram',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Colors.red), // Contact Icon
              SizedBox(width: 10),
              Text(
                'Contact: 84359511261',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Sample'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        elevation: 20,
      ),
      body: Center(
        child: _widgetOptions.elementAt(currentPageIndex),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              SizedBox(
                height: 70,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text(
                    'Drawer',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text("Jay Kushwah"),
                subtitle: Text("jay kushwah"),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
              ListTile(
                title: Text("Mohit Kushwah"),
                subtitle: Text("mohit kushwah"),
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
              ListTile(
                title: Text("Prabhat Shahu"),
                subtitle: Text("prabhat shahu"),
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
              ListTile(
                title: Text("Yogesh Kushwah"),
                subtitle: Text("yogesh kushwah"),
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
              ListTile(
                title: Text("Ritika Kushwah"),
                subtitle: Text("ritika kushwah"),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
              ListTile(
                title: Text("Sumit Bhalekar"),
                subtitle: Text("sumit kushwah"),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 22,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        backgroundColor: Colors.transparent,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('!'),
              child: Icon(Icons.account_circle_outlined),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
