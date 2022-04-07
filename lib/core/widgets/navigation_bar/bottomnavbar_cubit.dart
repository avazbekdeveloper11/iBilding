import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/screens/contact_page/contact_view.dart';
part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  // BottomNavigationBarItem...
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      label: '',
      icon: SvgPicture.asset(Constant.contact),
      activeIcon: SvgPicture.asset(
        Constant.contact,
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
  // PAGES...
  List pages = [];
  int currentIndex = 0;
  BottomnavbarCubit() : super(const BottomnavbarInitial()) {
    pages.addAll(
      const [
        ContractstView(),
        ContractstView(),
        ContractstView(),
        ContractstView(),
        ContractstView()
      ],
    );
  }

  // CHANGE CURRENT INDEX BOTTOMNAVIGATIONVAR...
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
