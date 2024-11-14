<?php
$conn = mysqli_connect(
  'db',
  'root',
  'root_password',
  '2024_11_12-DevWeb'
) or die("Erro ao conectar ao banco de dados: " . mysqli_connect_error());

$consulta = mysqli_query($conn, "SELECT * FROM tabela_nova");
$dados = mysqli_fetch_assoc($consulta);

echo '<pre>';
print_r($dados);
echo '</pre>';
