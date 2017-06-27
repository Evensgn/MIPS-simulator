TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

HEADERS += \
    mips_simulator.hpp \
    mips_text_parser.hpp \
    operation_processor.hpp \
    include_define.hpp
