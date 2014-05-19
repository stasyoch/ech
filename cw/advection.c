#include <stdio.h>
#include "drawme.h"

double f(double x){
if (x>=-0.5 && x<=0.5){return 1;}
return 0;
};


int main(){
double Cx=1,k=0.5;
int N,M,i,j=0;
double x0[100]={0};
double x1[100]={0};
double y[100]={0};
double t,b,h,t1;
scanf("%d",&N);
h=2.0/N;
t=(k*h)/Cx;
M=2.0/(Cx*t)+1; 
for (i=0;i<N;i++){
          x0[i]=(i*h)-1;
          x1[i]=f(x0[i]);
          y[i]=f(x0[i]);}
while (j<M){
      for (i=1;i<N;i++){
                  t1=(x1[i]-y[i-1])/h;
                  b=x1[i]-t1*x0[i];
                  x1[i]=t1*(x0[i]-Cx*t)+b;};
      t1=(x1[0]-y[N-1])/h;
      x1[0]=(h-Cx*t)*t1+y[N-1];
      for (i=0;i<100;i++) y[i]=x1[i];
j++;}

      DM_plot_1d(x0,x1,N,"Test 1", 0);
      DM_plot_1d(x0,x1,N,"Test 1", 1);
for (i=0;i<N;i++) printf ("%lf ",y[i]);
return 0;
}
