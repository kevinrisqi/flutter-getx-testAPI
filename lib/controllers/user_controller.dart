import 'package:get/get.dart';
import 'package:tes/models/user_model.dart';
import 'package:tes/services/user_service.dart';

class UserController extends GetxController {
  UserModel? users;

  Future<void> getUsers() async {
    users = await UserService().FetchUser();

    print(users?.data?[0].firstName);
  }

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }
}
