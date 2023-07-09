import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'NewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muet FM 92.6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> sliderImages = [
    'assets/logo2.jpg',
    'assets/logo1.jpg',
    'assets/standee2.png',
    'assets/standee1.png',
    'assets/image3.png',
    'assets/image4.png',
    'assets/image5.png',
    'assets/image6.png',
    // Add more slider images here
    //1 2 3 4 5 6
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(width: 8),
            Text(
              'Muet FM 92.6',
              style: TextStyle(color: Colors.orange,
                  fontSize: 24),
            ),
            Spacer(),
            Image.asset(
              'assets/logo1.jpg', // Replace with your logo image path
              height: 40,
              width: 40,
            ),
            SizedBox(width: 8),
            Image.asset(
              'assets/logo2.jpg', // Replace with your logo image path
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
      drawer: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'Menu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('News Alert',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              Divider(),
              ListTile(
                title: Text('About Us',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {

                },
              ),
              Divider(),
              ListTile(
                title: Text('Contact Us',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              Divider(),
              ListTile(
                title: Text('Website',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  _launchURL('https://fm.muet.edu.pk/');
                },
              ),
              Divider(),
              ListTile(
                title: Text('Settings',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              // Add more list items as needed
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            children: [
              SizedBox(height: 8,),
              Expanded(
                child: Container(
                  width: 480,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1.0,
                      autoPlay: true,
                      enlargeCenterPage: false,
                    ),
                    items: sliderImages.map((image) => Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/logo.png', // Replace with your logo image path
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    )).toList(),
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 10, top: 5),
                        margin: EdgeInsets.only(top: 10, left: 6, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.orange,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          'Popular Shows',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10, right: 10, ),
                      padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Set the border color
                          width: 2, // Set the border width
                        ),
                      ),
                      height: 240,
                      child: Container(
                        height: 200, // Set the desired height
                        width: 700,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 5,
                          children: [
                            // Add your grid items here (images and text)
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/1.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Studio 92.6'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/2.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Lets Talk'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/3.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Green Club'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/4.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Campus Talent'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/5.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('MUET Alumni Super Starts'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/6.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Career Path'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/7.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Radiomentary'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/8.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Campus News'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/9.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Total Revival'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/10.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Frequency First'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/11.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Double Check'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/12.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Voice Note'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/13.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Sindh Sajee Surahan'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/14.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Ghuncha e Shouq'),
                              ),
                            ),
                            GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your navigation logic here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NewPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Set the border color
                                      width: 5, // Set the border width
                                    ),
                                  ),
                                  child: Image.asset('assets/15.png',
                                    fit: BoxFit.fill,),
                                ),
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text('Andaz e Bayan'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
      floatingActionButton: Container(
        width: 72, // Set the desired size
        height: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
        ),// Set the desired size
        child: FloatingActionButton(
          child: Icon(
            Icons.play_arrow,
            size: 50,
          ),
          onPressed: () {
            // Add your play button functionality here
          },
          backgroundColor: Colors.black, // Change the background color
          foregroundColor: Colors.white, // Change the icon color
          elevation: 100, // Adjust the shadow elevation
          splashColor: Colors.orange, // Change the splash color when pressed
          shape: CircleBorder(), // Set the shape to CircleBorder
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
