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
    id: 3,
    instructor: "Alejandra Solis",
    completedPercentage: .0,
    name: "Photoshop",
    thumbnail: "assets/images/icons/photoshop.png",
  ),
];
