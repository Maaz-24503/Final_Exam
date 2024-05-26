import 'package:appdev_final_exam/repositories/test_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_provider.g.dart';

@riverpod
Future<List<String>> test(TestRef ref){
  return TestService().getTest();
}

class TestService{
  TestService._internal(); // Private constructor for singleton behavior

  static final TestService _instance =
      TestService._internal(); // Singleton instance

  factory TestService() {
    return _instance;
  }
  final TestRepo _authRepo = TestRepo();

  Future<List<String>> getTest()async{
    return await _authRepo.getTestFromFirebase();
  }
}

//dart run build_runner watch  (command to generate file)