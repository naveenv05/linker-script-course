unsigned int initialized_global_variable = 42;
unsigned int uninitialized_global_variable;

extern char _src_data_start;
extern char _dst_data_start;
extern char _dst_data_end;
extern char _bss_start;
extern char _bss_end;

__attribute__((section("resetVector")))
void copy_data_section(void) {
    char *src = &_src_data_start;
    char *dst = &_dst_data_start;
    char *dst_end = &_dst_data_end;
    char *bss_start_ptr = &_bss_start;
    char *bss_end_ptr = &_bss_end;

    while (dst < dst_end) {
        *dst++ = *src++;
    }

    while (bss_start_ptr < bss_end_ptr) {
        *bss_start_ptr++ = 0;
    }
}
int foo(int local_variable) {
    return local_variable + initialized_global_variable + uninitialized_global_variable;
}