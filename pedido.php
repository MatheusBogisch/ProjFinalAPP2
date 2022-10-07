 <?php
$usuario="root";
$senha= "";

$conectar = new PDO('mysql:host=localhost;dbname=bd_boutique', $usuario, $senha);
$consulta = $conectar->query('SELECT * from pedido');
$dados= array();
while($registro = $consulta->fetchAll(PDO::FETCH_ASSOC)){
    $dados = $registro;
}
    echo(json_encode($dados));
?>