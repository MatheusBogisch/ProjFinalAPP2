<?php

$usuario="root";
$senha = "";
if(isset($_POST['recheio'])){
      $conectar = new PDO('mysql:host=localhost;dbname=bd_boutique',$usuario,$senha);
      $cobertura = $_POST['cobertura'];
      $preco = $_POST['preco'];
      $recheio = $_POST['recheio'];
      $tamanho = $_POST['tamanho'];
      $observacoes = $_POST['observacoes'];
      $nomeCliente = $_POST['nomeCliente'];
      $foneCliente = $_POST['foneCliente'];
      $imagem = $_POST['imagem'];
      $inserir = "INSERT INTO pedido (cobertura,preco, recheio, tamanho, observacoes, nomeCliente, foneCliente, imagem) VALUES 
      ('$cobertura,$preco, $recheio','$tamanho', '$observacoes', '$nomeCliente', '$foneCliente', '$imagem')";
      $gravar = $conectar->prepare($inserir);
      $gravar->execute(array());
}else{
   echo "Manualmente aberta";
}    
?>