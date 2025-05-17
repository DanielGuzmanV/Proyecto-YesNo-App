import 'package:dio/dio.dart';
import 'package:yesno_app/domain/entities/message.dart';
import 'package:yesno_app/infrastructure/models/yesno_model.dart';

class ResponseGetApiYesNo {

  final Dio _dioHttp = Dio();

  Future<ClassMessage> getAnswer() async {
    final response = await _dioHttp.get('https://yesno.wtf/api');

    final resYesNoModel = YesNoModelApi.fromResponseJsonMap(response.data);
    
    return resYesNoModel.entidadMessage();
  }

}