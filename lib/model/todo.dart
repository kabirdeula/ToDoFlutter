class ToDo {
  String id;
  String? text;
  bool isDone;

  ToDo({
    required this.id,
    required this.text,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', text: 'Morning Exercise', isDone: true ),
      ToDo(id: '02', text: 'Buy Groceries', isDone: true ),
      ToDo(id: '03', text: 'Check Emails', ),
      ToDo(id: '04', text: 'Team Meeting', ),
      ToDo(id: '05', text: 'Work on mobile apps for 2 hour', ),
      ToDo(id: '06', text: 'Dinner with Jenny', ),
    ];
  }
}