#include <stdio.h>
int main(){
int a,i,j=0,N=10;
double u0[N],u1[N];
double k=0.6,c=1.0;
double h,t;
h=2.0/N;
t=h*k/c;
for(i=0;i<N;i++){
if((i<(N/4))|(i>(3*N/4)))  u0[i]=0.0;
else u0[i]=1.0;}
while(j<N){
for(i=1;i<N;i++){
u1[i]=u0[i]-c*t*(u0[i]-u0[i-1])/h;}
u1[0]=u0[0]-c*t*(u0[0]-u0[N-1])/h;
//printf("%lg ",u1[i]);}
for(i=0;i<N;i++) u0[i]=u1[i];
j++;}
for(i=0;i<N;i++) printf("%lg ",u1[i]);
printf("3");
return 0;}
