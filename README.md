###  BASE DE DATOS DE SISTEMA DE NOTAS

##  Algunas consultas SQL

<p> 1 . Mostrar el carnet, nombre completo de estudiante y la carrera</p>


 <pre>select estudiante.Carnet as carnet, CONCAT(estudiante.nombre, ' ',estudiante.apellido) as nombre_completo, carrera.nombre as carrera from carrera_estudiante INNER JOIN estudiante ON carrera_estudiante.Carnet_estudiante=estudiante.Carnet INNER JOIN carrera ON carrera_estudiante.Id_carrera=carrera.id;</pre>

<p> 1 . UNIÓN de tablas -> Estudiante, notas y asignaturas</p>

 <pre>select estudiante.Carnet,estudiante.Nombre as nombre_estudiante,asignaturas.Nombre as asignatura,notas.Nota_final from estudiante_asignatura_nota inner join estudiante on estudiante_asignatura_nota.Carnet_estudiante=estudiante.Carnet inner join asignaturas on estudiante_asignatura_nota.Id_asignatura=asignaturas.Id inner join notas on estudiante_asignatura_nota.Id_notas=notas.Id;</pre>