## C_langauges | 220801



###### 1.지금까지 case 마다 break를 붙여주었는데 break가 없으면 앞의 소스에서 break를 모두 삭제한 소스

> case 를 작성할때는 마지막 부분에서 break로 중단해주어야 해당 case 만 실행

```c
#define _CRT_SECURE_NO_WARNINGS // scanf  보안 경로로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
    int num1;
    scanf("%d", &num1);     //값을 입력 받음

    //switch의 case에서 break를 삭제

    switch (num1)
    {
    case 1 /* constant-expression */:
        printf("1입니다.\n");
    case 2 :
        printf("2입니다.\n");
    default:
        printf("default\n");
    }
        /* code */
    return 0;
    }
```

###### 2. Switch 의 case에 들어가는 코드가 길어지다 보면 변수를 선언하기도 한다

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
    int num1;

    scanf("%d", &num1);

    switch (num1)
    {
    case 1 /* constant-expression */:
       {
        int num2 = num1;
        printf("%d 입니다.\n",num2);/* code */
        break;
       }
    case 2:
        printf("2입니다.\n");
        break;
    
    default:
        printf("default\n");
        break;
    }
    return 0;
}
```




