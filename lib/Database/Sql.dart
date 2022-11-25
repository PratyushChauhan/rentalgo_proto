import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> connect(
    {String localhost,
    int port,
    String userName,
    String password,
    String database}) async {
  var settings = new ConnectionSettings(
      host: localhost,
      port: port,
      user: userName,
      password: password,
      db: database);
  var conn = await MySqlConnection.connect(settings);
  return conn;
}
