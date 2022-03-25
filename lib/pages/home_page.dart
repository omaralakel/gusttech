import 'package:flutter/material.dart';
import 'package:win/helpers.dart';
import 'package:win/theme.dart';
import '../models/instructors.dart';
import 'package:faker/faker.dart';






class Instructors {
  const Instructors({required this.name, required this.description, required this.imageUrl, required this.field, required this.price, required this.language, required this.rating});
  final String name;
  final String description;
  final String imageUrl;
  final String field;
  final double price;
  final double rating;
  final String language;
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
  ),



  Instructors(
    name: "Mohammad Darwish",
    description: "Hello Iam Mohammad Darwish",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Accountatnt",
    price: 1.50,
    language: "Arabic",
    rating: 4, 
  ),



  Instructors(
    name: "Arvid Meno",
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 2,
    language: "English",
    rating: 4, 
  ),



  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 2,
    language: "English",
    rating: 3.2, 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4.7, 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 0.50,
    language: "English",
    rating: 5, 
  ),



  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1.9,
    language: "English",
    rating: 7, 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello Iam Orabo",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4, 
  ),


  Instructors(
    name: faker.person.name(),
    description: "Hello I'm an Accountant",
    imageUrl: Helpers.randomPictureUrl(),
    field: "Web Programmer",
    price: 1,
    language: "English",
    rating: 4, 
  ),
];














class HomePage extends StatelessWidget {

    Widget _listItemBuilder(BuildContext context, int index) {
    return Text(_Instructors[index].name,
    style: Theme.of(context).textTheme.bodyText2,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      body: Container(
        child: Column(
          children: [ 

          Padding(padding: EdgeInsets.only(top: 30),),
          Center(
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







      ListView.builder(
        
        itemCount: _Instructors.length,
        itemExtent: 60,
        itemBuilder: (_listItemBuilder),
        ),






          ],
        ),
      ),
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
        child: TextButton(onPressed: () {}, child: Text("Filter", style: TextStyle(fontSize: 20),),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(AppColors.secondary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: AppColors.secondary),
            )
          )
        ),
        ),
      ),
    );
  }
}

































// class Instructors {
//   const Instructors({required this.name, required this.description, required this.imageUrl, required this.field, required this.price, required this.language, required this.rating});
//   final String name;
//   final String description;
//   final String imageUrl;
//   final String field;
//   final double price;
//   final double rating;
//   final String language;
// }


// final List<Instructors> _Instructors = <Instructors> [
//    Instructors(
//     name: "Ahmed Orabo",
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 0.50,
//     language: "English",
//     rating: 4, 
//   ),



//   Instructors(
//     name: "Mohammad Darwish",
//     description: "Hello Iam Mohammad Darwish",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Accountatnt",
//     price: 1.50,
//     language: "Arabic",
//     rating: 4, 
//   ),



//   Instructors(
//     name: "Arvid Meno",
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 2,
//     language: "English",
//     rating: 4, 
//   ),



//   Instructors(
//     name: faker.person.name(),
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 2,
//     language: "English",
//     rating: 3.2, 
//   ),


//   Instructors(
//     name: faker.person.name(),
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 1,
//     language: "English",
//     rating: 4.7, 
//   ),


//   Instructors(
//     name: faker.person.name(),
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 0.50,
//     language: "English",
//     rating: 5, 
//   ),



//   Instructors(
//     name: faker.person.name(),
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 1.9,
//     language: "English",
//     rating: 7, 
//   ),


//   Instructors(
//     name: faker.person.name(),
//     description: "Hello Iam Orabo",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 1,
//     language: "English",
//     rating: 4, 
//   ),


//   Instructors(
//     name: faker.person.name(),
//     description: "Hello I'm an Accountant",
//     imageUrl: Helpers.randomPictureUrl(),
//     field: "Web Programmer",
//     price: 1,
//     language: "English",
//     rating: 4, 
//   ),
// ];















class ListInstuctors extends StatelessWidget {
  const ListInstuctors({ Key? key }) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Text(_Instructors[index].name,
    style: Theme.of(context).textTheme.bodyText2,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        
        itemCount: _Instructors.length,
        itemExtent: 60,
        itemBuilder: (_listItemBuilder),
        ),
    );
  }
}
























































