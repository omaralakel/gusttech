import 'package:win/helpers.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

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