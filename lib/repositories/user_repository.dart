import 'package:training2/model/user_model.dart';
import 'package:training2/service/api_services.dart';

class UserRepository {
  final ApiServices apiService;

  UserRepository(this.apiService);
  Future<List<User>> getUsers()=>apiService.fetchUsers();
  Future<void> getXmlData()=>apiService.fetchAndParseXml();
}