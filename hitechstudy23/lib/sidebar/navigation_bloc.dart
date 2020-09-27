import 'package:bloc/bloc.dart';

import 'package:hitechstudy23/AdminPage.dart';

enum NavigationEvents {
  Share,
 HowItWorks,
  Help,
  Privacy,
  Rules,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => AdminPage();  // this page will be shown when nothing is clicked

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
//    switch (event) {
////      case NavigationEvents.HomePageClickedEvent:
////        yield AccountMain();
////        break;
////      case NavigationEvents.Share:
////        yield Share();
////        break;
////      case NavigationEvents.HowItWorks:
////        yield HowItWorks();
////        break;
////      case NavigationEvents.Help:
////        yield Help();
////        break;
////      case NavigationEvents.Privacy:
////        yield Privacy();
////        break;
////      case NavigationEvents.Rules:
////        yield Rules();
////        break;
////      case NavigationEvents.MyOrdersClickedEvent:
////        yield Demo();
////        break;
//    }
  }
}