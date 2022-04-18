### C Language | 220408



#### 1.Break문

> 반복 루프를 벗어나기 위해 사용

```c
# include <stdio.h>

int main(void)
{
    int i;
    double number, sum = 0.0

    for (i = 1; i <= 10; i++)
    {
        printf("%d번째 실수를 입력하시오: ",i)
        scanf("lf", &number);   // double형 실수는 %lf를 사용한다.


        // 사용자가 음수를 입력하면 반복 루프가 종료된다.
        if (number <0.0)
            break;
        sum += number;
            }
        printf("합계 = %f", sum);
        return 0;
}
```

![image-20220418212707916](https://github.com/jinsirie/TIL/blob/668d4c4328bb8c4a49bfe4d6a10890c201c6084f/img/image-20220418212707916.png)

- 위의 반복 루프는 사용자로부터 10개의 실수를 받아서 합계를 출력, 중간의 음수를 입력하면 반복루프 exit



#### 2. Continue 문

> 현재 수행하고 있는 반복 과정의 나머지를 건너뛰고 다음 반복을 시작하게 만듬

```
# include <stdio.h>

int main(void)
{
	int i;
	for (i = 0; i < 10; i++) {
		if (i % 2 == 1)
			continue;
		printf("정수: %d\n", i);
	}
	return 0;
}
```



![image-20220418213135976](https://github.com/jinsirie/TIL/blob/668d4c4328bb8c4a49bfe4d6a10890c201c6084f/img/image-20220418213135976.png)
