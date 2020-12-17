import 'package:flutter/material.dart';

class DefaultButtonWidgetFirst extends StatelessWidget {
  final String textContent;

  // 1 way of declaring variables
  // We declare them inside of " { } " and then fill by names when we use it
  const DefaultButtonWidgetFirst({
    this.textContent,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width * 0.5,
      height: queryData.size.height * 0.25,
      child:FlatButton(
        onPressed: () {}, // Does nothing for now, but is required
        child: Text(
          "$textContent",
          style: TextStyle(
            fontSize: 16,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
class DefaultButtonWidgetSecond extends StatelessWidget {
  final String textContentSecond;

  // 1 way of declaring variables
  // We declare them inside of " { } " and then fill by names when we use it
  const DefaultButtonWidgetSecond({
    @required this.textContentSecond,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width * 0.5,
      height: queryData.size.height * 0.25,
      child:FlatButton(
        onPressed: () {}, // Does nothing for now, but is required
        child: Text(
          "$textContentSecond",
          style: TextStyle(
            fontSize: 16,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
class DefaultButtonWidgetThird extends StatelessWidget {
  final String textContentThird;

  // 1 way of declaring variables
  // We declare them inside of " { } " and then fill by names when we use it
  const DefaultButtonWidgetThird(this.textContentThird);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width * 0.5,
      height: queryData.size.height * 0.25,
      child:FlatButton(
        onPressed: () {}, // Does nothing for now, but is required
        child: Text(
          "$textContentThird",
          style: TextStyle(
            fontSize: 16,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
