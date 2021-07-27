###  BASE DE DATOS DE SISTEMA DE NOTAS

##  Algunas consultas SQL

<p>Mostrar el carnet, nombre completo de estudiante y la carrera</p>


 <pre>select estudiante.Carnet as carnet, CONCAT(estudiante.nombre, ' ',estudiante.apellido) as nombre_completo, carrera.nombre as carrera from carrera_estudiante INNER JOIN estudiante ON carrera_estudiante.Carnet_estudiante=estudiante.Carnet INNER JOIN carrera ON carrera_estudiante.Id_carrera=carrera.id;</pre>