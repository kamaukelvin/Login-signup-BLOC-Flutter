class NestedUser {
  String name;
  String phone;
  String email;
  int earningWallet;
  int referCode;

  NestedUser({this.name, this.phone, this.email, this.earningWallet, this.referCode});

  NestedUser.fromJson(Map<String, dynamic> json) 
    : name = json['name'],
      phone = json['phone'],
      email = json['email'],
      earningWallet = json['earning_wallet'],
      referCode = json['refer_code'];
  }


