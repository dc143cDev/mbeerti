import 'dart:convert';

class Q {
  final String code;
  final String Q0;
  final String Q1;
  final String Q2;

  Q(this.code, this.Q0, this.Q1, this.Q2);

  Q.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        Q0 = json['Q0'],
        Q1 = json['Q1'],
        Q2 = json['Q2'];
}

class QMap {
  Map initQ = {
    'code': '1',
    'Q1': '첫번째 질문입니다.',
    'Q2': '두번째 질문입니다.',
    'Q3': '세번째 질문입니다.'
  };
}
