import 'package:flutter/material.dart';
import 'package:myasset_mobile/features/todo/domain/repository/todo_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myasset_mobile/features/todo/presentation/todo_cubit.dart';
import 'package:myasset_mobile/features/todo/presentation/todo_view.dart';

class TodoPage extends StatelessWidget {
  final TodoRepo todoRepo;

  const TodoPage({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(todoRepo),
      child: const TodoView(),
    );
  }
}
