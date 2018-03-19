int N_lineas(int [][]matl1){
int Numlineas=0;
  for(int lf=0;lf<matl1.length;lf++){ 
 for(int lc=0;lc<matl1.length;lc++){
   if(matl1[lf][lc]==1){
   Numlineas=Numlineas+1;
   }
       }
       }
 // println(nlineas);
   return Numlineas;
}