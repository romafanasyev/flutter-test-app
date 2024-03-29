import 'package:cat_test_application/src/models/cat_model.dart';
import 'package:cat_test_application/src/ui/components/heart_button.dart';
import 'package:flutter/material.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CatItemModel item = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Hero(
                tag: item.imageUrl,
                child: Image.network(item.imageUrl, fit: BoxFit.cover),
              ),
              HeartButton(item),
              Text(item.fact),
            ],
          ),
        )
      )
    );
  }
}
