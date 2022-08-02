## 





#### #Case.1 Switch에서 판별할 수 있는 자료형

- switch 에서 판별할  변수는 정수 자료형만 사용할 수 있고, 실수 자료형(float,double)은 사용할 수 없습니다. 문자 자료형(char)도 정수 자료형으로 switch에서 사용가능

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	char c1;

	scanf("%c", &c1);	//값을 입력 받음

	switch (c1)
	{
	case 'a':
		printf("a입니다.\n");
		break;
	case 'b':
		printf("b입니다.\n");
		break;
	default:
		printf("default\n");
		break;
	}

	return 0;
}
```

```tex
1>------ 빌드 시작: 프로젝트: switch_char, 구성: Debug Win32 ------
1>Debug\switch_char.obj : warning LNK4042: 개체가 두 번 이상 지정되었습니다. 나머지는 무시됩니다.
1>MSVCRTD.lib(exe_winmain.obj) : error LNK2019: _WinMain@16"int __cdecl invoke_main(void)" (?invoke_main@@YAHXZ) 함수에서 참조되는 확인할 수 없는 외부 기호
1>C:\Users\User\source\repos\switch_char\Debug\switch_char.exe : fatal error LNK1120: 1개의 확인할 수 없는 외부 참조입니다.
1>"switch_char.vcxproj" 프로젝트를 빌드했습니다. - 실패
========== 빌드: 성공 0, 실패 1, 최신 0, 생략 0 ==========
```



#### #Case.2  for 반복문 사용하기

```c
#include <stdio.h>

int main()
{
	for (int i = 0; i < 100; i++)
	{
		printf("Hello, world!\n");
	}

	return 0;
}
```

- 초기식에서 변수를 선언하는 것은 C99 방식이며, 변수를 루프 본체 안에서만 사용할 수 있는 단점이 있다.
- C99 또는 C11표준으로 컴파일하는 -std=c99 or -std=c11옵션을 사용할 수 있다.
  - 도구 > 컴파일러 설정 > 컴파일러 추가 명령에서 확인할 수 있음