class Course {
  String name;
  double completedPercentage;
  String instructor;
  String thumbnail;

  Course({
    required this.instructor,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    instructor: "Noemy Reyes",
    completedPercentage: .75,
    name: "Curso de Finanzas",
    thumbnail: "assets/images/icons/fin.jpg",
  ),
];
