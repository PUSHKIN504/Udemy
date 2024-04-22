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
    instructor: "Madian Reyes",
    completedPercentage: .75,
    name: "MS Word 2019",
    thumbnail: "assets/images/icons/flutter.jpg",
  ),
];
