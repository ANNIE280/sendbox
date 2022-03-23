import 'package:flutter/material.dart';

pushResult(BuildContext context, Widget item) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => item));
}
