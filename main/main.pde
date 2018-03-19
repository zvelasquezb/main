int[] matx1={100,400,700,400,250,550,400,100,400,700};
int[] maty1={100,100,100,250,400,400,550,700,700,700};
             //1 2 3 4 5 6 7 8 9,10
int[][]matl1={{0,1,0,0,0,0,0,1,0,0},//1
              {1,0,1,1,0,0,0,0,0,0},//2
              {0,1,0,0,0,0,0,0,0,1},//3
              {0,1,0,0,1,1,1,0,0,0},//4
              {0,0,0,1,0,0,1,0,0,0},//5
              {0,0,0,1,0,0,1,0,0,0},//6
              {0,0,0,1,1,1,0,0,1,0},//7
              {1,0,0,0,0,0,0,0,1,0},//8
              {0,0,0,0,0,0,1,1,0,1},//9
              {0,0,1,0,0,0,0,0,1,0},};//10
              
int[] matx2={100,200,600,700,400,200,350,350,450,450,600};
int[] maty2={200,200,200,200,20 ,600,600,400,400,600,600};
             //1 2 3 4 5 6 7 8 9,10,11
int[][]matl2={{0,1,0,0,1,0,0,0,0,0,0},//1
              {1,0,1,0,0,1,0,0,0,0,0},//2
              {0,1,0,1,0,0,0,0,0,0,1},//3
              {0,0,1,0,1,0,0,0,0,0,0},//4
              {1,0,0,1,0,0,0,0,0,0,0},//5
              {0,1,0,0,0,0,1,0,0,0,0},//6
              {0,0,0,0,0,1,0,1,0,0,0},//7
              {0,0,0,0,0,0,1,0,1,0,0},//8
              {0,0,0,0,0,0,0,1,0,1,0},//9
              {0,0,0,0,0,0,0,0,1,0,1},//10
              {0,0,1,0,0,0,0,0,0,1,0},};//11
              
              
int[] matx3={150,250,320,350,400,400,450,480,550,650};
int[] maty3={350,650,440,350,200,550,350,440,650,350};
             //1 2 3 4 5 6 7 8 9,10,11
int[][]matl3={{0,0,1,1,0,0,0,0,0,0},//1
              {0,0,1,0,0,1,0,0,0,0},//2
              {1,1,0,1,0,1,0,0,0,0},//3
              {1,0,1,0,1,0,1,0,0,0},//4
              {0,0,0,1,0,0,1,0,0,0},//5
              {0,1,1,0,0,0,0,1,1,0},//6
              {0,0,0,1,1,0,0,1,0,1},//7
              {0,0,0,0,0,1,1,0,1,1},//8
              {0,0,0,0,0,1,0,1,0,0},//9
              {0,0,0,0,0,0,1,1,0,0},};//10
              
     
int a=0,b,c,aux1=0,aux=0,cont=0,win=0,ganar,lc,lf,nv=1;
int []dibujo=new int[4];
int [][]user=new int[10][10];
int [][]user2=new int[11][11];
int [][]user3=new int[10][10];

 //// variables ////
 
void setup(){
background(100, 100, 200 );
size(800,800);
strokeWeight(6);
}

//// setup ////

void draw(){
  if(aux1==0){
    textSize(21);
    textAlign(CENTER,CENTER);
text("Bienvenido",400,230);
 text(" Para comenzar presione a ",400,260);
 text("Si en algun momento desea reiniciar presione r",400,290);
  if(keyPressed==true&&key=='a'){
 aux1++;
 background(100, 200, 100);
 }
  }
  
  else{
  if(nv==1){
  nivel1();
  restore(user);
  }
  
  if(nv==2){
  nivel2();
  restore(user2);
  }
  
  if(nv==3){
  nivel3();
  restore(user3);
  }

  if(nv==4){
   fill(243,243,28);
    textSize(29);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Hacompletado el juego",400,230);//se coloco texto
 text("felicitaciones",400,300);
  }

}
}//draw

 //// dibujo de lineas ////
 
 void mouseClicked() {
  if(nv==1){
     dibujar_user(matx1,maty1,matl1,user);
  }
  
  if(nv==2){
     dibujar_user(matx2,maty2,matl2,user2);
  }
  
  if(nv==3){
     dibujar_user(matx3,maty3,matl3,user3);
  }
  
 }