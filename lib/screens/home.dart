import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int _currentIndex = 0;

  // final tabs = [
  //   Center(child: Text('Home')),
  //   Center(child: Text('Search')),
  //   Center(child: Text('Account')),
  //   Center(child: Text('Cart')),
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 38, 0, 252),
          foregroundColor: Colors.white,
          title: const Text(
            "+977-9876543210/ 9812345678",
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.login,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
          leading: Icon(Icons.call),
        ),

        //searchbar
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: "search",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            //listview
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonHeight: 500,
              buttonMinWidth: 500,
              buttonPadding: EdgeInsets.all(15),
              buttonTextTheme: ButtonTextTheme.normal,
              children: [
                Icon(Icons.category),
                Icon(Icons.add_box),
                Icon(Icons.power),
                Icon(Icons.car_crash_sharp),
              ],
            ),

            //categories
            Text(
              "Categories",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ67JduOpYeaGYqj1Di05NmNOtCPXcjoh64-hQJK4KeAP2MV-SXfVqyFk-qtvwCH88_qYM&usqp=CAU',
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd3vcOghSx_rnQmqHn3InSgYn6TYKI2RDrFRAnsMkR0YEJKaJg5K5JRyPMzgmAbufOFrc&usqp=CAU',
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQniPEpKLmeYvNTu8ahsGDztzw2YtqVMBM1SYJAm9mFI4HNuZk04Brw8_jnp8xAVb3yO4k&usqp=CAU',
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSUVSPIiUbV2XiNZnops1dSeZ1CQ7HQVhB2wcdXcpB488iiebj0dFnYxxJWFco86axCKs&usqp=CAU',
            ),
            Image.network(
              'https://extremetrainingequipment.com/cdn/shop/products/PL7340Ahomegym3_800x.jpg?v=1666912070',
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_QKUhPj3H8Y8cott-NXojvDGJRctaVA99uWAjrxePfofwEKRAUtvy9F4LCE8Ry5CNhX8&usqp=CAU',
            )
          ],
        ),

        //botton navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Account",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(Icons.trolley),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Color.fromARGB(255, 38, 0, 252),
        ),
      ),
    );
  }
}
