#include <iostream>
#include "gromacs/fileio/xtcio.h"

int main(void) {
    const char* filename = "text_xtc/chainH_protein_H_50-60ns_pbc_whole.xtc";
    std::cout << "Testing read:" << std::endl;
    std::cout << "reading file: " << filename << std::endl;
}