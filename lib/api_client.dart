import 'package:dio/dio.dart';

Dio dio = Dio();
String baseUrl = 'https://eightballapi.com/api';


class ApiClient {
  Future<String> getSimpleResponse() async {
    Response response = await dio.get(baseUrl);

    // Добавляем задержку на 1 секунду (1000 миллисекунд) перед выводом response
    // await Future.delayed(Duration(seconds: 1));

    // print(response.data);

    return response.data['reading'];
  }

}
