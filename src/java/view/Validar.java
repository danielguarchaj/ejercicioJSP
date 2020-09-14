/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package view;
import Matematica.MetodosMatematicos;
import Matematica.TablaMultiplicar;

/**
 *
 * @author viaro
 */
public class Validar {
    public static void main(String[] ARGS){
        MetodosMatematicos vMetodos = new MetodosMatematicos();
        System.out.println("Resultado de multiplicacion: "+vMetodos.Multiplicar2Valores(20,4));
        System.out.println("Resultado de sumar: "+vMetodos.Sumar2Valores(2,4));
        System.out.println("Resultado de restar: "+vMetodos.Resta2Valores(2,4));
        System.out.println("Resultado de dividir: "+vMetodos.Dividir2Valores(4,0));
        TablaMultiplicar tabla = new TablaMultiplicar();           

    }

}
