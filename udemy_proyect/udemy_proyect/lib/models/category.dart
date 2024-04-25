class Category {
  // ignore: non_constant_identifier_names
  int cat_Id;
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    // ignore: non_constant_identifier_names
    required this.cat_Id,
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    cat_Id: 1,
    name: 'Programacion',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/laptop.jpg',
  ),
  Category(
    cat_Id: 2,
    name: 'Ofimatica',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/accounting.jpg',
  ),
  Category(
    cat_Id: 3,
    name: 'Diseño grafico',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/photography.jpg',
  ),
  Category(
    cat_Id: 4,
    name: 'Finanzas',
    noOfCourses: 1,
    thumbnail: 'assets/images/icons/design.jpg',
  ),
];
