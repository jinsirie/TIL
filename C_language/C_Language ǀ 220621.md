#### C_Language | 220620

#예제 연습



##### 1. 한 글자씩 쓰기

- fputc(c,fp) : 문자 c를 fp에 쓴다. fp FILE 포인터

```c
#include<stdio.h>

int main(void)
{
	FILE *fp == NULL;
	fp = fopen("alphabet.txt", "w");
	if (fp == NULL) {
		fprintf(stderr, "파일 alphabet.txt.을 열 수 없습니다.\n");
		exit(1);
	}

	char c;
	for (c = 'a'; c <= 'z'; c++)
		fputc(c, fp);
	fclose(fp);
	return 0;
}
```





##### 2. 한 글자씩 읽기

- fgetc(fp) : fp에서 하나의 문자를 읽어서 반환한다. fp는 FILE 포인터이다



```c
#include <stdio.h>

int main(void)
{
	FILE* fp = NULL;
	int c; 

	fp = fopen("alphanet.txt", "r");
	if (fp == NULL) {
		fprintf(stderr, "원본 파일 alphabet.txt.를 열수 없습니다");
		exit(1);
	}

	while ((c = fgetc(fp)) != EOF)
		putchar(c);

	fclose(fp);
	return 0;

}
```



##### 3. 한 줄씩 읽고 쓰기

- fputs(s,fp): 문자열 s를 fp에 쓴다. fp는 FILE 포인터
- fgets(fp) : fp에서 한 줄을 읽어서 반환한다. fp이 FILE 포인터이다.

```c
#include <stdio.h>

int main(void)
{
	FILE* fp;
	char str[100];

	fp = fopen("file.txt", "w");

	if (fp == NULL) {
		fprintf(stderr, "파일 file.txt 를 열수 없습니다.\n");
			exit(0);
	}
	do {
		gets(str);
		fputs(str, fp);
	} while (strlen(str) != 0);

	fclose(fp);
	return 0;
}
```

