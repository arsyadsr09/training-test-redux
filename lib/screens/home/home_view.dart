import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_test3/redux/app_state.dart';
import 'package:project_test3/redux/modules/main_state.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StoreConnector<AppState, MainState>(
                converter: (store) => store.state.mainState,
                builder: (context, state) {
                  return Column(
                    children: state.data!.map((e) => Text(e)).toList(),
                  );
                }),

            ElevatedButton(
              child: Text(
                'insert',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: onClickInsert,
            ),
            ...name.map((e) => Text("$e")).toList(),
            ElevatedButton(
              child: Text('query', style: TextStyle(fontSize: 20),),
              onPressed: onClickQuery,
            ),
            // ElevatedButton(
            //   child: Text('update', style: TextStyle(fontSize: 20),),
            //   onPressed: update,
            // ),
            // ElevatedButton(
            //   child: Text('delete', style: TextStyle(fontSize: 20),),
            //   onPressed: delete,
            // ),
          ],
        ),
      ),
    );
  }
}
