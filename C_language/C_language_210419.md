### C Language|210419

>1. 대입연산자
>2. 복합대입 연산자
>3. 관계 연산자
>4. 형변환





### 1.대입연산자(assignment operator)

변수가 값을 저장하기 위하여 사용하는 연산자

수학에서는 =이 등호지만 C에서는 변수에 값을 대입하는 의미



### 2. 복합대입 연산자

```c
#include <stdio.h>

int main(void)
{
	int x = 10, y = 10;
	printf("x =%d y=%d \n", x, y);

	x += 1;
	printf("(x +=1)이후 x =%d\n", x);
	y *= 2;
	printf("(y*=2)이후 y=%d\n", y);

	return 0;
}
```



### 3. 관계 연산자(relation operator)

두 개의 피연산자를 비교하는데 사용된다.

```c
#include <stdio.h>

int main(void)
{
	int x, y;

	printf("두 개의 정수를 입력하시오: ");
	scanf_s("%d%d", &x, &y);

	printf("%d == %d 의 결괏값: %d\n",x ,y, x==y);
	printf("%d !  =%d의 결괎값: %d\n", x, y, x != y);
	printf("%d > %d의 결괏값: %d\n", x, y, x > y);
	printf("%d >= %d의 결괏값: %d\n", x, y, x >= y);
	printf("%d <= %d의 결과값: %d\n", x, y, x <= y);

	return 0;
}
```

#### 

### 4. 형변환

데이터의 타입을 변환시키는 처리과정

ex. int -> double

#### 4.1 자동적인 형변환

```c
double f;
f =10;
```

- f가 double형일 경우에는 정수 10이 double형으로 변환된 후에 변수 F으로 대입된다--->올림변환(promotion)

```
int x;
x =3.14; // i에는 3이 저장된다.
```

- 하나의 수식에서 서로 다른 자료형이 사용되면 모든 자료형은 그 중에서 가장 높은 등급의 자료형으로 자동적으로 변환한다.

#### 4.2 명시적인 형변환

형변환 연산자는 캐스트 연산자라고도 한다.

```c
#include <stdio.h>
int main(void)
{
	int i;
	double f;

	f = 5 / 4;
    //피연산자가 정수이므로 정수 연산으로 1이된다.
    //이것이 double형 변수로 대입되므로 올림변환 발생
    //1.0이 f으로 저장
    
	printf("(5/4)=%f\n", f);
	f = (double)5 / 4;
 
    // 형변환 연산자가 우선순위가 높기때문에 먼저 실행
    //정수 5가 5.0 으로 변환
    
	printf("(double)5 / 4 =%f\n", f);

	i = 1.3 + 1.8;
	printf("1.3+1.8 =%d\n", i);
    
    //두 개의 피연산자 부동소수점수이므로 수식의 결과도 3.1
    //정수형 i으로 대입시 3이 i으로 전환

	i = (int)1.3 + (int)1.8;
	printf("(int)1.3 + (int)1.8 = %d\n", i);

    // 1+1 이되어 2가 저장된다
    
	return 0;
}
```

