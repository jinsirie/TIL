---
attachments: [Clipboard_2022-05-14-20-00-17.png, Clipboard_2022-05-14-20-03-55.png, Clipboard_2022-05-14-20-06-44.png, Clipboard_2022-05-14-20-11-19.png, Clipboard_2022-05-14-20-16-45.png]
title: C_Language | 220514
created: '2022-05-14T10:55:11.995Z'
modified: '2022-05-14T11:21:16.214Z'
---

# C_Language | 220514

### 1. 지역 변수와 전역변수
#### 1.1 지역변수
      함수 안에 선언되는 변수,블록안에 선언되는 변수


```
#include <stdio.h>
int compute_sum(int n);

int main(void)
{
	int sum;
	sum = compute_sum(100);
	printf("1부터 100까지의 합=%d \n", sum);
	return 0;
}

int compute_sum(int n)
{
	int i;
	int result = 0;

	for (i = 1; i <= n; i++)
		result += i;
	return result;
}

```


![](https://github.com/jinsirie/TIL/blob/dda7c58c780fbf07edd1edffa3aaca051e75bfef/img/Clipboard_2022-05-14-20-00-17.png)


### 2. 전역 변수
함수 외부에서 선언되는 변수, 지역 변수의 범위가 함수나 블록으로 제한되는  반면, 전역 변수의 범위는 소스 파일 전체이다.

```
#include <stdio.h>

int global = 123;

void sub1()
{
	printf("%d\n", global);
}

void sub2()
{
	printf("%d\n", global);
}

int main(void)
{
	sub1();
	sub2();
	return 0;
}
```

![](https://github.com/jinsirie/TIL/blob/dda7c58c780fbf07edd1edffa3aaca051e75bfef/img/Clipboard_2022-05-14-20-03-55.png)



### 3. 같은 이름의 전역 변수와 지역 변수
만약 전역 변수와 지역 변수가 이름이 같다면 지역 변수가 전역 변수보다 우선시 된다.
```
#include <stdio.h>

int sum = 123;

int main(void)
{
	int sum = 321;
	printf("%d \n", sum);
	return 0;
}
```
![](https://github.com/jinsirie/TIL/blob/dda7c58c780fbf07edd1edffa3aaca051e75bfef/img/Clipboard_2022-05-14-20-06-44.png)


### 4. 정적 변수
블록을 벗어나도 자동으로 삭제되지 않는 변수 = 정적변수



```
#include <stdio.h>

void sub(void)
{
	int auto_count = 0; // 지역 변수
	static int static_count = 0; //정적 변수

	auto_count++;
	static_count++;
	printf("auto_count=%d\n", auto_count);
	printf("static_count=%d\n", static_count);
}

int main(void)
{
	sub();
	sub();
	sub();
	return 0;
}
```

![](https://github.com/jinsirie/TIL/blob/dda7c58c780fbf07edd1edffa3aaca051e75bfef/img/Clipboard_2022-05-14-20-11-19.png)



### 5. 순환호출
함수는 자기 자신을 호출할 수도 있는데, 이것을 순환(recursion) 이라고 하며, 순환은 함수가 자기 자신을 호출하여 문제를 해결하는 프로그래밍 기법


```
//순환적인 팩토리얼 함수 계산
#include <stdio.h>
long factorial(int n);

int main(void)
{
	int x = 0, result;
	printf("정수를 입력하시오");
	scanf_s("%d", &x);

	result = factorial(x);
	printf("%d!은 %d입니다.\n", x, result);

	return 0;
}

int factorial(int n)
{
	printf("factorials(%d)\n", n);

	if (n <= 1) return 1;
	else return n * factorial(n - 1);
}
```

![](https://github.com/jinsirie/TIL/blob/dda7c58c780fbf07edd1edffa3aaca051e75bfef/img/Clipboard_2022-05-14-20-16-45.png)
