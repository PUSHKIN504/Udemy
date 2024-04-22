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
    thumbnail: 'assets/icons/laptop.jpg',
  ),
  Category(
    name: 'Informatica',
    noOfCourses: 20,
    thumbnail: 'assets/icons/accounting.jpg',
  ),
  Category(
    name: 'Diseño grafico',
    noOfCourses: 16,
    thumbnail: 'assets/icons/photography.jpg',
  ),
  Category(
    name: 'Finanzas',
    noOfCourses: 25,
    thumbnail: 'assets/icons/design.jpg',
  ),
];
