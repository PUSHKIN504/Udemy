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
    completedPercentage: .60,
    name: "Java",
    thumbnail: "assets/images/icons/java.jpg",
  ),
];
