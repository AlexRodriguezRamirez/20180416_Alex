# 20180416_Alex
Commit 17/04/2018: Añadido el proyecto Calculadora MVC. Mediante una vista (index.jsp) se pide al usuario que indique los operandos y la operación que desee realizar, el controlador emplea el modelo adecuado a cada operación para llevarla a cabo y se guarda la información en memoria (request ya que en este caso no es necesario utilizar la sesión) y se muestra el resultado al usuario en otra vista.

Pendiente de añadir:
                        - Manejo de excepciones.
                        - Control de errores (división por 0, que actualmente genera un error 500).