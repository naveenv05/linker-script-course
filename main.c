unsigned int initialized_global_variable = 42;
unsigned int uninitialized_global_variable;

int foo(int local_variable) {
    return local_variable + initialized_global_variable + uninitialized_global_variable;
}