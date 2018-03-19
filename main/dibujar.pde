void dibujar_user(int []matx1,int[]maty1,int[][]matl1,int [][]user){
  if(aux==0){
  for(b=0;b<maty1.length;b++){
  if((mouseX>=(matx1[b]-10))&&(mouseX<=(matx1[b]+10))&&(mouseY>=(maty1[b]-10))&&(mouseY<=(maty1[b]+10))){
  dibujo[0]=matx1[b];
  dibujo[1]=maty1[b];
  c=b;
  aux++; 
  }
  }
  }
//println(dibujar[0]);
//println(dibujar[1]);
 else{
   
 for(b=0;b<maty1.length;b++){
  if((mouseX>=(matx1[b]-10))&&(mouseX<=(matx1[b]+10))&&(mouseY>=(maty1[b]-10))&&(mouseY<=(maty1[b]+10))){
  dibujo[2]=matx1[b];
  dibujo[3]=maty1[b];
  if(matl1[c][b]==1){
    stroke(212,18,18); 
    line(dibujo[0],dibujo[1],dibujo[2],dibujo[3]);
  dibujo[0]=dibujo[2];
  dibujo[1]=dibujo[3];
  user[b][c]=user[b][c]+1;
  user[c][b]=user[c][b]+1;
  if((user[b][c]>1)&&(user[c][b]>1)){
  fill(243,243,28);
 println("Perdió");
    textSize(29);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Ha perdido el nivel por repetir linea",400,230);//se coloco texto
 text(" para volver a intentar presione r",400,250);
  };
  println(user[c][b]);
  c=b;
  cont++;
 // println(cont);
   }
  }
 }
 }}