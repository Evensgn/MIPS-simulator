TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

HEADERS += \
    mips_text_processor.hpp \
    mips_simulator.hpp \
    define_switches.h
