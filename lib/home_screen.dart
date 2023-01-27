import 'package:favor_food/food_item.dart';
import 'package:flutter/material.dart';
// import 'package:food_App_UI/ui/food_item.dart';

class HomeScreen extends StatelessWidget {


  List foodList = [
    {
      'pizza': [
        {
          'name': 'Chicken Pizza', 
          'subName': 'Pizza with cheese', 
          'price' : '9.5', 
          'imgUrl':'https://images.jdmagicbox.com/comp/coimbatore/y9/0422px422.x422.190419190336.n8y9/catalogue/pizza-hut-marakkadai-coimbatore-pizza-outlets-9g82bny2oc.jpg?clr=#333333'
        },
        {
          'name': 'Pizza', 
          'subName': 'pizza bisa', 
          'price' : '8.0', 
          'imgUrl':'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home.jpg'
        },
      ]
    },
    {
      'hamburger' : [
        {
          'name': 'Big Burger', 
          'subName': 'Burger jumbo', 
          'price' : '8.0',
          'imgUrl':'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80'
        },
        {
          'name': 'Ranch Burger',
          'subName': 'Rasanya anjing banget',
          'price' : '4.5', 
          'imgUrl':'https://assets.bonappetit.com/photos/57aceacc1b3340441497532d/master/pass/double-rl-ranch-burger.jpg'
        },
      ]
    },
    {
      'salad': [
        {
          'name': 'Italian Salad', 
          'subName': 'how tasty',
          'price' : '5.0', 
          'imgUrl':'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-4.jpg'
        },
        {
          'name': 'Green Salad', 
          'subName': 'Classic greek greed salad', 
          'price' : '4.5',
          'imgUrl':'https://www.olivetomato.com/wp-content/uploads/2019/12/Green-salad-with-feta.jpeg'
        },

      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Ever food",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          elevation: 5,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black, // Change Custom Drawer Icon Color
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  accountName: Text(
                    "gohel Jayesh",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  accountEmail: Text(
                    "Goheljayesh@gmail.com",
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://static.demilked.com/wp-content/uploads/2015/08/celebrity-actor-faces-combined-face-morph-pedro-berg-johnsen-thatnordicguy-6.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.policy,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
                ),
                onTap: () {},
              )
            ],
          ),
        ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's eat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Healthy Food",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              _searchItem(),
              SizedBox(height: 30,),
              _tabBarFood(),
              SizedBox(height: 30,),
              Text(
                "Popular Food",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              _popularFoodList(),

              SizedBox(height: 20,),
              // Text(
              //   "News Food",
              //   style: TextStyle(
              //     color: Colors.black87,
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}

  Widget _searchItem() {
    return Builder(
      builder: (context) {
        return Container(

          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white54),
            borderRadius: BorderRadius.circular(6)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.search, size: 20, ),
                SizedBox(width: 5,),
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search food',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _tabBarFood() {
    return TabBar(
      labelPadding: EdgeInsets.all(3.0),
      isScrollable: true,
      unselectedLabelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.deepOrange[400]
      ),
      tabs: [
        _tabFood(text: 'Pizza', icon: Image.asset('assets/img/pizza.png')),
        _tabFood(text: 'Hamburger', icon: Image.asset('assets/img/burger.png')),
        _tabFood(text: 'Salad', icon: Image.asset('assets/img/salad.png'))
      ]
    );
  }

  Tab _tabFood({String? text, Widget? icon}){
    return Tab(

      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.deepOrange, width: 1)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // icon: icon,
              icon!,
              SizedBox(width: 8,),
              Text(text!),
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularFoodList() {
    return Builder(
      builder:(context) {
        return Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foodList[0]['pizza'].length,
                itemBuilder: (context, index) {
                  var x = foodList[0]['pizza'][index];
                  return FoodItem(foodItem: x,);
                }
              ),
              //page2
              Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList[1]['hamburger'].length,
                  itemBuilder: (context, index) {
                    var x = foodList[1]['hamburger'][index];
                    return FoodItem(foodItem: x,);
                  }
                )
              ),
              Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList[2]['salad'].length,
                  itemBuilder: (context, index) {
                    var x = foodList[2]['salad'][index];
                    return FoodItem(foodItem: x,);
                  }
                )
              ),
            ],
          ),
        );
      }
    );
  }



}
