<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: Application/json');
  header('Access-Control-Allow-Methods: POST');
  header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');

  include_once '../../Config/Database.php';
  include_once '../../Models/Post.php';

  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();

  // Instantiate blog post object
  $post = new Post($db);

  // Get raw posted data
  $data = json_decode(file_get_contents("php://input"));

  $post->semestre = $data->semestre;
  $post->nombre_materia = $data->nombre_materia;
  $post->horas_trabajo = $data->horas_trabajo;
  $post->especificacion = $data->especificacion;

  // Create post
  if($post->create()) {
    echo json_encode(
      array('message' => 'Materia creada')
    );
  } else {
    echo json_encode(
      array('message' => 'Materia no creada')
    );
  }