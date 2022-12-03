<?php
    class Post {
        private $conn;
        private $table= 'materias';

        //Propiedades 
        public $id_materia;
        public $semestre;
        public $nombre_materia;
        public $horas_trabajo;
        public $especificacion;

        //Constructor 
        public function __construct($db){
            $this->conn = $db;
        }

        //Obtener Posts 
        public function read(){
            //Crear query
            $query='SELECT id_materia, semestre, nombre_materia,horas_trabajo,especificacion
                FROM
                    ' . $this->table;

            //Preparar statement
            $stmt = $this->conn->prepare($query);

            //Ejecutar query 
            $stmt->execute();

            return $stmt;
        }

        public function read_single(){
            //Create a query
            $query = 'SELECT  id_materia, semestre, nombre_materia, horas_trabajo, especificacion
            FROM ' . $this->table . ' 
            WHERE
             id_materia = ?
            LIMIT 0,1';

            //Prepare statement 
            $stmt = $this->conn->prepare($query);
            //Bind ID
            $stmt->bindParam(1, $this->id_materia);
            // Execute query
            $stmt->execute();
           
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            // Set properties

            $this->semestre = $row['semestre'];
            $this->nombre_materia = $row['nombre_materia'];
            $this->horas_trabajo = $row['horas_trabajo'];
            $this->especificacion = $row['especificacion'];
            
        }   

        public function create() {
            // Create query
            $query = 'INSERT INTO ' . $this->table . ' SET semestre = :semestre, nombre_materia = :nombre_materia, horas_trabajo = :horas_trabajo, especificacion = :especificacion';
  
            // Prepare statement
            $stmt = $this->conn->prepare($query);
  
            // Clean data
            $this->semestre = htmlspecialchars(strip_tags($this->semestre));
            $this->nombre_materia = htmlspecialchars(strip_tags($this->nombre_materia));
            $this->horas_trabajo = htmlspecialchars(strip_tags($this->horas_trabajo));
            $this->especificacion = htmlspecialchars(strip_tags($this->especificacion));
  
            // Bind data
            $stmt->bindParam(':semestre', $this->semestre);
            $stmt->bindParam(':nombre_materia', $this->nombre_materia);
            $stmt->bindParam(':horas_trabajo', $this->horas_trabajo);
            $stmt->bindParam(':especificacion', $this->especificacion);
  
            // Execute query
            if($stmt->execute()) {
              return true;
        }
  
        // Print error if something goes wrong
        printf("Error: %s.\n", $stmt->error);
  
        return false;
      }

			public function update() {
        // Create query
        $query = 'UPDATE ' . $this->table . '
                              SET semestre = :semestre,  nombre_materia = :nommbre_materia, horas_trabajo = :horas_trabajo, especificacion = :especificacion
                              WHERE id_materia = :id_materia';

        // Prepare statement
        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->semestre = htmlspecialchars(strip_tags($this->semestre));
        $this->nombre_materia = htmlspecialchars(strip_tags($this->nombre_materia));
        $this->horas_trabajo = htmlspecialchars(strip_tags($this->horas_trabajo));
        $this->especificacion = htmlspecialchars(strip_tags($this->especificacion));
        $this->id_materia = htmlspecialchars(strip_tags($this->id_materia));

        // Bind data
        $stmt->bindParam(':semestre', $this->semestre);
        $stmt->bindParam(':nombre_materia', $this->nombre_materia);
        $stmt->bindParam(':horas_trabajo', $this->horas_trabajo);
        $stmt->bindParam(':especificacion', $this->especificacion);
        $stmt->bindParam(':id_materia', $this->id_materia);

        // Execute query
        if($stmt->execute()) {
          return true;
        }

        // Print error if something goes wrong
        printf("Error: %s.\n", $stmt->error);

        return false;
    }

		public function delete() {
			// Create query
			$query = 'DELETE FROM ' . $this->table . ' WHERE id_materia = :id_materia';

			// Prepare statement
			$stmt = $this->conn->prepare($query);

			// Clean data
			$this->id = htmlspecialchars(strip_tags($this->id_materia));

			// Bind data
			$stmt->bindParam(':id_materia', $this->id_materia);

			// Execute query
			if($stmt->execute()) {
				return true;
			}

			// Print error if something goes wrong
			printf("Error: %s.\n", $stmt->error);

			return false;
}

    }