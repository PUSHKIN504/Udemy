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
    id: 2,
    instructor: "Madian Reyes",
    completedPercentage: .0,
    name: "MS Word 2019",
    thumbnail: "assets/images/icons/ms_word.png",
  ),
];
