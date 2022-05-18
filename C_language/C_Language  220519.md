### C_Language | 220518



#### 1.  함수가 외부로부터 데이터를 받는 방법은 2가지

##### 	1.1 값에 의한 호출(call-by-value) : 함수가 호출될 때 복사본이 함수로 전달되면 값에 의한 호출

#####     1.2 참조에 대한 호출(call-by-reference) : 만약 함수가 호출될 때 원본을 함수로 전달하는 방법. 함수 안에서 매개변수를 변경하면 원본 변수가 변경



- CASE #1 값에 의한 호출

```c
#include <stdio.h>

void modify(int value)
{
	value = 99; //매개 변수를 변경한다
}

int main(void)
{
	int number = 1;

	modify(number);
	printf("number =%d\n", number);

	return 0;
}
```





![image-20220519055845671](https://github.com/jinsirie/TIL/blob/e3b2d40a8b3ddb171d9ba99f2368a3cc1381ebdc/img/image-20220519055845671.png)

- CASE #2 참조에 의한 호출

```c
#include <stdio.h>

void modify(int* ptr)
{
	*ptr = 99; //매개 변수를 통하여 원본을 변경한다.
}

int main(void)
{
	int number = 1;

	modify(&number); //주소를 계산해서 보낸다.
	printf("number = %d\n", number);

	return 0;
}
```







![image-20220519060154249](https://github.com/jinsirie/TIL/blob/e3b2d40a8b3ddb171d9ba99f2368a3cc1381ebdc/img/image-20220519060154249.png)

- CASE #3 주어진 변수의 값을 교환하는 함수
  - C에서는 함수 호출이 기본적으로 값의 호출이기때문에 매개변수인 x,y를 교환한다고 해서 변수 a,b가 교환되지 않는다.

```c
#include <stdio.h>
void swap(int x, int y)
{
	int tmp;

	tmp = x;
	x = y;
	y = tmp;
}
int main(void)
{
	int a = 10, b = 20;

	swap(a, b);
		printf("swap()호출 후, a=%d b=%d\n", a, b);
	return 0;
}
```











![image-20220519060524640](https://github.com/jinsirie/TIL/blob/e3b2d40a8b3ddb171d9ba99f2368a3cc1381ebdc/img/image-20220519060524640.png)