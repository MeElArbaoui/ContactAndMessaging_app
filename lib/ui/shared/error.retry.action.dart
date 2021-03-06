import 'package:flutter/material.dart';


class ErrorRetryMessage extends StatelessWidget {
  String errorMsg;
  Function onAction;
  ErrorRetryMessage({this.errorMsg,this.onAction});
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${errorMsg}"),
        RaisedButton(
          onPressed: onAction,
        child: Text('Retry',
            style: TextStyle(color: Colors.black),),
          color: Color.fromRGBO(255,61,0,4),
        )
      ],
    );
  }
}
