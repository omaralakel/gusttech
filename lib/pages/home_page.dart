import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:win/helpers.dart';
import 'package:win/theme.dart';
import 'package:win/widgets/avatar.dart';
import '../models/instructors.dart';
import 'package:faker/faker.dart';

import '../widgets/appbar_widget.dart';

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }






class HomePage extends StatelessWidget {
  Widget _showScreen(BuildContext context, Instructors instructors) {

    return Scaffold(
      // appBar: AppBar(
      //   leading: const BackButton(),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      // body: ListView(
      //   physics: const BouncingScrollPhysics(),
      //   children: [
      //     Image.asset(_Instructors[index].imageUrl),
      //     Center(child: Avatar.large(url: Instructors[index].imageUrl,)),

      //   const SizedBox(height: 24,),
      //   Column(children: [
      //     Text(_Instructors[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
      //     const SizedBox(height: 4,),
      //     Text(_Instructors[index].field, style: TextStyle(fontSize: 16, color: Colors.grey),),
      //     const SizedBox(height: 4,),
      //     Text(_Instructors[index].language, style: TextStyle(fontSize: 16, color: Colors.grey),),
      //     const SizedBox(height: 30,),


      //     IntrinsicHeight(
      //       child: Row(children: [
      //         buildButton(context, _Instructors[index].rating, "Rating"),
      //         buildDivider(),
      //         const Icon(CupertinoIcons.bubble_left_bubble_right_fill,),
      //         buildDivider(),
      //         buildButton(context, "${_Instructors[index].price}\$", "Per/Minute"),
      //       ],),
      //     )

      //     SizedBox(height: 40,),
      //     buildAbout(instructors),


      //   ],)
      //   ],
      // ),
    );
  }


  // Widget buildAbout(Instructors instructors) => Container(
  //   padding: EdgeInsets.symmetric(horizontal: 48),
  //   child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Text("About", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
  //       const SizedBox(height: 16,),
  //       Text(
  //         _Instructors[index].description,
  //         style: const TextStyle(fontSize: 16, height: 1.4),
  //       )
  //     ],
  //   ),
  // );


  Widget buildDivider() => Container(height: 24,child: VerticalDivider());

  Widget buildButton(BuildContext context, String value, String text) =>
  MaterialButton(
    padding: EdgeInsets.symmetric(vertical: 4),
    onPressed: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          SizedBox(height: 2,),
          Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    ),
    );

  Widget _listItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => _showScreen(context, _Instructors[index])
      ),
      child: Column(
        children: [
          Row(
            children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [Avatar.large(url: _Instructors[index].imageUrl),
                      Padding(padding: EdgeInsets.only(right: 50)),
                      Padding(padding: EdgeInsets.only(bottom: 30))
    
                      ]
                      ),
    
                      SizedBox(width: 10,),
    
                  
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Text("Name: ${_Instructors[index].name}",
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height:10),
                      const Padding(padding: EdgeInsets.only(left: 70)),
                        Text("Field: ${_Instructors[index].field}"),
                      const SizedBox(height:10),
                      const Padding(padding: EdgeInsets.only(left: 70)),
                        Text("Language: ${_Instructors[index].language}"),
                      const SizedBox(height:10),
                      const Padding(padding: EdgeInsets.only(left: 70)),
                        Text("Price: ${_Instructors[index].price}"),
                    ],
                  ),
                ],
              ),
            ]
          ),
          buildDivider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      children: [
        FilterButton(),
        SizedBox(height: 30,),
        ListView.builder(
        shrinkWrap: true,
        itemCount: _Instructors.length,
        itemExtent: 160,
        itemBuilder: _listItemBuilder,
        ),
      ]
    );
  }
}







class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child: TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const FilterPage(); })), child: const Text("Filter", style: TextStyle(fontSize: 20),),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(AppColors.secondary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: AppColors.secondary),
            )
          )
        ),
        ),
      ),
    );
  }
}

































class Instructors {
  const Instructors({required this.email, required this.name, required this.description, required this.imageUrl, required this.field, required this.price, required this.language, required this.rating});
  final String name;
  final String description;
  final String imageUrl;
  final String field;
  final double price;
  final double rating;
  final String language;
  final String email;
}


final List<Instructors> _Instructors = <Instructors> [
   Instructors(
    name: "Ahmed Orabo",
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 0.50,
    language: "English",
    rating: 4,
    email: faker.internet.email(), 
  ),



  Instructors(
    name: "Mohammad Darwish",
    description: "Hello Iam Mohammad Darwish",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Accountatnt",
    price: 1.50,
    language: "Arabic",
    rating: 4,
    email: faker.internet.email(), 
  ),



  Instructors(
    name: "Arvid Meno",
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 2,
    language: "English",
    rating: 4, 
    email: faker.internet.email(), 

  ),



  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 2,
    language: "English",
    rating: 3.2, 
    email: faker.internet.email(), 

  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4.7,
    email: faker.internet.email(), 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 0.50,
    language: "English",
    rating: 5,
    email: faker.internet.email(),
  ),



  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1.9,
    language: "English",
    rating: 7, 
    email: faker.internet.email(), 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4, 
    email: faker.internet.email(), 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello I'm an Accountant",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4, 
    email: faker.internet.email(), 

  ),
];















// class ListInstuctors extends StatelessWidget {
//   const ListInstuctors({ Key? key }) : super(key: key);

//   Widget _listItemBuilder(BuildContext context, int index) {
//     return Text(_Instructors[index].name,
//     style: Theme.of(context).textTheme.bodyText2,
//     );
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(
        
//         itemCount: _Instructors.length,
//         itemExtent: 60,
//         itemBuilder: (_listItemBuilder),
//         ),
//     );
//   }
// }































































class FilterPage extends StatelessWidget {
  const FilterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter the Instructors"),),
      body: ListView(
        shrinkWrap: true,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text("Field", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
          Field(),
          SizedBox(height: 26,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text("Price", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
            Price(),
           const SizedBox(height: 26,),
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text("Language", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
            Language(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(onPressed:() {}, child: Text("Apply"), style: ElevatedButton.styleFrom(primary: AppColors.secondary, padding: EdgeInsets.symmetric(horizontal: 160)),
            ),
            )],
      ),
    );
  }
}





class NotificationSetting {
  String title;
  bool value;
  NotificationSetting({required this.title,this.value = false});
}



class Field extends StatefulWidget {
  const Field({ Key? key }) : super(key: key);

  @override
  State<Field> createState() => _Field();
}

class _Field extends State<Field> {

  final notifications = [
    NotificationSetting(title: "Designer",),
    NotificationSetting(title: "Video Editor",),
    NotificationSetting(title: "Web Programmer",),
    NotificationSetting(title: "Apps Developer",),
    NotificationSetting(title: "Counsel",),
    NotificationSetting(title: "Nutrition Consultant",),
    NotificationSetting(title: "Chemistry Teacher",),
    NotificationSetting(title: "Physics Teacher",),
    NotificationSetting(title: "Biology Teacher",),
    NotificationSetting(title: "Geology Teacher",),
    NotificationSetting(title: "Computer Engineer",),
    NotificationSetting(title: "Comuter Scientist",),
    NotificationSetting(title: "Accountatnt",),
    NotificationSetting(title: "Marketer 'Marketing'",),
    NotificationSetting(title: "3d Designer",),
    NotificationSetting(title: "Arabic Teacher",),
    NotificationSetting(title: "English Teacher",),
    NotificationSetting(title: "Chinease Teacher",),
    NotificationSetting(title: "Swedish Teacher",),
    NotificationSetting(title: "Spanish Teacher",),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: [
          ...notifications.map((buildSingleCheckBox)).toList(),
        ],
      );
  }



Widget buildSingleCheckBox(NotificationSetting notification) => buildCheckBox(
    notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;
  });});
  
 Widget buildCheckBox({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) => ListTile(
    onTap: onClicked, 
    leading: Checkbox(value: notification.value, onChanged: (value) => onClicked(), 
    
    ),
    title: Text(notification.title, style: TextStyle(fontSize: 18,),),
  );
}





















class NotificationSetting1 {
  String title;
  bool value;
  NotificationSetting1({required this.title,this.value = false});
}



class Price extends StatefulWidget {
  const Price({ Key? key }) : super(key: key);

  @override
  State<Price> createState() => _Price();
}

class _Price extends State<Price> {

  final notifications1 = [
    NotificationSetting1(title: "Free",),
    NotificationSetting1(title: "Paid",),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: [
          ...notifications1.map((buildSingleCheckBox1)).toList(),
        ],
      );
  }



Widget buildSingleCheckBox1(NotificationSetting notification) => buildCheckBox1(
    notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;
  });});
  
 Widget buildCheckBox1({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) => ListTile(
    onTap: onClicked, 
    leading: Checkbox(value: notification.value, onChanged: (value) => onClicked(), 
    
    ),
    title: Text(notification.title, style: TextStyle(fontSize: 18,),),
  );
}






















class NotificationSetting2 {
  String title;
  bool value;
  NotificationSetting2({required this.title,this.value = false});
}



class Language extends StatefulWidget {
  const Language({ Key? key }) : super(key: key);

  @override
  State<Language> createState() => _Language();
}

class _Language extends State<Language> {

  final notifications = [
    NotificationSetting2(title: "English",),
    NotificationSetting2(title: "Arabic",),
    NotificationSetting2(title: "Spanish",),
    NotificationSetting2(title: "Chineese",),
    NotificationSetting2(title: "Germany",),
    NotificationSetting2(title: "Swedish",),
    NotificationSetting2(title: "Chemistry Teacher",),
    NotificationSetting2(title: "Physics Teacher",),
    NotificationSetting2(title: "Biology Teacher",),
    NotificationSetting2(title: "Geology Teacher",),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: [
          ...notifications.map((buildSingleCheckBox)).toList(),
        ],
      );
  }



Widget buildSingleCheckBox(NotificationSetting notification) => buildCheckBox(
    notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;
  });});
  
 Widget buildCheckBox({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) => ListTile(
    onTap: onClicked, 
    leading: Checkbox(value: notification.value, onChanged: (value) => onClicked(), 
    
    ),
    title: Text(notification.title, style: TextStyle(fontSize: 18,),),
  );
}
















      // body: ListView(
      //   padding: EdgeInsets.all(12),
      //   children: [
      //     Text("Field", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Designer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Video Editor"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Apps Developer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Counsel"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Nutrition Consultant"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Chemistry Teacher"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Physics Teacher"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Biology Teacher"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Geology Teacher"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Computer Engineer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Comuter Scientist"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Accountatnt"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Marketer ""Marketing"""), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),
      //     CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text("Web Programmer"), value: value, activeColor: AppColors.secondary, onChanged: (value) => setState(() => this.value = value!,)),

          
      //   ],
      // ),