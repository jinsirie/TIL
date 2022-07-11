## C Languages | 220711

#### 1.입력 값을 변수에 저장하기

- Windows나 OS X처럼 GUI화면 나오는 프로그램은 마우스와 키보드를 사용하여 입력을 받습니다. 하지만 C언어를 배울 때는 콘솔(터미널, 명령 프롬프트) 에서 글자만 입출력하게 된다.
- 이렇게 콘솔에서 입력하는 방식은 표준 입력(standard input, stdin), 출력하는 방식을 표준 출력이라고 한다.





#### #CASE 1. 정수 입력받기 (scanf 함수 이용)

```c
#define _CRT_SECURE_NO_WARNINGS //scanf 보안 경고로 인한 컴파일 에러 방지 visual stdio에서만
#include <stdio.h>

int main()
{
	int num1;

	printf("정수를 입력하세요: ");
	scanf("%d", &num1);	  // 표준 입력을 받아서 변수에  저장

	printf("%d\n", num1); // 변수의 내용 출력

	return 0;
}
```

> 키보드 입력이 표준 입력이고, 콘솔 글자를 보여주는 것이 표준 출력!



#### #CASE 2. 한 번에 정수 두 개 입력받기

```c
#define _CRT_SECURE_NO_WARNINGS			//scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	int num1, num2;

	printf("정수를 두 개 입력하세요: ");
	scanf("%d %d", &num1, &num2);		//값을 두 개 입력받아서 변수 두 개에 저장

	printf("%d %d\n", num1, num2);		//변수의 내용을 출력

	return 0;
}
```



#### #CASE 3. 실수 입력받기

```c
#define _CRT_SECURE_NO_WARNINGS			//scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	float num1;

	printf("실수를 입력하세요: ");
	scanf("%f", &num1);			//실수를 입력받아서 변수에 저장

	printf("%f\n", num1);		//변수의 내용을 출력

	return 0;
}
```

- 변수를 double로 선언했다면 scanf에 서식 지정자로 %lf를 넣고, long double로 선언했다면 %Lf를 넣습니다.(double은 printf로 출력할 때는 %f를 써보되지만 scanf는 %lf를 써야한다.)

```c
double num1;
scanf("%lf", &num1);  	//자료형이 double 일때는 %lf

long double num2;
scanf("%Lf",  &num2); //자료형이 long double 일 때는 %Lf
```



#### #CASE 4. 문자 입력받기

```c
#define _CRT_SECURE_NO_WARNINGS			//scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char c1;

	printf("문자를 입력하세요: ");
	scanf("%c", &c1);					//문자를 입력받아서 변수에 저장

	printf("%c\n", c1);					//변수의 내용을 출력

	return 0;
}
```

- scanf 함수 대신 getchar 함수를 사용해도 문자를 입력받을 수 있습니다.  getchar 함수는 표준 입력에서 문자 하나를 입력받은 뒤 결과를 반환합니다. 만약 문자 여러 개를 입력해도 첫 번째 문자만 반환 한다.
- getchar 함수에 대응하는 함수로 putchar가 있는데 이 함수는 문자 하나를 화면에 출력한다.