import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/widgets/navigation_bar/bottomnavbar_cubit.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

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
          backgroundColor: ConstColor.darkes,
          currentIndex: context.watch<BottomnavbarCubit>().currentIndex,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          // ITEMS...
          items: context.watch<BottomnavbarCubit>().items,
          // ON TAP...
          onTap: (int index) {
            BlocProvider.of<BottomnavbarCubit>(context)
                .changeIndex(index, context);
          },
        ),
      ),
    );
  }
}
