unsigned int xyz_global_variable = 100;
unsigned int uninitialized_global_variable2;

int bar(int local_variable) {
    return local_variable + xyz_global_variable + uninitialized_global_variable2;
}