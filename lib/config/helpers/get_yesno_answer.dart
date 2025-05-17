import 'package:dio/dio.dart';
import 'package:yesno_app/domain/entities/message.dart';

class ResponseGetApiYesNo {

  final Dio _dioHttp = Dio();

  Future<ClassMessage> getAnswer() async {
    final response = await _dioHttp.get('https://yesno.wtf/api');
    throw UnimplementedError();
  }

}