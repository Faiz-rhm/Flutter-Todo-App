
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Todo.freezed.dart';
part 'Todo.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required String name,
    required bool checked,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
