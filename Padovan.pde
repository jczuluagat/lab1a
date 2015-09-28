/////////////////////// SERIE DE PADOVAN
int nextPandovan(int i) // Esta función retorna los numeros de la serie de padovan 
{
  if(i<3){        // la condición inicial para los 3 primeros terminos es que sean 1
    return 1;
  } else {
  
     return nextPandovan(i-2)+nextPandovan(i-3);  // función de padovan
  }

}

////////////////////////////////////


int ImprimirPosiciones(int K,int[] padovan)
{
  for(int j=0;j<K;j++){   // rellena el arrreglo padovan con todos los números de la sucesicion de padovan
    if(j==0){
   print(padovan[j]);   // omite una ","
    }else{
  print(","+padovan[j]);
  }
}
return padovan[K-1];

}


boolean ValidarExistencia(int K,int[] padovan){   
  boolean state=false;
for(int j=0;j<padovan.length;j++){  // se recorre todo el arreglo de la serie de padovan
    if(K==padovan[j]){              // se compara el entero i como K  con cada uno de los valores que se encuentran en el arreglo.
  state=true;                       // si se encuentra retorna un true.
  break;
}
}
return state;
}

void setup()

{   size(900,900);

  int n=20;    // se elije el entero con le que se trabajara
  
  
  int[ ]   padovan = new int[60]; // se crea una rreglo de 60 posiciones y se rellenara de la suceción de padovan para ello se usa padovan.length
  for (int i = 0; i < padovan.length ;  i++)
  {
      padovan[i]=nextPandovan(i); // Se elige el número 60 debido a que el numero 61 de padovan es complicado de interar y el tiempo de ejecución se extiende
  
  }
  
 int Posicion=ImprimirPosiciones(n,padovan); // se llama la función imprimirposiciones para mostrar en consola todos los números de padovan menores al int n escogidos
  println("");
if(ValidarExistencia(n,padovan)==true){    // La función validarexistencia indicara si el int n escogido es o no parte de la sucesión de padovan
  print("El Numero "+n+" Se Encuentra en la Serie de Padovan"); // si el retorno es true 
}else{
  print("El Numero "+n+" No Se Encuentra en la Serie de Padovan"); // si es false 
}
 println("");
  print("el numero de la posicion "+n+" es "+Posicion);  // se muesta en consola cual es la posición int n de la sucesión de padovan 
  
  
  // Representación gráfica
  
 for (int i = 0; i < padovan.length ;  i++)
 
  { 

 
 triangle( 30 + padovan[i]*10,  450  ,                          45+15*padovan[i] , 450 - 30 - padovan[i]*10,                       60 + 20*padovan[i] , 450        );
 
     fill( i*padovan[i]%255, 255 ,90  );  
    
  }
  
  }