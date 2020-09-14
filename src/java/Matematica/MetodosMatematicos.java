/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Matematica;

/**
 *
 * @author viaro
 */
public class MetodosMatematicos {
     
    public int Multiplicar2Valores(int num1, int num2)//método con un parámetro
  {
    int resultado=0;
    if ((num1 > 0)&&(num2 > 0))
    {
        resultado = num1*num2; 
    }
    return resultado;
  }
    
     public int Sumar2Valores(int num1, int num2)//método con un parámetro
  {
    int resultado=0;
        return resultado = num1+num2; 
    
  }
     
      public int Resta2Valores(int num1, int num2)//método con un parámetro
  {
    int resultado=0;
        return resultado = num1-num2; 
    
  }
      public int Dividir2Valores(int num1, int num2)//método con un parámetro
  {
    int resultado=0;
    if (num2>0)
    {
        resultado = num1/num2; 
    }else{
        System.out.println("No se puede dividir dentro de 0");
    }
    return resultado;
  }
      
      
}
