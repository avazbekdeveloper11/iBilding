part of 'new_cubit.dart';

@immutable
abstract class NewState {
  const NewState();
}

class NewInitial extends NewState {
  const NewInitial();
}

class ChangePageState extends NewState {
  const ChangePageState();
}
