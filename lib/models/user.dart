class User {
  final String name;
  final String email;
  final String? empId;
  final String? postition;
  final String id;

  User({required this.name, required this.email, this.empId, this.postition, required this.id});
}