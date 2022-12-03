<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: Application/json');

  include_once '../../Config/Database.php';
  include_once '../../Models/Post.php';

  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();

  // Instantiate blog post object
  $post = new Post($db);

  // Get ID
  $post->id_materia = isset($_GET['id_materia']) ? $_GET['id_materia'] : die();

  // Get post
  $post->read_single();

  // Create array
  $post_arr = array(
    'id_materia' => $post->id_materia,
    'semestre' => $post->semestre,
    'nombre_materia' => $post->nombre_materia,
    'horas_trabajo' => $post->horas_trabajo,
    'especificacion' => $post->especificacion
  );

  // Make JSON
  print_r(json_encode($post_arr));