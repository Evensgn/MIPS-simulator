#ifndef MIPS_PIPELINE_HPP
#define MIPS_PIPELINE_HPP

#include "include_define.hpp"

class MIPS_Pipeline {
private:
    MIPS_Pipeline() = default;
    MIPS_Pipeline(const MIPS_Pipeline&);
    MIPS_Pipeline& operator=(const MIPS_Pipeline&);
public:
    static MIPS_Pipeline& instance() {
        static MIPS_Pipeline ins;
        return ins;
    }
};

#endif // MIPS_PIPELINE_HPP
