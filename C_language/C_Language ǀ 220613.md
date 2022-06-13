#### C_Language | 220613

##### 1. 공용체 (union)

C언어에서는 같은 메모리 영역을 여러 개의 변수들이 공유할 수 있게 하는 기능을 공용체라하며, 같은 메모리 영역을 여러 개의 변수가 공유하도록 하는 것은 메모리를 절약하기 위해서다.

```c
#include <stdio.h>

union example {
    int i;
    char c;
};

int main(void)
{
    union example data;
    
    data.c='A'
    printf("data.c:%c data.i:%i\n", data.c, data.i);
    
    data.i=10000;
    prinf("data.c:%c data.u:%i\n", data.c, data.i)
}
```





##### 2. 열거형 (enumeration)

변수가 가질 수 있는 값들을 미리 열거해놓은 자료형

ex.1){ 일요일, 월요일, 화요일, 수요일, 목요일,금요일,토요일}



```c
enum levels { low,medium, high}
//low=0, medium=1, high=2
```



#CASE.1

```c
#include <studio.h>

enum days { MON, TUE, WED, THU, FRI, STA, SUN};
// 포인터들의 배열을 만들고 만자열 상수로 초기화 한다.

CHAR *days_name[]={
    "monday","tuesday","wednesday","thursday","friday","saturday","sunday"};

int main(void)
{
    enum days d;
    
    for (d=MON; d <= SUN; d++)
        printf("%d번째 요일의 이름은 %s입니다\n",d,days_name[d]);
    return 0;
}
```





