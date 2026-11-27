#include <stdint.h>
#include <assert.h>
#include <stdio.h>

uint32_t update_register(uint32_t value)
{
    value |= UINT32_C(1) << 3;
    value &= ~(UINT32_C(1) << 1);
    return value;
}

int main(void)
{
    assert(update_register(0x06u) == 0x0Cu);
    assert(update_register(0u) == 8u);
    assert(update_register(8u) == 8u);
    assert(update_register(UINT32_MAX) == (UINT32_MAX ^ UINT32_C(2)));
    puts("PASS");
    return 0;
}
