#ifndef UTILITY_HPP
#define UTILITY_HPP

template<class T>
bool InClosedInterval(const T &x, const T &a, const T &b) {
    return x >= a && x <= b;
}

template<class T1, class T2>
const T1 ForcedConvert(const T2 &x) {
    return *reinterpret_cast<const T1*>(&x);
}

#endif // UTILITY_HPP
