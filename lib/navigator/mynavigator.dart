

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/screens/home.dart';
import 'animationsNavigate.dart';
import 'items.dart';


class MyNavigator extends StatelessWidget 
{
  final materialApp = MaterialApp
  	(
		  debugShowCheckedModeBanner: false,
		  initialRoute: Items.home,

		  routes: <String, WidgetBuilder>
		  {
			Items.home: (BuildContext context) => Home(),
		  },
      onGenerateRoute: (settingsRoot) 
      {
        
        final argumentsRoote = settingsRoot.arguments;
        
        switch (settingsRoot.name)
        {
          case Items.home:
          return AnimationsNavigate().updown(Home());
          break;

        }
      }
    );
    
      @override
      Widget build(BuildContext context) {
        return materialApp;
      } 
}



