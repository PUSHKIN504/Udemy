class Course {
  int id;
  String name;
  double completedPercentage;
  String instructor;
  String thumbnail;

  Course({
    required this.id,
    required this.instructor,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    id: 5,
    instructor: "Noemy Reyes",
    completedPercentage: .0,
    name: "Curso de Finanzas",
    thumbnail: "assets/images/icons/fin.jpg",
  ),
];
