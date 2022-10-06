class Cliente {
  int id;
  String nome;
  String telefone;
  Cliente(this.id, this.nome, this.telefone);
  @override
  String toString() {
    return "$id, $nome, $telefone";
  }
}
