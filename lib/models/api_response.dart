// APIResponse class takes a generic type parameter<T> which just shows the type of body we get from the Api

class UserResponse<T>{

  // from the api we expeect: the data itself, a boolean which checks if an error was returned or not, and an error message in case an error was  returned
  T data;
  String error;
  String errorMessage;

  // constructor
  UserResponse({this.data, this.errorMessage,this.error});

   UserResponse.fromJson(Map<String, dynamic> json)
      : data =(json["data"]),
        error = "";

//     UserResponse.withError(String errorValue)
//       : data = List(),
//         error = errorValue;
}

