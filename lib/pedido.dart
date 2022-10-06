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

   String getCobertura() {
    return cobertura;
  }

  String getPreco() {
    return preco;
  }

  String getRecheio() {
    return recheio;
  }

  String getTamanho() {
    return tamanho;
  }

  String getObservacoes() {
    return observacoes;
  }

   String getNomeCliente() {
    return nomeCliente;
  }

  String getFoneCliente() {
    return foneCliente;
  }

  String getImagem() {
    return imagem;
  }
}
