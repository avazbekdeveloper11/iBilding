import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/screens/contact_page/contact_view.dart';
import 'package:i_bilding/screens/history_page/history_page.dart';
import 'package:i_bilding/screens/profile_page/profile_view.dart';
import 'package:i_bilding/screens/saved_page/saved_view.dart';
part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  int currentIndex = 0;
  // PAGES...
  List pages = [];
  BottomnavbarCubit() : super(const BottomnavbarInitial()) {
    pages.addAll(
      const [
        ContractstView(),
        HistoryPage(),
        ContractstView(),
        SavedView(),
        ProfileView()
      ],
    );
  }
  // BottomNavigationBarItem...
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.contracts),
      activeIcon: SvgPicture.asset(
        Constant.contracts,
        color: Colors.white,
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.history),
      activeIcon: SvgPicture.asset(
        Constant.history,
        color: Colors.white,
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.neww),
      activeIcon: SvgPicture.asset(
        Constant.neww,
        color: Colors.white,
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.saved),
      activeIcon: SvgPicture.asset(
        Constant.saved,
        color: Colors.white,
      ),
    ),
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.profile),
      activeIcon: SvgPicture.asset(
        Constant.profile,
        color: Colors.white,
      ),
    ),
  ];

  // CHANGE CURRENT INDEX BOTTOMNAVIGATIONVAR...
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
