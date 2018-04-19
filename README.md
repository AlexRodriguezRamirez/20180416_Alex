# 20180416_Alex
Commit 17/04/2018: Añadido el proyecto Calculadora MVC. Mediante una vista (index.jsp) se pide al usuario que indique los operandos y la operación que desee realizar, el controlador emplea el modelo adecuado a cada operación para llevarla a cabo y se guarda la información en memoria (request ya que en este caso no es necesario utilizar la sesión) y se muestra el resultado al usuario en otra vista.

Pendiente de añadir:
                        - Manejo de excepciones.
                        - Control de errores (división por 0, que actualmente genera un error 500).
                        
Commit 19/04/2018: Modificado el index, que ahora muestra dos opciones: JSP estándar y JSTL. Añadido el archivo entrada.jsp que contiene el formulario con los datos de entrada de la calculadora (anteriormente este contenido estaba en el index). Añadidas las páginas JSP errorJSTL.jsp y respuestaJSTL.jsp, para mostrar los errores o el resultado mediante etiquetas JSTL si así se indica en el index. Añadido también el control de errores al dividir por 0 (se ha añadido en el controlador, aunque quiza debería controlarse en el modelo). No se realiza manejo de excepciones. 