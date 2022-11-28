import 'package:flutter/material.dart';

import '../util/profile1.dart';
import '../util/profile2.dart';
import '../util/profile3.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add_alt_1_rounded,color: Colors.black,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.menu,color: Colors.black,),
            ),
          ],
          title: Text('Sahadeva MK',style: TextStyle(color: Colors.black),),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Image(
                image: AssetImage('images/123.png'),
              ),
            ),
            SizedBox(height: 10,),
            Text('@Sahadeva',style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('50',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    Text('Following  ',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
                Column(
                  children: [
                    Text('700',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    Text('Followers  ',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
                Column(
                  children: [
                    Text('1.2M',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    Text('  Likes',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Text('Edit Profile',style: TextStyle(color: Colors.black,fontSize: 18),),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.camera_alt_rounded,color: Colors.black,),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.bookmark_outline,color: Colors.grey[800],),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('Bio Here',style: TextStyle(color: Colors.grey[700]),),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.favorite,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded,color: Colors.black,),
                ),
              ],
            ),
            Expanded(child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
