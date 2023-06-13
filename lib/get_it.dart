import 'package:budgetappproject/Services/firebase_auth_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator
      .registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
}
