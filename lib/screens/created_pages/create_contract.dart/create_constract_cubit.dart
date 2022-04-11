import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:i_bilding/model/data.dart';
part 'create_constract_state.dart';

class CreateConstractCubit extends Cubit<CreateConstractState> {
  CreateConstractCubit() : super(const CreateConstractInitial());
  TextEditingController fishController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController innController = TextEditingController();
  List faceValue = [true, false];
  List<bool> statusValue = [true, false, false, false];
  String faceVal = "Physical";
  String statusVal = "Paid";

  bool visibilteStatus = false;
  bool visibilteFace = false;

  turnFace() {
    visibilteFace = !visibilteFace;
    if (visibilteStatus) visibilteStatus = false;

    emit(VidibiliteFaceState());
  }

  turnStatus() {
    visibilteStatus = !visibilteStatus;
    if (visibilteFace) visibilteFace = false;
    emit(VidibiliteStatusState());
  }

  changeStatus(int v) {
    statusValue.clear();
    statusVal = MyData.itemsStatus[v];
    statusValue = List.generate(4, (index) => v == index ? true : false);
    visibilteStatus = false;
    emit(StatusValueState());
  }

  changeFace(int v) {
    faceValue.clear();
    faceVal = MyData.itemsFace[v];
    faceValue = List.generate(2, (index) => v == index ? true : false);
    visibilteFace = false;
    emit(FaceValueState());
  }
}
