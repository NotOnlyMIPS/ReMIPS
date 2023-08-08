#include <stdio.h>
#include <stdint.h>
int main() {
int64_t a = 0x7cffebll * 0xffff9b25l;
printf("%llx", a);
return 0;
}
