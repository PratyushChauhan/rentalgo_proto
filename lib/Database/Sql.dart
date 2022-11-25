import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> connect(
    {String host,
    int port,
    String userName,
    String password,
    String database}) async {
  var settings = new ConnectionSettings(
      host: host, port: port, user: userName, password: password, db: database);
  var conn = await MySqlConnection.connect(settings);
  return conn;
}

//add user to table
Future<void> addUser(MySqlConnection conn,
    {String Name,
    String Email,
    String Mobile,
    String Username,
    Password}) async {
  try {
    var result = await conn.query(
        'insert into Signin (Name,Email,Mobile,Username,Password) values (?, ?, ?, ?, ?)',
        [Name, Email, Mobile, Username, Password]);
  } on Exception catch (e) {
    // TODO
    print(e);
  }
}

// check if given username and password is in table
Future<bool> isUserInTable(MySqlConnection conn,
    {String userName, String password}) async {
  try {
    var result = await conn.query(
        'select * from Signin where userName = ? and password = ?',
        [userName, password]);
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } on Exception catch (e) {
    // TODO
    print(e);
    return false;
  }
}

//get car data from database
Future<List> getCarData(MySqlConnection conn, String model) async {
  var results = await conn.query('select * from car where model = ?', [model]);
  return results.toList();
}

// book a car available in database
Future<void> bookCar(MySqlConnection conn, String model) async {
  var result =
      await conn.query('update car set isBooked = 1 where model = ?', [model]);
}
