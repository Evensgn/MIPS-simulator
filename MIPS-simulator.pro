TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

HEADERS += \
    mips_simulator.hpp \
    mips_text_parser.hpp \
    include_define.hpp \
    evensgn_string.hpp \
    global_class.hpp \
    utility.hpp \
    mips_pipeline.hpp \
    mips_entry_processor.hpp
