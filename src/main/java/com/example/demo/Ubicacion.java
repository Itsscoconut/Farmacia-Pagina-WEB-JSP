package com.example.demo;

import java.lang.reflect.Array;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedList;

public class Ubicacion {
    private LinkedList <String> linkedList = new LinkedList<>();


    public String Mapa(int code){
        String resultado="";
        linkedList.add("https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126109.77214741417!2d-79.63850132902314!3d8.978554000704452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8faca9b91a9a0fed%3A0x595a61da83259ab0!2sFarmacia%20El%20Javillo%20%7C%20R%C3%ADo%20Abajo!5e0!3m2!1ses-419!2spa!4v1669962688829!5m2!1ses-419!2spa");

        linkedList.add("https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d141395.2526903828!2d-79.66657193738362!3d8.965066538271714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8faca8f5ec2b89df%3A0xaab69f7cec5c703b!2sFarmacia%20El%20Javillo%20%7C%20Plaza%20Edison!5e0!3m2!1ses-419!2spa!4v1669964947051!5m2!1ses-419!2spa");

        String array [] = new String[2];
        array[1]=
        resultado = linkedList.get(code).toString();
        //System.out.println(linkedList.get(code).toString());

        return linkedList.toString();
    }



}
