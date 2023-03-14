import 'package:flutter/material.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}



  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
