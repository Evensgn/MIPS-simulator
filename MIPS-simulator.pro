TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

HEADERS += \
    mips_simulator.hpp \
    define_switches.h \
    mips_text_parser.hpp
