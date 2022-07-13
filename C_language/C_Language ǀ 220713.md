## C Languages | 220713





#문자는 'a'와 같이 작은 따음표로 표기

#printf 함수에서 문자를 출력할 때는 서식 지정자 %c를 사용한다.

#문자,숫자, 제어문자는 0부터 255까지 정수에 대응되며 이 규칙을 ASCII코드라고 부른다.

#리터럴은 값 그 자체를 뜻하며, 상수는 const를 붙여서 선언하며 리터럴이 저장된 공간.



##### #CASE1 정수 계산하기

```c
int main()
{
	int num1;
	int num2;

	num1 = 1 + 2;
	num2 = 1 - 2;

	printf("%d\n", num1);
	printf("%d\n", num2);

	return 0;
}
```





##### #CASE 2 실수 계산하기

```c
#include <stdio.h>

int main()
{
	float num1;
	float num2;

	num1 = 1.0f + 0.456789f; //1.0에서 0.456789를 더해서 num1에 저장
	num2 = 1.0f - 0.456789f; //1.0에서 0.456789를 빼서 num2에 저장


	printf("%f\n", num1);
	printf("%f\n", num2);

	return 0;
}
```



##### #CASE 3 변수 하나에서 값을 더하거나 빼기

```c
#include <stdio.h>

int main()
{
	int num1 = 1;
	int num2 = 1;

	num1 = num1 + 2;
	num2 = num2 - 2;

	printf("%d\n", num1);
	printf("%d\n", num2);

}
```



- 증가 연산자 사용하기
  - 변수 ++;
  - ++변수;

```c
#include <stdio.h>

int main()
{
	int num1 = 1;

	num1++;

	printf("%d\n", num1);

	return 0;
}
```

- 감소 연산자 사용하기

  - 변수--;

  - --변수;

    ```c
    #include <stdio.h>
    
    int main()
    {
    	int num1 = 2;
    
    	num1--;
    
    	printf("%d\n", num1);
    
    	return 0;
    }
    ```







##### #CASE 5 증감 연산자의 위치에 따른 차이점 알아보기

- 후위 연산자(postfix)
  - (1) 현재 변수의 값이 다른 변수에 할당된다( 값의 변동이 없음)
  - (2) 증감 연산자가 수행되어 변수의 값이 1 증가(감소)된다.
- 전위 연산자(prefix)
  - (1) 증감 연산자가 수행되어 변수의 값이 1이 증가(감소)된다.
  - (2) 변수의 바뀐 값이 다른 변수에 할당된다.

```c
#include  <stdio.h>

int main()
{
	int num1 = 2;
	int num2 = 2;
	int num3;
	int num4;

	num3 = num1++;			// num1의 값을 num3에 할당한 뒤 num1의 값을 1 증가시킴
	num4 = num2--;			// num2의 값을 num3에 할당한 뒤 num2의 값을 1 감소시킴

	/*
	num3 = ++num1;			//num1의 값을 1 증가시킨 뒤 num3에 할당
	num4 = --num2;			//num2의 값을 1 감소시킨 뒤 num4에 할당

	*/

	printf("%d %d\n", num3, num4);

	return 0;
}
```







