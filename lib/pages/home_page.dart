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
      appBar: AppBar(
        leading: BackButton(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [],
      ),
    );
  }

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
        child: TextButton(onPressed: () {}, child: const Text("Filter", style: TextStyle(fontSize: 20),),
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
























































