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
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/laptop.jpg',
  ),
  Category(
    name: 'Ofimatica',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/accounting.jpg',
  ),
  Category(
    name: 'Diseño grafico',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/photography.jpg',
  ),
  Category(
    name: 'Finanzas',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/design.jpg',
  ),
];
