void win_lose(int Numlineas,int[]matx1,int[]maty1,int[][] user,int[][]matl1){

if(cont==Numlineas){
  for(int f=0;f<maty1.length;f++){
  for(int c=0;c<maty1.length;c++){
  //if(user[f][c]!=1){
    
    
 // user[f][c]=0;
  //}
  }
  }
 for(int rf=0;rf<maty1.length;rf++){
 for(int rc=0;rc<maty1.length;rc++){
 if(user[rf][rc]!=matl1[rf][rc]){
    ganar=1;
   }
 }
}
 }// ganar 
 if((cont==Numlineas)&&(ganar==0)){
  println("Ganó");
  fill(243,243,28);
   textSize(27);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Ha ganado el nivel",400,230);//se coloco texto
 text("Avanza al siguiente nivel con s",400,250);
     if (keyPressed==true&&key=='s'){//reiniciar
  background(100, 200, 200);
   aux=0;
   cont=0;
   ganar= 0;
   nv++;
   
}
 }//mensaje de ganar
 if((cont==Numlineas)&&(ganar==1)){
 fill(243,243,28);
 println("Perdió");
    textSize(29);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Ha perdido el nivel",400,230);//se coloco texto
 text(" para volver a intentar presione r",400,250);
   aux=0;
   cont=0;
   ganar=0;
   restore(user);
 for(int lf=0;lf<maty1.length;lf++){
 for(int lc=0;lc<maty1.length;lc++){
  user[lf][lc]=0;
 }
}
 }
     }