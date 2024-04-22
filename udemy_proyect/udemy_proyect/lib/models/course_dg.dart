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
    instructor: "Alejandra Solis",
    completedPercentage: .75,
    name: "Photoshop",
    thumbnail: "assets/images/icons/flutter.jpg",
  ),
];
