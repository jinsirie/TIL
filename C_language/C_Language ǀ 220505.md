---
attachments: [Clipboard_2022-05-05-21-22-20.png]
title: C_Language | 220505
created: '2022-04-28T11:05:15.515Z'
modified: '2022-05-05T12:38:16.707Z'
---

#  C_Language | 220505

- 배열을 초기화하려면 값들의 리스트를 콤마로 분리하여 중괄호 {} 감싼 후에 이것을 배열을 선언할 때 대입해주면 된다.

  ```
  //5개의 요소로 된 배열 scores 선언.초긱값의 개수가 배열 요소의 개수보다 많은 경우에는 컴파일 오류가 남
  int scores[5] = { 10, 20, 30, 40, 50};
  ```





```
#include <stdio.h>
#define SIZE 5

int main(void)
{
	int scores[SIZE] = { 31,63,62,87,14 };
	int i;

	for (i = 0; i < SIZE; i++)
		printf("scores[%d]= %d\n", i, scores[i]);

	return 0;

}
```
![](https://github.com/jinsirie/TIL/blob/8ccd45e206e0e3b41e497c7cf641a33fc06dfd82/img/Clipboard_2022-05-05-21-22-20.png)

> [TIP]
> 만약 초깃값의 개수가 많아지게 되면 정확한 개수를 센다는 것이 어려움으로 sizeof >연산자를 사용한다. sizeof  연산자는 자료형이나 변수의 크기를 바이트 단위로 >계산하는 연산이다. 이것을 배열 요소의 크기로 나누게 되면 배열요소가 몇 개나 >있는지 쉽게 계산할 수있다.



## 함수
함수란 특정 작업을 수행하여 그 결과를 반환하는 문장의 집합이다. 언어에 따라서 프로시저(Procedure)등으로 불리며, 입력 데이터를 받아서 처리한 후에 결과값을 반환한다.


### CASE.1

```
int get_integer()
{
	int value;
	printf("정수를 입력하시오: ");
	scanf_s("%d", &value);
	return value;
}

```


### CASE.2
> 반환 값 : int
> 함수 이름 : get_max
> 매개 변수 : int x, int y


```
int get_max(int x, int y)
{
	if (x > y) return(x);
	else return(y);
}
```

