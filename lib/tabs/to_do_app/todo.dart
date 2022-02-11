class ToDo {
  final String title;
  final String context;
  final String id;
  final double importance;
  final DateTime date;
  ToDo({
    required this.title,
    required this.context,
    required this.id,
    required this.importance,
    required this.date,
  });
}

List<ToDo> toDoList= [];