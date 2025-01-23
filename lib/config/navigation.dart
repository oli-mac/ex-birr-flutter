import 'package:bloc/bloc.dart';
import 'package:ex_birr/screens/converter/coverter_Screen.dart';
import 'package:ex_birr/screens/exchange/exchange_screen.dart';
import 'package:ex_birr/screens/home/home_screen.dart';
import 'package:ex_birr/screens/setting/setting_screen.dart';

import '../screens/analytics/analytics_screen.dart';

enum NavigationEvents {
  HomeScreenClickedEvent,
  ExchangeScreenClickedEvent,
  CoverterScreenClickedEvent,
  AnalyticsScreenClickedEvent,
  SettingScreenClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(HomeScreen()) {
    // Registering event handlers with the new `on` API
    on<NavigationEvents>((event, emit) {
      switch (event) {
        case NavigationEvents.HomeScreenClickedEvent:
          emit(HomeScreen());
          break;
        case NavigationEvents.ExchangeScreenClickedEvent:
          emit(ExchangeScreen());
          break;
        case NavigationEvents.CoverterScreenClickedEvent:
          emit(CoverterScreen());
          break;
        case NavigationEvents.AnalyticsScreenClickedEvent:
          emit(AnalyticsScreen());
          break;
        case NavigationEvents.SettingScreenClickedEvent:
          emit(SettingScreen());
          break;
      }
    });
  }
}
