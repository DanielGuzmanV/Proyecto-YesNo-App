import 'package:yesno_app/domain/entities/message.dart';

class YesNoModelApi {

  String answer;
  bool forced;
  String image;
  
  YesNoModelApi({
    required this.answer,
    required this.forced,
    required this.image
  });

  factory YesNoModelApi.fromResponseJsonMap(Map<String, dynamic> jsonResponse) => 
    YesNoModelApi(
      answer: jsonResponse['answer'], 
      forced: jsonResponse['forced'], 
      image: jsonResponse['image']
    );

  // Metodo que crea una instancia
  ClassMessage entidadMessage() => ClassMessage(
    textMessage: answer == 'yes' ? 'Si' : 'No', 
    fromWho: EnumFromWho.smsDoctor,
    imageUrl: image,
  );

  Map<String, dynamic> toJson() => {
    "answer": answer,
    "forced": forced,
    "image": image
  };

}