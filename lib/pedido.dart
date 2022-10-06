class Pedido {
  int id;
  String recheio;
  String tamanho;
  String observacoes;
  Pedido(this.id, this.recheio, this.tamanho, this.observacoes);
  @override
  String toString() {
    // TODO: implement toString
    return "$id, $recheio, $tamanho, $observacoes";
  }
}