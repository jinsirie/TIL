## C_Languges l 220918

#### 1. 공용체 사용하기

- 공용체는 멤버 중에서 가장 큰 자료형의 공간을 공유

```
union 공용체 이름 {
	자료형 멤버 이름;
};
```



```c
#define _CRT_SECURE_NO_WARNINGS    // strcpy 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <string.h>    // strcpy 함수가 선언된 헤더 파일

union Box {    // 공용체 정의
    short candy;     // 2바이트
    float snack;     // 4바이트
    char doll[8];    // 8바이트
};

int main()
{
    union Box b1;   // 공용체 변수 선언

    printf("%d\n", sizeof(b1));  // 8: 공용체의 전체 크기는 가장 큰 자료형의 크기

    strcpy(b1.doll, "bear");     // doll에 문자열 bear 복사

    printf("%d\n", b1.candy);    // 25954
    printf("%f\n", b1.snack);    // 4464428256607938511036928229376.000000
    printf("%s\n", b1.doll);     // bear

    return 0;
}
```

- 공용체는 보통 main 함수 바깥에 정의하고, 만약 함수 안에서 공용체를 정의하면 해당 함수안에서만 고용체를 사용할 수 있다.
- 다음과 같이 일반 변수로 선언한 공용체의 멤버에 접근할 때는 .(점)을 사용한다.

- 구조체와 달리 공용체는 멤버 중에서 가장 큰 자료형의 공간을 공유하고, 어느 한 멤버에 값을 저장하면 나머지 멤버의 값은 사용할 수 없는 상태가 된다.

- 공용체는 임베디드 시스템이나 커널 모드 디바이스 드라이버 등에 사용하며, 보통은 거의 쓰지 않는다.



#### 2. 공용체 포인터를 선언하고 메모리 할당하기

```c
#define _CRT_SECURE_NO_WARNINGS     // strcpy 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <stdlib.h>    // malloc, free 함수가 선언된 헤더 파일
#include <string.h>    // strcpy 함수가 선언된 헤더 파일

union Box {    // 공용체 정의
    short candy;
    float snack;
    char doll[8];
};

int main()
{
    union Box *b1 = malloc(sizeof(union Box));    // 공용체 포인터 선언, 메모리 할당

    printf("%d\n", sizeof(union Box));    // 8: 공용체의 전체 크기는 가장 큰 자료형의 크기

    strcpy(b1->doll, "bear");     // doll에 문자열 bear 복사

    printf("%d\n", b1->candy);    // 25954
    printf("%f\n", b1->snack);    // 4464428256607938511036928229376.000000
    printf("%s\n", b1->doll);     // bear

    free(b1);    // 동적 메모리 해제

    return 0;
}
```

- malloc 함수로 공용체 포인터에 메모리를 할당할 수 있으며 이때는 멤버에 접근할 때 -> (화살표 연산자)를 사용합니다.



#### 3. 열거형 사용하기



```c
#include <stdio.h>

enum DayOfWeek {    // 열거형 정의
    Sunday = 0,         // 초깃값 할당
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday
};

int main()
{
    enum DayOfWeek week;    // 열거형 변수 선언

    week = Tuesday;    // 열거형 값 할당

    printf("%d\n", week);   // 2: Tuesday의 값 출력

    return 0;
}
```

- enum 키워드 뒤에 열거형 이름 지정 후, { } (중괄호) 안에 값을 나열한다. 여기서 각 값은 ,(콤마)로 구분하여 =(할당 연산자)을 사용하여 값을 할당할 수 있습니다.







#### 4. 함수 사용하기

```c
#include <stdio.h>

void hello()    // 반환값이 없는 hello 함수 정의
{
    printf("Hello, world!\n");    // Hello, world! 출력
}

int main()
{
    hello();    // hello 함수 호출

    return 0;
}
```

- 함수를 만들려면 main 함수 바깥에서 작성해야하며, 다음과 같이 main 함수 위에서 반환 값의 자료형은 void , 이름은 hello 인 함수를 정의했다.

> 지역변수 : 함수 안에 선언된 변수를 지역 변수라고 부르는데, 이 지역 변수의 특징은 함수가 끝나면 사라진다.



##### 4.1 함수 원형 (function prototype)

```c
#include <stdio.h>

void hello();    // 반환값이 없는 hello 함수 원형 선언

int main()
{
    hello();    // hello 함수 호출

    return 0;
}

void hello()    // 반환값이 없는 hello 함수 정의
{
    printf("Hello, world!\n");    // Hello, world! 출력
}
```

- main 함수 위에서 void hello (); 와 같이 반환값 자료형, 함수 이름, ( )를 적어준 뒤 세미콜론을 붙이면 hello 함수가 있다는 것을 알려줄 수 있다.

