### C_Language | 220525



#### 1.배열과 포인터

배열 이름 그 자체가 포인터이며, 배열 이름은 첫 번째 배열 원소의 주소와 같다.

```c
#include <stdio.h>

int main(void)
{
	int a[] = { 10, 20, 30, 40, 50 };

	printf("배열의 이름 = %u\n", a);
	printf("첫 번째 원소의 주소 = %u\n", &a[0]);

	return 0;

}
```





![image-20220525212033940](https://github.com/jinsirie/TIL/blob/5440ace14f14537d31c236ab5a9a94468cff47a2/img/image-20220525212033940.png)

#### 

#### 2. 포인터를 배열처럼 사용

- 배열 이름이 포인터라면 역으로 포인터도 배열 이름처럼 사용할 수 있다.



````c
#include <stdio.h>

int main(void)
{
	int a[] = { 10, 20, 30, 40, 50 };
	int* p;

	p = a;
	printf("a[0]=%d a[1]=%d a[2]=%d \n", a[0], a[1], a[2]);
	printf("p[0]=%d,p[1]=%d,p[2]=%d \n\n", p[0], p[1], p[2]);

	return 0;
}
````





![image-20220525212528273](https://github.com/jinsirie/TIL/blob/5440ace14f14537d31c236ab5a9a94468cff47a2/img/image-20220525212528273.png)







#### 3. 활용

대용량의 데이터가 필요한 함수가 있다고 할때, 데이터가 있는 위치를 알려주고 필요한 부분만을 사용



```c
#include <stdio.h>

void sub(int* ptr)
{
	printf("%d \n", ptr[10]);
}

int main(void)
{
	int large_data[] = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 };

	sub(large_data);
	return 0;

}
```



![image-20220525213703117](https://github.com/jinsirie/TIL/blob/5440ace14f14537d31c236ab5a9a94468cff47a2/img/image-20220525213703117.png)









