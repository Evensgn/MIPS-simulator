#!/usr/bin/python
import os
import sys
import platform
cases = [
    "lvalue2-5110379024-wuhang",
    "gcd-5090379042-jiaxiao",
    "manyarguments-5100379110-daibo",
    "tak-5090379042-jiaxiao",
    "builtin-5140519064-youyurong",
    "array_test1-mahaojun",
    "pi-5090379042-jiaxiao",
    "class_test-mahaojun",
    "hanoi-5100379110-daibo",
    "twinprime-5090379042-jiaxiao",
    "array_test2-mahaojun",
    "basicopt1-5100309127-hetianxing",
    "qsort-5100379110-daibo",
    "string_test-huyuncong",
    "statement_test-huyuncong",
    "hashmap-5100309127-hetianxing",
    "queens-5100379110-daibo",
    "multiarray-5100309153-yanghuan",
    "function_test-huyuncong",
    "heapsort-5100379110-daibo",
    "horse-5100309153-yanghuan",
    "superloop-5090379042-jiaxiao",
    "maxflow-5100379110-daibo",
    "horse3-5100309153-yanghuan",
    "prime-5100309153-yanghuan",
    "bulgarian-5110379024-wuhang",
    "magic-5100309153-yanghuan",
    "expr-5110309085-jintianxing",
    "horse2-5100309153-yanghuan",
    "spill2-5100379110-daibo",
]

# command config
if platform.system() == "Linux":
    delete = "rm"
    compare = "diff -Z"
    exe = "./bin/mips"
    header = "./testsuit-1/"
elif platform.system() == "Darwin":
    delete = "rm"
    compare = "diff -w -B"
    exe = "./bin/mips"
    header = "./testsuit-1/"
elif platform.system() == "Windows":
    delete = "del"
    compare = "fc /W"
    exe = "bin\\mips"
    header = ".\\testsuit-1\\"
else:
    print ("Unknown System")
    exit(0)

def testCase(name):
    argList = []
    argList.append(exe)
    argList.append(header + name + '.s')
    if os.path.isfile(header + name + '.in'):
        argList.append(' < ' + header + name + '.in')
    argList.append(' > ' + name + '.out')

    # run
    cmd = " ".join(argList)
    os.system(cmd)

    # compare
    ret = os.system(" ".join((compare,  name + ".out",
                header + name + ".ans")))
    return ret == 0

def main():
    os.system(" ".join((delete, "*.out")))

    if len(sys.argv) == 3:
        start = eval(sys.argv[1])
        end   = eval(sys.argv[2]) + 1
    else:
        start = 0
        end   = len(cases)

    end = min(len(cases), end)
    for i in range(start, end):
        print ("TEST  %-40s" % cases[i])
        sys.stdout.flush()
        if not testCase(cases[i]):
            break
        os.remove(cases[i] + '.out')
        print ("passed")

if __name__ == '__main__':
    main()
