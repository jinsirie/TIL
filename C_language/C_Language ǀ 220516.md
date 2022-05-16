---
attachments: [Clipboard_2022-05-16-21-42-05.png]
title: C_Language | 220516
created: '2022-05-16T12:29:41.437Z'
modified: '2022-05-16T12:47:17.055Z'
---

# C_Language | 220516
### 1. 포인터의 정의
- 포인터(pointer) 메모리의 주소를 가지고 있는 변수
- 포인터는 변수가 저장되는 주소와 깊은 관계
- 프로그램에서 변수를 만들 면 이들 변수는 컴파일러에 의하여 메모리 공간에 배치
- 변수가 메모리에 배치될 때 변수의 크기에 따라서 차지하는 메모리 공간의 크기가 달라짐
-- char 변수 1byte , int 변수 4byte , float 변수 4byte


```
#include <stdio.h>

int main(void)
{
	int i = 10;
	char c = 69;
	double f = 12.3;

	printf("i의 주소: %u\n", &i); //변수 i의 주소출력
	printf("c의 주소: %u\n", &c); //변수 c의 주소출력
	printf("f의 주소: %u\n", &f); //변수 f의 주소 출력

	return 0;
}
```


![](https://github.com/jinsirie/TIL/blob/ae9e9c2f54caaf71669dda68194294c1438dbbd4/img/Clipboard_2022-05-16-21-42-05.png)


```
int *p; //정수를 가리키는 포인터
```


```
int number = 10; // 정수형 변수  number 선언
int *p;          //포인터 p의 선언
p = &number;      //변수 number의 주소가 포인터 p로 대입
```


### 2.간접 참조 연산자
- 포인터가 유용한 이유는 포인터를 통하여 포인터가 가리키는 위치의 값을 읽어오거나 변경할 수 있기 때문이다. 포인터 p가 가리키는 위치에 저장된 내용을 가져오려면 p앞에 *기호를 붙여서 *p한다



```
int number = 10;
int *p;
p=&number;

print("%d\n", *p);  //10이 출력된다.

```
