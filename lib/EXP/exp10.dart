import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(NameApp());
}

class NameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => NameCubit(), child: NamePage());
  }
}

class NameCubit extends Cubit<String> {
  NameCubit() : super('');
  void changeName(String newName) => emit('Bienvenue $newName');
}

class NamePage extends StatelessWidget {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              children: [
                BlocBuilder<NameCubit, String>(
                  builder: (context, state) {
                    return Text('$state');
                  },
                ),
                TextField(
                    controller: myController,
                    decoration: InputDecoration(hintText: 'Nom')),
                ElevatedButton(
                  child: Text('Se connecter'),
                  onPressed: () {
                    context.read<NameCubit>().changeName(myController.text);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
