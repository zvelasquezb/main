void dibujar_lineas(int [][]matl1, int matx1[], int maty1[] ){
for(int y=0;y<matx1.length;y++){
  for(int x=0;x<matx1.length;x++){
  if(matl1[x][y]==1){ 
  stroke(212,18,18,1);  
  line(matx1[x],maty1[x],matx1[y],maty1[y]);
  }
  }
}

}