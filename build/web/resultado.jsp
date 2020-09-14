<%@ page import="Matematica.MetodosMatematicos"%>
<%

MetodosMatematicos operador = new MetodosMatematicos();

int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String action = request.getParameter("action");

float resultado = 0;
if (action.equalsIgnoreCase("sumar")) {
    resultado = operador.Sumar2Valores(num1, num2);
}else if (action.equalsIgnoreCase("restar")) {
    resultado = operador.Resta2Valores(num1, num2);
}else if (action.equalsIgnoreCase("dividir")) {
    resultado = operador.Dividir2Valores(num1, num2);
}else if (action.equalsIgnoreCase("multiplicar")) {
    resultado = operador.Multiplicar2Valores(num1, num2);
}

out.println(resultado);

%>