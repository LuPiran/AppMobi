class Eletroposto {
  String? nome;
  String? informacoes;
  String? endereco;
  String? telefone;

  Eletroposto({
    this.endereco,
    this.nome,
    this.informacoes,
    this.telefone,
  });

  Map<String, dynamic> toJson() => {
        'nome': nome,
        'informacoes': informacoes,
        'endereco': endereco,
        'telefone': telefone,
      };

  Eletroposto.fromJson(Map json)
      : nome = json['nome'],
        informacoes = json['informacoes'],
        endereco = json['endereco'],
        telefone = json['telefone'];
}
