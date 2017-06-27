#ifndef EVENSGN_STRING_HPP
#define EVENSGN_STRING_HPP

#include <sstream>
#include <string>
#include <regex>

int StringToInteger(const string &str) {
    int ret;
    std::stringstream ss(str);
    ss >> ret;
    return ret;
}

string DecodeEscapedString(const string &str) {
    string ret = str;
    std::regex re_007("\\a");
    std::regex re_008("\\b");
    std::regex re_012("\\f");
    std::regex re_010("\\n");
    std::regex re_013("\\r");
    std::regex re_009("\\t");
    std::regex re_011("\\v");
    std::regex re_092("\\\\");
    std::regex re_063("\\\?");
    std::regex re_039("\\\'");
    std::regex re_034("\\\"");
    std::regex re_000("\\0");
    ret = std::regex_replace(ret, re_007, "\a");
    return ret;
}

#endif // EVENSGN_STRING_HPP
