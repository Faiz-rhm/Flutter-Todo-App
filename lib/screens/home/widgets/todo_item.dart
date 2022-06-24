

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/model/Todo.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo todo) onTodoChanged;
  final Function(Todo todo) onTodoRemove;
  const TodoItem({Key? key, required this.todo, required this.onTodoChanged, required this.onTodoRemove,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Slidable(
      enabled: true,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            onPressed: onTodoRemove(todo),
            backgroundColor: ColorConstants.homeScaffoldBackgroundColor,
            label: 'Remove',
          ),
        ],
      ),
      child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
          ),
          child: InkWell(
            onTap: onTodoChanged(todo),
            child: Row(
            children: [
              todo.checked
              ? Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
                child: const Icon(Icons.check, color: Colors.white,),)
              : Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorConstants.lineColorTwo)
                ),
              ),
              const SizedBox(width: 20,),
              Text(todo.name,
                style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.textColor
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
