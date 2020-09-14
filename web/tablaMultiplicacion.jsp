<%@page import="java.util.Arrays"%>
<%@ page import="Matematica.TablaMultiplicar"%>
<%

TablaMultiplicar operador = new TablaMultiplicar();

int num = Integer.parseInt(request.getParameter("num"));

String[] resultado = operador.matriz(num);

out.println(Arrays.toString(resultado));

%>