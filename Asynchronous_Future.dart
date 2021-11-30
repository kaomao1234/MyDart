void main() async {
  //! รอข้อมูล จาก login_user
  print(await getUserFromDatabase());
  print("Run other task.");
}

Future<String> login_user() async {
  var user = await getUserFromDatabase();
  return user;
}

Future<String> getUserFromDatabase() {
  // todo รอ 10 วิ ส่งข้อมูลกลับ
  return Future.delayed(Duration(seconds: 2), () => 'user1');
}
