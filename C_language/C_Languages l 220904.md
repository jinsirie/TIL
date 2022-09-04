## C_Languages l 220904

#### 1. 문자열 포인터 자르기

- 문자열 포인터에 문자열 리터럴이 들어 있어서 읽기 전용인 상태라면 strtok 함수를 사용할 수 없다.

  ```c
  #define _CRT_SECURE_NO_WARNINGS		//strtok 보안 경고로 인한 컴파일 에러 방지
  #include <stdio.h>	
  #include <string.h>		//strtok. 함수가 선언된 헤더 파일
  
  char* s1 = malloc(sizeof(char) * 30);	//char  30개 크기 만큼 동적 메모리 할당
  
  strcpy(s1, "The Little Price");	//s1 문자열 복사
  
  char *ptr = strtok(s1, "");		//동적 메모리에 들어 있는 문자열은 자를 수 있음
  
  while (ptr != NULL)
  {
  	printf("%s\n", ptr);
  	ptr = strtok(NULL, "");
  }
  
  free(s1); // 동적 메모리 해제
  ```

  > - 빌드에러 확인하기

- strtok 함수는 공백 문자뿐만 아니라 다양한 특수 문자와 알파벳 영문자를 기준으로 문자열을 자를 수 있고, 기준 문자는 한 번에 여러 개를 지정할 수 있다.



#### 2. 날짜와 시간 값 자르기

```c
#define _CRT_SECURE_NO_WARNINGS // strtok 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include<string.h>	//strtok 함수가 선언된 헤더 파일


int main()
{
	char s1[30] = "2015-06-10T15:32:19"; //크기가 30인 char형 배열을 선언하고 문자열 할당

	char* ptr = strtok(s1, "-T:"); // -,T, 콜론을 기준으로 문자열을 자름
								  // 포인터 반환

	while (ptr != NULL)			//자른 문자열이 나오지 않을 떄까지 반복
	{
		printf("s\n", ptr);			//자른 문자열 출력
		ptr = strtok(NULL, "-T:");	//다음 문자열을 잘라서 포인터 반환
	}

	return 0;
}
```



![image-20220904215517552](https://github.com/jinsirie/TIL/blob/762ab360626e130458fa022e442a55922eebcc9f/img/image-20220904215517552.png)

> s 으로 왜...다 나올까...ㅜㅜ





#### 3. 자른 문자열 보관하기

```c
#define _CRT_SECURE_NO_WARNINGS // strtok 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <string.h>	//strtok 함수가 선언된 헤더 파일


int main() 
{
	char s1[30] = "The Little Prince";
	char *sArr[10] = { NULL, };

	int i = 0;
	
	char *ptr = strtok(s1, "");

	while (ptr != NULL)
	{
		sArr[i] = ptr;
		i++;

		ptr = strtok(NULL, "");
	}

	for (int i = 0; i < 10; i++)
	{
		if (sArr[i] != NULL)
			printf("%s\n", sArr[i]);
	}

	return 0;
}
```

![image-20220904220829097](https://github.com/jinsirie/TIL/blob/762ab360626e130458fa022e442a55922eebcc9f/img/image-20220904220829097.png)