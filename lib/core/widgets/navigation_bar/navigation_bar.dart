import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_bilding/core/widgets/navigation_bar/bottomnavbar_cubit.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomnavbarCubit>(
      create: (context) => BottomnavbarCubit(),
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          return BottomNavBarScaffold(context);
        },
      ),
    );
  }

  Scaffold BottomNavBarScaffold(BuildContext context) {
    return Scaffold(
      body: context
          .watch<BottomnavbarCubit>()
          .pages[context.watch<BottomnavbarCubit>().currentIndex],
      bottomNavigationBar: Theme(
        // THEME...
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        // BOTTOM NAVIGATION BAR...
        child: BottomNavigationBar(
          currentIndex: context.watch<BottomnavbarCubit>().currentIndex,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          // ITEMS...
          items: context.watch<BottomnavbarCubit>().items,
          // ON TAP...
          onTap: (int index) {
            BlocProvider.of<BottomnavbarCubit>(context).changeIndex(index);
          },
        ),
      ),
    );
  }
}
