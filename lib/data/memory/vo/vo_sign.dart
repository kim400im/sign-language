
class Sign{

  Sign({
    required this.id,
    required this.title,
    required this.date,
}): createdTime = DateTime.now();

  int id;
  String title;
  final DateTime createdTime;
  DateTime date;
}