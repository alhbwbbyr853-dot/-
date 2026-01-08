import 'package:flutter/material.dart';

import 'page.dart';
class drawer extends StatelessWidget {
  const drawer({super.key});

  buildListTile(context, txt, icon) {
    return ListTile(
      title: Text(txt),
      tileColor: Colors.white,
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page(),));
      },
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),);
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(decoration: BoxDecoration(color: Colors.red),

                    child: Column(
                      spacing: 11,
                      children: [
                        Expanded(
                          flex: 2,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/h.jpg"),
                            radius: 50,),
                        ),
                        Expanded(child: Text("القائمة", style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),)
                        )
                      ],
                    )),
                buildListTile(context, "الرئيسية", Icons.home),
                buildListTile(context, "الفئات", Icons.category),
                buildListTile(context, "العروض", Icons.local_offer),
                buildListTile(context, "السلة", Icons.shopping_bag),
                buildListTile(context, "تسجيل الدخول", Icons.person),
                buildListTile(context, "قائمة مفضلاتي", Icons.favorite),
                buildListTile(context, "المتاجر", Icons.business),
                buildListTile(context, "العلامات التجارية", Icons.store),
                buildListTile(context, "خدمة العملاء", Icons.support_agent),
                buildListTile(context, "سياسة الخصوصية", Icons.policy),
                buildListTile(context, "حول ستورم", Icons.help),
                buildListTile(context, "مشاركة التطبيق ", Icons.share),
              ],
            ),

            width: MediaQuery.of(context).size.width/2,
          ),
          appBar: AppBar(title: Text("ستورم"),backgroundColor: Colors.white60,centerTitle: true,),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.red,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(

                    icon: IconButton(onPressed: ()=> print("Ook"),icon:Icon(Icons.home,color:Colors.red,)), label:"الرئيسية"),

                BottomNavigationBarItem(icon: IconButton(onPressed: ()=> print("Ook"),icon:Icon(Icons.category,color:Colors.red,)), label:"الفئات"),

                BottomNavigationBarItem(icon: IconButton(onPressed: ()=> print("Ook"),icon:Icon(Icons.local_offer,color:Colors.red,)), label:"العروض"),
                BottomNavigationBarItem(icon: IconButton(onPressed: ()=> print("Ook"),icon:Icon(Icons.shopping_cart_outlined,color:Colors.red,)), label:"السلة"),
                BottomNavigationBarItem(icon: IconButton(onPressed: ()=> print("Ook"),icon:Icon(Icons.perm_identity_rounded,color:Colors.red,)), label:"حسابي"),


              ])
      );
  }

}
