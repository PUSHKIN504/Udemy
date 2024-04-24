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
    id: 1,
    instructor: "Madian Reyes",
    completedPercentage: .0,
    name: "Java",
    thumbnail: "assets/images/icons/java.jpg",
  ),
];
