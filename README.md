### ¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
Usé Left Join en la consulta 1, INNER JOIN es una operación que devuelve solo las filas donde existe coincidencia en ambas tablas. En mi ejemplo al tener una tabla de ventas y otra de productos, el INNER JOIN solo me hubiera mostrado productos que si fueron vendidos. En cambio con Left join puedo ver los que si se vendieron y los que no ya que me muestra los NULL.

### ¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
Usé RIGHT JOIN porque necesitaba asegurarme de que todas las filas de la tabla derecha aparezcan en el resultado, incluso si no tienen coincidencias en la tabla izquierda. 
la tabla que esta a la izquierda es la Tabla de ventas y la Tabla izquierda la de productos.

### ¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores NULL en cada resultado indican ausencia de datos o no coincidencia en la tabla relacionada. 
ejemplo: venta_id es null en la consulta 1 lo que significa que no se encontró una venta relacionada con ese producto.
otro ejemplo producto_id null en la consulta 2, significa que no se encontró un producto dentro del catalogo. 

## ¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
Ejemplo de FULL OUTER JOIN: 
lista de empleados y lista de ventas que generaron. En este caso ambas tablas tienen datos únicos sin correspondencia, (los clientes a quienes les vendieron).
entonces aplicamos el full outer join, me va a devolver todas las filas de ambas tablas, con coincidencias cuando existan, y NULL cuando no.
