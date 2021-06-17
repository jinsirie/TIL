### C Language|210617

>1. 조건문



### 1.if_else 문

```c
#include <stdio.h>
int main(void)
{
 int temperature;
 
 printf("온도를 입력하시오:");
 scanf("%d", &temperature);
 
 if(temperature > 0) //temperature가 0보다 크면 아래 문장을 실행
 	printf("영상의 날씨입니다.\n");
 else				// temperature가 0 이하이면 아래 문장을 실행
 	printf("영하의 날씨입니다.\n");
 	
 printf("현재 온도는 %d도 입니다.\n", temperature); //항상 실행
 return 0;
 	
}
```

### 2. 연속적인 if 문



```c
// 성적을 받아서 학점을 결정하는 프로그램

#include <stdio.h>

int main(void)
{
	int score;
	char grade;
	
	printf("성적을 입력하시오: ");
	scanf("%d",&score);
	
	if(score >= 90);
		grade='A';
	else if (score >= 70)
		grade='B';
	else if  (score >= 60)
		grade = 'D'
	else
		grade = 'F';
		
	prinf("학점 %c \n", grade);
	return 0;
}
```

> 하나라도 조건이 만족되어 해당 문장을 실행하고 나면 다른 조건들은 전부 건너뛴다는 점이다.



### 3. Swith 문

if 문에서 조건식이 참이냐 거짓이냐에 따라서 실행할 문장이 둘 중에서 하나로 결정된다. if 문에서 가능한 실행 경로는 두개이지만. 실행 경로가 여러 개인 경우에 switch 문을 사용하는 것이 좋다.

#### 3.1 Break 문

Break문이 없으면 선택된 case 절 안에 문장들을 실행한 다음, 계속해서 다음 case절의 문장들을 실행하게 된다.

#### 3.2 default 문

어떤 case 문과도 일치되지 않는 경우에 선택되어 실행한다.



```c
//달의 일수를 계산하는 프로그램
#include <stdio.h>
int main(void)
{
    int month, days;
    
    printf("일수를 알고 싶은 달을 입력하시오: ");
    scanf("%d", &month);
    
    switch (month)
    {
    case 2:	
        days = 28;
        break;
    case 4:
    case 6:
    case 9:
    case 11:
      days =30;
      break;
    default:
       days =31;
       break;
    }
    printf("%d월의 일수는 %d입니다.\n", month,days);
    return 0;
}
```



