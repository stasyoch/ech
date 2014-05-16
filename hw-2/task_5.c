#include <stdio.h>
#include <stdlib.h>
int sum1(int *b,int m)
float sum2(float *b,int m);
int main(){
        int i,n,m;
        scanf("%d",&n);
        int *a=(int *)malloc(n*sizeof(int));
        for (i=0;i<n;i++) scanf("%d",&a[i]);
        float *b=(float *)malloc(n*sizeof(float));
        for (i=0;i<n;i++) scanf("%f",&b[i]);
        printf("%d %f\n",sum1(a,n),sum2(b,n));
        return 0;
}
