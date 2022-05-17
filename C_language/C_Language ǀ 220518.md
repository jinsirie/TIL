

# C_Language | 220518

### 1. 포인터와 관련된 2개의 연산자 (주소연산자 &, 간접 참조 연산자 *)



#### 1.1 예제1
```
#include <stdio.h>

int main(void)
{
	int number = 10;
	int * p;

	p = &number;

	printf("변수 number의 주소 = %u\n", &number); //변수의 주소 출력
	printf("포인터의 값 = %u\n", p); //포인터의 값 출력
	printf("변수 number의 값 = %d\n", number);
	printf("포인터가 가리키는 값 = %d\n", *p); //포인터를 통한 간접 참조 값 출력

	return 0;

}
```

!Clipboard_2022-05-17-05-40-18.png(https://github.com/jinsirie/TIL/blob/5139bfbb5ae01164f3fc0e817f84a272913bb42f/img/Clipboard_2022-05-17-05-40-18.png)



#### 1.2 예제 2

```
#include <stdio.h>

int main(void)
{
	int number = 10;
	int * p;

	p = &number;
	printf("변수 number의 값 = %d\n", number);

	*p = 20;
	printf("변수 number의 값 = %d\n", number);

	return 0;

}

```


!Clipboard_2022-05-17-05-43-40.png(https://github.com/jinsirie/TIL/blob/5139bfbb5ae01164f3fc0e817f84a272913bb42f/img/Clipboard_2022-05-17-05-43-40.png)


### 2. 포인터 연산
- 포인터 연산에서는 덧셈과 뺼셈 연산만 가능
- 포인터에 증가연산인 ++ 를 적용하였을 경우, 증가되는 값은 포인터가 가리키는 객체의 크기.
- 포인터의 증감 연산 시 증가되는 값
-- char 1bytes
-- short 2bytes
-- int 4 bytes
-- float 4 bytes
-- double  8 bytes


```
#include <stdio.h>

int main(void)
{
      //char형 포인터 pc, int 포인터 pi, double형 포인터 pd선언한다.
	char* pc;
	int* pi;
	double* pd;

    //pc,pi,pd에 절대 주소 10000을 대입한다. 절대 주소는 사용하지 않는 것이 좋지만 여기서는 명확한 설명을 위해 사용한다.

    //pc,pi,pd의 현재 값을 출력한다. 형식지정자 %d 지정한다,
	pc = (char*)10000;
	pi = (int*)10000;
	pd = (double*)10000;
	printf("증가 전 pc =%d,pi=%d,pd=%d\n", pc, pi, pd);

     //pc,pi,pd의 값을 증가 연산자 ++을 이용하여 증가시킨다.
	pc++;
	pi++;
	pd++;
	printf("증가 후 pc=%d,pi=%d,pd=%d\n", pc, pi, pd);

	return 0;
}

```


!Clipboard_2022-05-18-05-48-44.png(https://github.com/jinsirie/TIL/blob/5139bfbb5ae01164f3fc0e817f84a272913bb42f/img/Clipboard_2022-05-18-05-48-44.png)



