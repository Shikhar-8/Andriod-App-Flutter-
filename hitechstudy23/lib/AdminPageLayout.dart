import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import './sidebar/navigation_bloc.dart';
import './AdminPage.dart';
import './sidebar/sidebar.dart';
// we have used the concept of stack yaha par home page hai and uske upar drawer build hai
class AdminPageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
            SideDrawer(),
          ],
        ),
      ),
    );
  }
}