### C Language|210627

>1. 반복문
>   1. 조건 제어 반복(While 문) : 특정한 조건이 만족되면 계속 반복된다.
>   2. 횟수 제어 반복(for 문) : 정해진 횟수 만큼 반복한다.





#### 1. While문

while문은 조건식의 값이 참이면 문장을 반복 실행한다. 조건식의 값이 거짓이 되면 반복을 중단한다. 문장은 단일 명령어 문장이거나 블록이 될수 있다. 만약 반복 실행하는 문장이 하나가 아니고 여러 개 이면 중괄호를 이용하여 문장들을 감싸서 블록으로 만들어 주어야 한다.





```c
#include <stdio.h>

main(void)
{
	int i = 0;
	while (i < 10)
	{
		printf("i=%d", i);
		i++;
	}
	return 0;
}
```





![image-20210627203527071](https://github.com/jinsirie/TIL/blob/ae8ec8417cfab8dacfeba1adaef3a34609f08799/img/image-20210627203527071.png)





```c
#include <stdio.h>

int main(void)
{
	int meter;
	int i = 0;

	while (i < 3)
	{
		meter = i * 1609;
		printf("%d 마일은 %d 미터입니다 \n", i, meter);
		i++;

	}
	return 0;
}
```

![image-20210627204330957](https://github.com/jinsirie/TIL/blob/ae8ec8417cfab8dacfeba1adaef3a34609f08799/img/image-20210627204330957.png)





- 팩토리얼 값을 반복루프로 계산해보기

  - 5!

  ```c
  #include <stdio.h>
  
  int main(void)
  {
  	int i = 5;
  	long factorial = 1;
  
  	while (i >= 1)
  	{
  		factorial *= i;
  		i--;
  	}
  	printf("%d\n", factorial);
  
  	return 0;
  }
  
  ```

  ![image-20210627204734590](https://github.com/jinsirie/TIL/blob/ae8ec8417cfab8dacfeba1adaef3a34609f08799/img/image-20210627204734590.png)







-   반복을 이용하여서 구구단을 출력시켜 보기. 출력할 단은 사용자가 지정한다. 하나의 단은 9줄로 되어 있으므로 9번 반복시키면 될것



```c
//while 문을 이용한 구구단 출력 프로그램
#include <stdio.h>

int main(void)
{
	int n;
	int i = 1;

	printf("출력하고 싶은 단 : ");
	scanf_s("%d", &n);

	while (i <= 9)
	{
		printf("%d*%d = %d \n", n, i, n * i);
		i++;
	}
	return 0;


}
```

![image-20210627205942077](https://github.com/jinsirie/TIL/blob/ae8ec8417cfab8dacfeba1adaef3a34609f08799/img/image-20210627205942077.png)
