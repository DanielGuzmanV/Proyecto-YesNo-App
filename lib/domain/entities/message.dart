class ClassMessage {

  final String textMessage;
  final String? imageUrl;
  final EnumFromWho fromWho;

  ClassMessage({
    required this.textMessage,
    this.imageUrl, 
    required this.fromWho});

}

enum EnumFromWho {
  smsMe,
  smsDoctor
}

