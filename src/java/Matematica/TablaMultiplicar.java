/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Matematica;

import java.util.Scanner;

/**
 *
 * @author viaro
 */
public class TablaMultiplicar {
    public String[] matriz(int n){
        String[] matriz = new String[10];    
        for(int i = 0; i < 10; i++){
            matriz[i] = Integer.toString(n*(i+1));
        }
        System.out.println(matriz[0]);
        return matriz;
    }
}