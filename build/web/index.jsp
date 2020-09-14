<%-- 
    Document   : index
    Created on : Sep 13, 2020, 6:48:17 PM
    Author     : daniel
--%>
<%@ page import="Matematica.MetodosMatematicos"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Metodos Matematicos</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    </head>
    <body>
        <div class="container pt-5">
            <h1 class="text-center">OPERACIONES ARITMETICAS</h1>
            <form id="form" method="POST">
                <div class="form-group">
                  <label for="num1">Numero 1</label>
                  <input type="number" class="form-control" id="num1" name="num1">
                </div>
                <div class="form-group">
                  <label for="num2">Numero 2</label>
                  <input type="number" class="form-control" id="num2" name="num2">
                </div>
                <div class="form-group">
                  <label for="resultado">Resultado</label>
                  <input type="text" class="form-control" id="resultado" name="resultado">
                </div>
                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-success" onclick="submitForm('sumar')">Sumar</button>
                    <button type="button" class="btn btn-primary" onclick="submitForm('restar')">Restar</button>
                    <button type="button" class="btn btn-dark" onclick="submitForm('dividir')">Dividir</button>
                    <button type="button" class="btn btn-warning" onclick="submitForm('multiplicar')">Multiplicar</button>
                </div>
            </form>
        </div>
        <div class="container pt-5">
            <h1 class="text-center">TABLA DE MULTIPLICAR</h1>
            <form>
                <div class="form-group">
                  <label for="num1">Numero</label>
                  <input type="number" class="form-control" id="num" name="num">
                </div>
                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-success" onclick="generarTabla()">Generar Tabla</button>
                </div>
                <table class="table">
                    <tbody id="tablaMultiplicar">
                        
                    </tbody>
                </table>
            </form>
        </div>
            <script>
                
                function submitForm(action) {
                    $.ajax({
                        url: 'resultado.jsp?action=' + action,
                        type: 'post',
                        dataType: 'JSON',
                        data: {
                            num1: document.getElementById('num1').value,
                            num2: document.getElementById('num2').value
                        },
                        success: function(response){
                          document.getElementById('resultado').value = response
                        },
                        error: function(error) {
                            console.log(error)
                        }
                    });
                }
                
                function generarTabla() {
                    const numero = document.getElementById('num').value
                    $.ajax({
                        url: 'tablaMultiplicacion.jsp',
                        type: 'post',
                        dataType: 'JSON',
                        data: {
                            num: numero
                        },
                        success: function(response){
                          let html = ''
                          response.forEach((n, i) => {
                            html += '<tr><td>' + numero + '</td><td>X</td><td>' + (Number(i) + 1) + '</td><td>=</td><td>' + n + '</td></tr>'
                          })
                          document.getElementById('tablaMultiplicar').innerHTML = html
                        },
                        error: function(error) {
                            console.log(error)
                        }
                    });
                }
                
            </script>
    </body>
</html>
