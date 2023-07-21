extern "C" [[noreturn]]
auto boot() -> void
{
    asm volatile(
        ""
        "int 0x10"
    );
    for (;;);
}
