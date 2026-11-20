#include <assert.h>
#include <stdio.h>

int count_ones(unsigned int value)
{
    int count = 0;
    while (value != 0u) {
        count += (int)(value & 1u);
        value >>= 1;
    }
    return count;
}

int main(void)
{
    assert(count_ones(0u) == 0);
    assert(count_ones(7u) == 3);
    assert(count_ones(10u) == 2);
    assert(count_ones(255u) == 8);
    puts("PASS: count_ones");
    return 0;
}
