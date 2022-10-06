class Pedido {
  String cobertura;
  String preco;
  String recheio;
  String tamanho;
  String observacoes;
  String nomeCliente;
  String foneCliente;
  String imagem;
  Pedido(this.cobertura, this.preco, this.recheio, this.tamanho,
      this.observacoes, this.nomeCliente, this.foneCliente, this.imagem);
  @override
  String toString() {
    // TODO: implement toString
    return "$cobertura, $preco, $recheio, $tamanho, $observacoes, $nomeCliente, $foneCliente, $imagem";
  }
}
