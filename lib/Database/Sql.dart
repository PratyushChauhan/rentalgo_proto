import 'package:mysql1/mysql1.dart';

class Sql {
  static String host = "10.12.48.213",
      userName = "root",
      password = "Timetocode12345",
      database = "project";
  static int port = 3306;
  Sql();
  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host,
        port: port,
        user: userName,
        password: password,
        db: database);
    return await MySqlConnection.connect(settings);
  }
}
//check weather username and password in table signin
