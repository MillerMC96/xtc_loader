#include <iostream>
#include "gromacs/fileio/xtcio.h"

int main(void) {
    const char* filename = "../test_xtc/chainH_protein_H_50-60ns_pbc_whole.xtc";
    struct t_fileio* xtc_file;
    std::cout << "Testing read:" << std::endl;
    std::cout << "reading file: " << filename << std::endl;
    const char read_mode = 'r';
    xtc_file = open_xtc(filename, &read_mode);

}
