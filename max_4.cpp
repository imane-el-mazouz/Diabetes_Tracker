#include <stdio.h>
int max_2(int a,int b){
{
	if(b>a){
	return b;
}
	else{
	return a;
}
}
int max_4(int a,int b,int c,int d){
    if (max_2(a,b)>max_2(c,d)){
        return max_2(a,b);
    }
    else{
        return max_2(c,d);
    }
}
int main() {
    int a,b,c,d;
    printf("Entrez 4 nombres differents : ");
    scanf("%d %d %d %d", &a, &b, &c, &d);
    printf("Le PG est : %d\n",max_4(a,b,c,d));
    return 0;
}
