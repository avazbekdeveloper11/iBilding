import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/forum_decoration.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/title_and_leading.dart';
import 'package:i_bilding/model/data.dart';
import 'package:i_bilding/screens/created_pages/create_contract.dart/create_constract_cubit.dart';

class CreateContract extends StatelessWidget {
  const CreateContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateConstractCubit>(
      create: (context) => CreateConstractCubit(),
      child: BlocBuilder<CreateConstractCubit, CreateConstractState>(
        builder: (context, state) {
          return createContractScaffold(context);
        },
      ),
    );
  }

  Scaffold createContractScaffold(BuildContext context) {
    return Scaffold(
      appBar: LeadingAndTitleAppBar(title: "Contracts").build(context),
      body: Form(
        key: context.watch<CreateConstractCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Face",
              style: Constant.forumTitleStyle,
            ).op(top: 20, bottom: 6),
            InkWell(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        context
                            .watch<CreateConstractCubit>()
                            .faceVal
                            .toString(),
                        style: TextStyle(color: ConstColor.white)),
                    SvgPicture.asset(Constant.arrowDown),
                  ],
                ).sp(h: 10),
                height: getHeight(44),
                decoration: MyDeco.radiusColor(),
              ),
              onTap: () {
                context.read<CreateConstractCubit>().turnFace();
              },
            ),
            Visibility(
              visible: context.watch<CreateConstractCubit>().visibilteFace,
              child: Container(
                decoration: MyDeco.radiusAndColor(color: ConstColor.dark, r: 6),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(80),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, __) {
                          return InkWell(
                            onTap: () {
                              BlocProvider.of<CreateConstractCubit>(context)
                                  .changeFace(__);
                            },
                            child: SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    MyData.itemsFace[__],
                                    style: TextStyle(color: ConstColor.white),
                                  ),
                                  context
                                          .watch<CreateConstractCubit>()
                                          .faceValue[__]
                                      ? SvgPicture.asset(Constant.activRadio)
                                      : SvgPicture.asset(
                                          Constant.not_activ_radio)
                                ],
                              ).op(bottom: __ == 1 ? 0 : 20),
                            ),
                          );
                        },
                        itemCount: context
                            .watch<CreateConstractCubit>()
                            .faceValue
                            .length,
                      ),
                    ),
                  ],
                ).all(all: 20),
              ),
            ),
            Text(
              "Fisher’s full name",
              style: Constant.forumTitleStyle,
            ).op(top: 16, bottom: 6),
            SizedBox(
              height: getHeight(44),
              child: TextFormField(
                style: TextStyle(color: ConstColor.white),
                onChanged: (v) {
                  context.read<CreateConstractCubit>().showButton();
                },
                controller:
                    context.watch<CreateConstractCubit>().fishController,
                decoration: FormDeco.deco(),
              ),
            ),
            Text(
              "Address of the organization",
              style: Constant.forumTitleStyle,
            ).op(top: 16, bottom: 6),
            SizedBox(
              height: getHeight(44),
              child: TextFormField(
                style: TextStyle(color: ConstColor.white),
                onChanged: (v) {
                  context.read<CreateConstractCubit>().showButton();
                },
                controller:
                    context.watch<CreateConstractCubit>().adressController,
                decoration: FormDeco.deco(),
              ),
            ),
            Text("ИНН", style: Constant.forumTitleStyle).op(top: 16, bottom: 6),
            SizedBox(
              height: getHeight(44),
              child: TextFormField(
                style: TextStyle(color: ConstColor.white),
                onChanged: (v) {
                  context.read<CreateConstractCubit>().showButton();
                },
                controller: context.watch<CreateConstractCubit>().innController,
                decoration: FormDeco.deco(),
              ),
            ),
            Text("Status of the contract", style: Constant.forumTitleStyle)
                .op(top: 16, bottom: 6),
            InkWell(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context
                          .watch<CreateConstractCubit>()
                          .statusVal
                          .toString(),
                      style: TextStyle(
                        color: ConstColor.white,
                      ),
                    ),
                    SvgPicture.asset(Constant.arrowDown).op(right: 10),
                  ],
                ).sp(h: 10),
                height: getHeight(44),
                decoration: MyDeco.radiusColor(),
              ),
              onTap: () {
                context.read<CreateConstractCubit>().turnStatus();
              },
            ),
            Visibility(
              visible: context.watch<CreateConstractCubit>().visibilteStatus,
              child: Container(
                decoration: MyDeco.radiusAndColor(color: ConstColor.dark, r: 6),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(175),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, __) {
                          return InkWell(
                            onTap: () {
                              BlocProvider.of<CreateConstractCubit>(context)
                                  .changeStatus(__);
                            },
                            child: SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    MyData.itemsStatus[__],
                                    style: TextStyle(color: ConstColor.white),
                                  ),
                                  context
                                          .watch<CreateConstractCubit>()
                                          .statusValue[__]
                                      ? SvgPicture.asset(Constant.activRadio)
                                      : SvgPicture.asset(
                                          Constant.not_activ_radio)
                                ],
                              ).op(bottom: __ == 3 ? 0 : 17),
                            ),
                          );
                        },
                        itemCount: context
                            .watch<CreateConstractCubit>()
                            .statusValue
                            .length,
                      ),
                    ),
                  ],
                ).all(all: 20),
              ),
            ),
            Visibility(
              visible: context.watch<CreateConstractCubit>().isShow,
              child: InkWell(
                child: Container(
                  child: Center(
                    child: Text(
                      "Save contract",
                      style: TextStyle(color: ConstColor.white),
                    ),
                  ),
                  height: getHeight(44),
                  decoration:
                      MyDeco.radiusAndColor(color: ConstColor.lightGren, r: 6),
                ).op(top: 24),
                onTap: () {
                  
                },
              ),
            ),
          ],
        ).sp(h: 16),
      ),
    );
  }
}
