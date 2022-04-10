import 'package:bloc/bloc.dart';
import 'package:i_bilding/screens/created_pages/create_contract.dart/create_constrac.dart';
import 'package:i_bilding/screens/created_pages/created_invoice/created_invoice.dart';
import 'package:meta/meta.dart';

part 'new_state.dart';

class NewCubit extends Cubit<NewState> {
  NewCubit() : super(NewInitial());
  List createPage = const [CreateContract(), CreateInvoice()];
  int? currentIndex = 0;

  changeScaffold(int index) {
    currentIndex = index;
    emit(ChangePageState());
  }
}
