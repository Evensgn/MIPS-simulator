#ifndef UTILITY_HPP
#define UTILITY_HPP

template<class T>
bool InClosedInterval(const T &x, const T &a, const T &b) {
    return x >= a && x <= b;
}

#endif // UTILITY_HPP
