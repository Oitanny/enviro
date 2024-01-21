import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomePage> {
  var imgs=["env1.jpg","env2.jpg","env3.jpg"];
  var newsstr=["Green Innovations Blossom: Sustainable Tech Breakthroughs","Ocean Conservation Efforts Gain Momentum","Urban Forests: Growing Green Spaces for Cleaner Cities"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: Colors.green,
        
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded)),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.coins)),
        ],
      ),
      body: Container(
        child:SingleChildScrollView(
            child:Column(
              children: [

                Container(
                  padding: EdgeInsets.only(top:10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      initialPage: 2,
                      autoPlayInterval: Duration(seconds: 3),

                    ),

                    items: [0,1,2].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(image:AssetImage("assets/"+imgs[i]),    fit: BoxFit.cover,
                                )
                              ),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child:Text(newsstr[i], style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold, backgroundColor: Colors.black),))
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),

                // Container(
                //
                //   height: 200,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(15),
                //     color: Colors.black
                //   ),
                // )
                SizedBox(height: 10),
                GestureDetector(

                  child: Container(
                  margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        color: Colors.amber
                          ),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Activity", style: TextStyle(fontSize: 20),),
                            SizedBox(height: 5,),
                            Text("Track your daily carbon footprint")
                          ],
                        ),
                        Icon(Icons.energy_savings_leaf_rounded)
                      ],
                    ),

                  ),
                  ),
                SizedBox(height: 10),

                GestureDetector(

                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFA45AB4)
                    ),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Weekly Eco-Tasks", style: TextStyle(fontSize: 20, color: Colors.white),),
                            SizedBox(height: 5,),
                            Text("Complete weekly tasks to earn\ngiftcards of eco-friendly products",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(color: Colors.white),

                            )
                          ],
                        ),
                        Icon(Icons.tips_and_updates_sharp, color: Colors.white,)
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 10,),
      Container(
            height: 150,
          padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image:AssetImage("assets/ecoprod.jpg"),    fit: BoxFit.cover,
                  )
              ),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child:Text("Green Shopping Recommendations", style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold, backgroundColor: Colors.black))
      )

      )],
            ),

        ),
      ),
      drawer: NavDrawer(),
    );
  }

}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('My Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Eco Reports'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Weekly Challenges'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('News'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
