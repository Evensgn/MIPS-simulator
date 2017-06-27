#ifndef EVENSGN_STRING_HPP
#define EVENSGN_STRING_HPP

#include <sstream>
#include <string>

int StringToInteger(const std::string &str) {
    int ret;
    std::stringstream ss(str);
    ss >> ret;
    return ret;
}

std::string DecodeEscapedString(const std::string &str) {
    std::string ret = "";
    int pos = 0;
    char c;
    while (pos < (int)str.length()) {
        c = str[pos++];
        if (c == '\\' && pos != (int)str.length()) {
            switch (str[pos]) {
            case 'a': c = '\a'; break;
            case 'b': c = '\b'; break;
            case 'f': c = '\f'; break;
            case 'n': c = '\n'; break;
            case 'r': c = '\r'; break;
            case 't': c = '\t'; break;
            case 'v': c = '\v'; break;
            case '\\': c = '\\'; break;
            case '?': c = '\?'; break;
            case '\'': c = '\''; break;
            case '\"': c = '\"'; break;
            case '0': c = '\0'; break;
            default: continue; // invalid escaped sequence
            }
            ++pos;
        }
        ret += c;
    }
    return ret;
}

#endif // EVENSGN_STRING_HPP
