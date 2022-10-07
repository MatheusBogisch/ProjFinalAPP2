 <?php
$usuario="root";
$senha= "";

$conectar = new PDO('mysql:host=localhost;dbname=bd_boutique', $usuario, $senha);
$consulta = $conectar->query('SELECT pedido.id, pedido.recheio, pedido.tamanho, pedido.observacoes, pedido.preco, pedido.cobertura, pedido.nomeCliente, pedido.foneCliente, pedido.imagem');
$dados= array();
while($registro = $consulta->fetchAll(PDO::FETCH_ASSOC)){
    $dados = $registro;
}
    echo(json_encode($dados));
?>