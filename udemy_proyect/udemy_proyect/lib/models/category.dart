class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Programacion',
    noOfCourses: 55,
    thumbnail: 'assets/images/icons/laptop.jpg',
  ),
  Category(
    name: 'Ofimatica',
    noOfCourses: 20,
    thumbnail: 'assets/images/icons/accounting.jpg',
  ),
  Category(
    name: 'Diseño grafico',
    noOfCourses: 16,
    thumbnail: 'assets/images/icons/photography.jpg',
  ),
  Category(
    name: 'Finanzas',
    noOfCourses: 25,
    thumbnail: 'assets/images/icons/design.jpg',
  ),
];
