/**
 * Created by _ on 2016/7/6.
 */
import java.util.*;
import java.io.*;

class ByteType {
    static void setByte(byte s[], byte temp, int p) {
        s[0 + p] = (byte)(temp & 0xff);
    }

    static void setHalf(byte s[], short temp, int p) {
        s[0 + p] = (byte) (temp & 0xff);
        s[1 + p] = (byte) ((temp & 0xff00) >> 8);
    }

    static void setWord(byte s[], int temp, int p) {
        s[0 + p] = (byte) (temp & 0xff);
        s[1 + p] = (byte) ((temp & 0xff00) >> 8);
        s[2 + p] = (byte) ((temp & 0xff0000) >> 16);
        s[3 + p] = (byte) ((temp & 0xff000000) >> 24);
    }

    static byte getByte(byte s[], int p) {
        return (byte)(0xff & s[p + 0]);
    }

    static short getHalf(byte s[], int p) {
        return (short)((0xff & s[p + 0]) |
                (0xff00 & (s[p + 1] << 8)));
    }
    static int getWord(byte s[], int p) {
        return (int)(0xff & s[0 + p]) |
                (0xff00 & (s[1 + p] << 8)) |
                (0xff0000 & (s[2 + p] << 16)) |
                (0xff000000 & (s[3 + p] << 24));
    }

}
class Register {
    private byte[] data;
    Register() { data = new byte[4]; }
    void set(int temp) {ByteType.setWord(data, temp, 0); }
    int get() { return ByteType.getWord(data, 0); }
}

class StaticData {
    private static int MAX_SIZE = 4 * 1024 * 1024 + 1;
    private byte[] data;
    private int position;

    StaticData() {
        data = new byte[MAX_SIZE];
        position = 0;
    }

    int size() { return MAX_SIZE; }

    void insertByte(byte temp) { ByteType.setByte(data, temp, position); position += 1; }
    void insertHalf(short temp) { ByteType.setHalf(data, temp, position); position += 2; }
    void insertWord(int temp) { ByteType.setWord(data, temp, position); position += 4; }

    void setByte(int p, byte temp) { ByteType.setByte(data, temp, p);}
    void setHalf(int p, short temp) { ByteType.setHalf(data, temp, p);}
    void setWord(int p, int temp) { ByteType.setWord(data, temp, p);}

    byte getByte(int p) { return ByteType.getByte(data, p); }
    short getHalf(int p) { return ByteType.getHalf(data, p); }
    int getWord(int p) { return ByteType.getWord(data, p); }

    void setPosition(int n) {
        int tem = (int)Math.pow(2, n);
        while(position % tem != 0) ++position;
    }

    void setSpace(int n) { position += n; }

    int getPosition() { return position; }
    void show() {
        for(int i = 0; i < position; ++i) {
            System.out.print((char)data[i]);
        }
        System.out.println();
    }
}

enum  TokenType{
    REG, NUM_REG, NUM, LABEL, STRING
}

enum CalType{
    ADD, SUB, MUL, DIV, AND, OR, XOR, NEG, REM
}

enum ValueType{
    ADDR, WORD, HALF, BYTE
}

class Token{
    TokenType type_;
    int reg_, num_;
    String str_;

    void show() {
        System.out.print("[");
        switch (type_) {
            case REG     : System.out.print(type_.toString() + " " + reg_); break;
            case NUM_REG : System.out.print(type_.toString() + " " + num_ + "(" + reg_ +")"); break;
            case NUM     : System.out.print(type_.toString() + " " + num_); break;
            case LABEL   : System.out.print(type_.toString() + " " + str_); break;
            case STRING  : System.out.print(type_.toString() + " " + str_); break;
        }
        System.out.print("]");
    }

    private int toReg(String tem_str){
        switch (tem_str) {
            case"$0": case "$zero": return 0;
            case"$1": case "$at": return 1;
            case"$2": case "$v0": return 2;
            case"$3": case "$v1": return 3;
            case"$4": case "$a0": return 4;
            case"$5": case "$a1": return 5;
            case"$6": case "$a2": return 6;
            case"$7": case "$a3": return 7;
            case"$8": case "$t0": return 8;
            case"$9": case "$t1": return 9;
            case"$10": case "$t2": return 10;
            case"$11": case "$t3": return 11;
            case"$12": case "$t4": return 12;
            case"$13": case "$t5": return 13;
            case"$14": case "$t6": return 14;
            case"$15": case "$t7": return 15;
            case"$16": case "$s0": return 16;
            case"$17": case "$s1": return 17;
            case"$18": case "$s2": return 18;
            case"$19": case "$s3": return 19;
            case"$20": case "$s4": return 20;
            case"$21": case "$s5": return 21;
            case"$22": case "$s6": return 22;
            case"$23": case "$s7": return 23;
            case"$24": case "$t8": return 24;
            case"$25": case "$t9": return 25;
            case"$26": return 26;
            case"$27": return 27;
            case"$28": case "$gp" : return 28;
            case"$29": case "$sp" : return 29;
            case"$30": case "$fp" : return 30;
            case"$31": case "$ra" : return 31;
            default:
                System.out.print("Can't Find " + tem_str);
                System.exit(0);
                return -1;
        }
    }

    Token(String str) {
        type_ = null;
        reg_ = num_ = 0;
        str_ = "";

        if(str.charAt(0) == '$') {
            type_ = TokenType.REG;
            reg_ = toReg(str);
            return ;
        }

        if(str.charAt(0) == '"') {
            type_ = TokenType.STRING;
            int len = str.length();
            for(int i = 1; i < len - 1; ++i) str_ += str.charAt(i);
            return ;
        }

        if((str.charAt(0) <= '9' && str.charAt(0) >= '0') || str.charAt(0) == '-'){
            int p = 0, len = str.length(), sign = 1;
            if(str.charAt(0) == '-') {
                sign = -1;
                ++p;
            }
            while(p < len && str.charAt(p) >= '0' && str.charAt(p) <= '9') num_ = num_ * 10 + str.charAt(p++) - '0';
            num_ *= sign;
            if(p == len) {
                type_ = TokenType.NUM;
                return;
            }

            if(p < len) {
                if(str.charAt(p) == '(') {
                    String tem_string = "";
                    while(str.charAt(++p) != ')') {
                        tem_string += str.charAt(p);
                    }
                    reg_ = toReg(tem_string);
                    type_ = TokenType.NUM_REG;
                } else {
                    System.out.print("Can't Find " + str + "At Address");
                    System.exit(0);
                }
            }
            return ;
        }
        type_ = TokenType.LABEL;
        str_ = str;
    }
}

class Instruction{
    String name_;
    int n_;
    Token token_[];

    static private String[] s_ = new String[50];

    private boolean skipChar(char c) {
        return c == ' ' || c == ',' || c == '\n' || c == '\t' || c == ':';
    }

    private int toStringArray(String text) {
        int p = 0, len = text.length(), count = 0;
        while(p < len) {
            while(p < len && skipChar(text.charAt(p))) {
                ++p;
            }

            if(p < len && text.charAt(p) == '#') break;

            String temString = "";
            if(p < len && text.charAt(p) == '"') {
                temString += '"';
                ++p;
                while(p < len && (text.charAt(p) != '"')) {
                    if(text.charAt(p) == '\\') {
                        ++p;
                        switch (text.charAt(p++)){
                            case 'n' : temString += '\n'; break;
                            case 't' : temString += '\t'; break;
                            case '\'': temString += '\''; break;
                            case '\\': temString += '\\'; break;
                            case '\"': temString += '\"'; break;
                        }
                    } else {
                        temString += text.charAt(p++);
                    }
                }
                temString += '"';
                ++p;
            } else {
                while (p < len && !skipChar(text.charAt(p))) {
                    temString += text.charAt(p++);
                }
            }
            if(temString.length() > 0) {
                s_[count++] = temString;
            }
        }
        return count;
    }

    void show(){
        System.out.print(name_ + " ");
        for (int i = 0; i < n_; ++i) {
            token_[i].show();
        }
        System.out.println();
    }

    Instruction(String text) {
        n_  = toStringArray(text) - 1;
        if(n_ < 0) {
            name_ = "";
            token_ = null;
        } else {
            name_ = s_[0];
            token_ = new Token[n_];
            for (int i = 0; i < n_; ++i) {
                token_[i] = new Token(s_[i + 1]);
            }
        }
    }
}

class Memory{
    private StaticData storage_;
    private Register reg_[] = new Register[34];
    // lo: 32 hi: 33
    Memory() {
        storage_ = new StaticData();
        for(int i = 0; i < 34; ++i) reg_[i] = new Register();
        reg_[29].set(storage_.size() - 1);
    }

    void insertWord(Instruction ins) {
        for(int i = 0; i < ins.n_; ++i)  {
            storage_.insertWord(ins.token_[i].num_);
        }
    }

    void insertHalf(Instruction ins) {
        for (int i = 0; i < ins.n_; ++i) {
            storage_.insertHalf((short) ins.token_[i].num_);
        }
    }

    void insertByte(Instruction ins) {
        for (int i = 0; i < ins.n_; ++i) {
            storage_.insertByte((byte) ins.token_[i].num_);
        }
    }

    void insertString(Instruction ins) {
        for(int len = ins.token_[0].str_.length(), i = 0; i < len; ++i) {
            storage_.insertByte((byte)ins.token_[0].str_.charAt(i));
        }
    }

    void setStringWithNull(int p, String temp) {
        int len = temp.length();
        for(int i = 0; i < len; ++i) {
            storage_.setByte(p + i, (byte)temp.charAt(i));
        }
        storage_.setByte(p + len, (byte)'\0');
    }

    void insertStringWithNull(Instruction ins) {
        for(int len = ins.token_[0].str_.length(), i = 0; i < len; ++i) {
            storage_.insertByte((byte)ins.token_[0].str_.charAt(i));
        }
        storage_.insertByte((byte)'\0');
    }

    void setSpace(Instruction ins) { storage_.setSpace(ins.token_[0].num_); }
    void setSpace(int n) { storage_.setSpace(n); }

    void setPosition(Instruction ins) { storage_.setPosition(ins.token_[0].num_); }

    void setPosition(int n) { storage_.setPosition(n); }

    int getPosition() { return storage_.getPosition(); }

    void setStaticByWord(int p, int temp) { storage_.setWord(p, temp); }
    void setStaticByHalf(int p, short temp) { storage_.setHalf(p, temp); }
    void setStaticByByte(int p, byte temp) { storage_.setByte(p, temp); }

    int getStaticByWord(int p) { return storage_.getWord(p); }
    short getStaticByHalf(int p) { return storage_.getHalf(p); }
    byte getStaticByByte(int p) { return storage_.getByte(p); }

    void setReg(int n, int temp) { reg_[n].set(temp); }
    int getReg(int n) { return reg_[n].get(); }

    void show() { storage_.show(); }
}

class Spim {
    private final int MAXSIZE = 20000;
    private Instruction[] instructions = new Instruction[MAXSIZE];
    private int numOfInstruction;
    private Memory memory;
    private HashMap<String, Integer> labels;
    private static Scanner input;
    private static final int V0 = 2, V1 = 3, A0 = 4, A1 = 5, LO = 32, HI = 33, RA = 31;

    Spim() {
        input = new Scanner(System.in);
        labels = new HashMap<String, Integer>();
        memory = new Memory();
        numOfInstruction = 0;
    }

    private int toValue(Token tem, ValueType type) {
        switch (tem.type_) {
            case NUM:
                return tem.num_;
            case NUM_REG:
                switch (type) {
                    case BYTE:
                        return memory.getStaticByByte((memory.getReg(tem.reg_) + tem.num_));
                    case HALF:
                        return memory.getStaticByHalf((memory.getReg(tem.reg_) + tem.num_));
                    case WORD:
                        return memory.getStaticByWord((memory.getReg(tem.reg_) + tem.num_));
                    default:
                        System.out.println("Error in toValue");
                        System.exit(0);
                }
            case REG:
                return memory.getReg(tem.reg_);
            case LABEL:
                switch (type) {
                    case BYTE:
                        return memory.getStaticByByte(labels.get(tem.str_));
                    case HALF:
                        return memory.getStaticByHalf(labels.get(tem.str_));
                    case WORD:
                        return memory.getStaticByWord(labels.get(tem.str_));
                    default:
                        System.out.println("Error in toValue");
                        System.exit(0);
                }
            default:
                System.out.println("Error in toValue");
                System.exit(0);
        }
        return -1;
    }

    private int toWord(Token tem) {
        switch (tem.type_) {
            case NUM:
                return tem.num_;
            case NUM_REG:
                return memory.getStaticByWord((memory.getReg(tem.reg_) + tem.num_));
            case REG:
                return memory.getReg(tem.reg_);
            case LABEL:
                return memory.getStaticByWord(labels.get(tem.str_));
            default:
                System.out.println("Error in toWord");
                System.exit(0);
        }
        return -1;
    }

    private int toAddress(Token tem) {
        switch (tem.type_) {
            case NUM:
                return tem.num_;
            case NUM_REG:
                return memory.getReg(tem.reg_) + tem.num_;
            case REG:
                return memory.getReg(tem.reg_);
            case LABEL:
                return labels.get(tem.str_);
            default:
                System.out.println("Error in toAddress");
                System.exit(0);
        }
        return -1;
    }

    private void calculate(Instruction ins, CalType type) {
        int Rdest = 0, Rsrc1 = 0, Src2 = 0;
        if (ins.n_ == 3) {
            Rdest = ins.token_[0].reg_;
            Rsrc1 = toValue(ins.token_[1], ValueType.WORD);
            Src2 = toValue(ins.token_[2], ValueType.WORD);
        } else if (ins.n_ == 2) {
            Rdest = ins.token_[0].reg_;
            Rsrc1 = toValue(ins.token_[0], ValueType.WORD);
            Src2 = toValue(ins.token_[1], ValueType.WORD);
            long temp;
            switch (type) {
                case MUL:
                    temp = Rsrc1 * Src2;
                    memory.setReg(32, (int) temp);
                    memory.setReg(33, (int) (temp >> 32));
                    return;
                case DIV:
                    memory.setReg(32, Rsrc1 / Src2);
                    memory.setReg(33, Rsrc1 % Src2);
                    return;
                case NEG:
                    break;
                default:
                    System.out.println("Error in calculate");

            }
        } else {
            System.out.println("Error in calculate");
        }

        switch (type) {
            case ADD:
                memory.setReg(Rdest, Rsrc1 + Src2);
                break;
            case SUB:
                memory.setReg(Rdest, Rsrc1 - Src2);
                break;
            case MUL:
                memory.setReg(Rdest, Rsrc1 * Src2);
                break;
            case DIV:
                memory.setReg(Rdest, Rsrc1 / Src2);
                break;
            case AND:
                memory.setReg(Rdest, Rsrc1 & Src2);
                break;
            case OR:
                memory.setReg(Rdest, Rsrc1 | Src2);
                break;
            case XOR:
                memory.setReg(Rdest, Rsrc1 ^ Src2);
                break;
            case REM:
                memory.setReg(Rdest, Rsrc1 % Src2);
                break;
            case NEG:
                memory.setReg(Rdest, -Src2);
                break;
            default:
                System.out.println("Error in calculate");
        }
    }

    private void load(Instruction ins, ValueType type) {
        int Rdest = ins.token_[0].reg_;
        switch (type) {
            case HALF:
                memory.setReg(Rdest, toValue(ins.token_[1], ValueType.HALF));
                break;
            case WORD:
                memory.setReg(Rdest, toValue(ins.token_[1], ValueType.WORD));
                break;
            case BYTE:
                memory.setReg(Rdest, toValue(ins.token_[1], ValueType.BYTE));
                break;
            case ADDR:
                memory.setReg(Rdest, toAddress(ins.token_[1]));
                break;
            default:
                System.out.println("Error in load");
        }
    }

    private void store(Instruction ins, ValueType type) {
        int Rdest = ins.token_[0].reg_;
        switch (type) {
            case HALF:
                memory.setStaticByHalf(toAddress(ins.token_[1]), (short) memory.getReg(Rdest));
                break;
            case WORD:
                memory.setStaticByWord(toAddress(ins.token_[1]), memory.getReg(Rdest));
                break;
            case BYTE:
                memory.setStaticByByte(toAddress(ins.token_[1]), (byte) memory.getReg(Rdest));
                break;
            default:
                System.out.println("Error in store");
        }
    }

    void addInstruction(String temp_str) {
        if (temp_str.length() == 0) return;
        instructions[numOfInstruction++] = new Instruction(temp_str);
    }

    void analysis() {
        boolean do_data = false;
        for(int i = 0; i < numOfInstruction; ++i) {
            if(instructions[i].name_.equals("")) continue;
            if(instructions[i].name_.equals(".data")) {
                do_data = true;
                continue;
            } else if(instructions[i].name_.equals(".text")){
                do_data = false;
                continue;
            }
            if(do_data) {
                switch (instructions[i].name_) {
                    case ".align"  : memory.setPosition(instructions[i]); break;
                    case ".ascii"  : memory.insertString(instructions[i]); break;
                    case ".asciiz" : memory.insertStringWithNull(instructions[i]); break;
                    case ".byte"   : memory.insertByte(instructions[i]); break;
                    case ".half"   : memory.insertHalf(instructions[i]); break;
                    case ".space"  : memory.setSpace(instructions[i]); break;
                    case ".word"   : memory.insertWord(instructions[i]); break;
                    default:
                        labels.put(instructions[i].name_, memory.getPosition());
                }
            } else {
                switch (instructions[i].name_) {
                    case "syscall":
                    case "add": case "addu": case "addiu":
                    case "sub": case "subu":
                    case "mul": case "mulu":
                    case "div": case "divu":
                    case "xor": case "xoru":
                    case "neg": case "negu":
                    case "rem": case "remu":
                    case "li": case "la": case "lb": case "lh": case "lw":
                    case "sb": case "sh": case "sw":
                    case "move":
                    case "seq": case "sge": case "sgt": case "sle": case "slt": case "sne":
                    case "j": case "jr": case "jal": case "jalr":
                    case "b":
                    case "beq" : case "bgt" : case "bge" : case "blt" : case "ble" : case "bne":
                    case "beqz": case "bgtz": case "bgez": case "bltz": case "blez": case "bnez":
                    case "nop": case "mflo": case "mfhi": break;
                    default:
                        labels.put(instructions[i].name_, i);
                }
            }
        }
    }

    private void syscall() {
        int v0 = memory.getReg(2), a0 = memory.getReg(4);
        switch (v0) {
            case 1: System.out.print(a0); break;
            case 4:
                for(int i = a0; (char)memory.getStaticByByte(i) != '\0'; ++i)
                    System.out.print((char)memory.getStaticByByte(i));
                //System.out.print('\0');
                break;
            case 5: memory.setReg(2, input.nextInt()); break;
            case 8: memory.setStringWithNull(a0, input.next()); break;
            case 9:
                memory.setPosition(2);
                memory.setReg(2, memory.getPosition());
                memory.setSpace(a0);
                break;
            case 10: circleCount += 1; outputcircleCount(); System.exit(0); break;
            case 17: circleCount += 1; outputcircleCount(); System.exit(a0); break;
        }
    }

    boolean execution(int p) {
        Instruction ins = instructions[p];
        switch (ins.name_) {
            case "syscall": return true; //syscall(); break;
            case "add": case "addu": case "addiu": calculate(ins, CalType.ADD); break;
            case "sub": case "subu": calculate(ins, CalType.SUB); break;
            case "mul": case "mulu": calculate(ins, CalType.MUL); break;
            case "div": case "divu": calculate(ins, CalType.DIV); break;
            case "xor": case "xoru": calculate(ins, CalType.XOR); break;
            case "neg": case "negu": calculate(ins, CalType.NEG); break;
            case "rem": case "remu": calculate(ins, CalType.REM); break;

            case "li": load(ins, ValueType.WORD); break;
            case "la": load(ins, ValueType.ADDR); break;
            case "lb": load(ins, ValueType.BYTE); break;
            case "lh": load(ins, ValueType.HALF); break;
            case "lw": load(ins, ValueType.WORD); break;

            case "sb": store(ins, ValueType.BYTE); break;
            case "sh": store(ins, ValueType.HALF); break;
            case "sw": store(ins, ValueType.WORD); break;

            case "move": memory.setReg(ins.token_[0].reg_, memory.getReg(ins.token_[1].reg_)); break;

            case "seq": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) == toWord(ins.token_[2]) ? 1 : 0); break;
            case "sge": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) >= toWord(ins.token_[2]) ? 1 : 0); break;
            case "sgt": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) >  toWord(ins.token_[2]) ? 1 : 0); break;
            case "sle": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) <= toWord(ins.token_[2]) ? 1 : 0); break;
            case "slt": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) <  toWord(ins.token_[2]) ? 1 : 0); break;
            case "sne": memory.setReg(ins.token_[0].reg_, toWord(ins.token_[1]) != toWord(ins.token_[2]) ? 1 : 0); break;

            case "b" : nextIns = toAddress(ins.token_[0]); break;
            case "j" : nextIns = toAddress(ins.token_[0]); break;
            case "jr": nextIns = toAddress(ins.token_[0]); break;
            case "jal" : memory.setReg(31, p); nextIns = toAddress(ins.token_[0]); break;
            case "jalr": memory.setReg(31, p); nextIns = toAddress(ins.token_[0]); break;

            case "beq" : if(toWord(ins.token_[0]) == toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;
            case "bgt" : if(toWord(ins.token_[0]) >  toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;
            case "bge" : if(toWord(ins.token_[0]) >= toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;
            case "blt" : if(toWord(ins.token_[0]) <  toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;
            case "ble" : if(toWord(ins.token_[0]) <= toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;
            case "bne" : if(toWord(ins.token_[0]) != toWord(ins.token_[1])) nextIns = toAddress(ins.token_[2]); break;

            case "beqz" : if(toWord(ins.token_[0]) == 0) nextIns = toAddress(ins.token_[1]); break;
            case "bgtz" : if(toWord(ins.token_[0]) >  0) nextIns = toAddress(ins.token_[1]); break;
            case "bgez" : if(toWord(ins.token_[0]) >= 0) nextIns = toAddress(ins.token_[1]); break;
            case "bltz" : if(toWord(ins.token_[0]) <  0) nextIns = toAddress(ins.token_[1]); break;
            case "blez" : if(toWord(ins.token_[0]) <= 0) nextIns = toAddress(ins.token_[1]); break;
            case "bnez" : if(toWord(ins.token_[0]) != 0) nextIns = toAddress(ins.token_[1]); break;

            case "nop": break; //do nothing

            case "mflo": memory.setReg(ins.token_[0].reg_, memory.getReg(32)); break;
            case "mfhi": memory.setReg(ins.token_[0].reg_, memory.getReg(33)); break;

            default:
                System.out.println(ins.name_);
        }
        return true;
    }

    private int line[] = new int[5];
    private int nextIns, banchCount;

    boolean freeNextLine(int p) {
        return p + 1 == 5 || line[p + 1] == -1;
    }

    void toNextLine(int n) {
        if(n == 4) {
            line[n] = -1;
        } else {
            line[n + 1] = line[n];
            line[n] = -1;
        }
    }

    private int lockRegCount[] = new int[34];
    private int lockJumpCount = 0;
    private int circleCount = 0;

    boolean locked(Token temp) {
        switch (temp.type_) {
            case REG: case NUM_REG: return lockRegCount[temp.reg_] > 0;
            default:
                return false;
        }
    }
    boolean lockedReg(int n) { return lockRegCount[n] > 0; }
    boolean lockedJump() { return lockJumpCount > 0; }

    void lock(Token temp) {
        switch (temp.type_) {
            case REG: ++lockRegCount[temp.reg_]; break;
            //case NUM_REG: ++lockStaticCount; break;
            default:
        }
    }
    void lockReg(int n) { ++lockRegCount[n]; }
    void lockJump() { ++lockJumpCount; }

    void unlock(Token temp) {
        switch (temp.type_) {
            case REG: --lockRegCount[temp.reg_]; break;
            //case NUM_REG: --lockStaticCount; break;
            default:
        }
    }
    void unlockReg(int n) { --lockRegCount[n]; }
    void unlockJump() { --lockJumpCount; }

    boolean lockedStruct = false;

    boolean instructionDecode(int p) {
        Instruction ins = instructions[p];
        switch (ins.name_) {
            case "syscall":
                if(lockedReg(V0) || lockedReg(A0) || lockedReg(A1)) return false;
                lockJump(); lockReg(V0);
                return true;
            case "mul": case "mulu": case "div": case "divu":
                if(ins.n_ == 2) {
                    if(locked(ins.token_[0]) || locked(ins.token_[1])) return false;
                    lockReg(LO); lockReg(HI);
                    return true;
                }
            case "add": case "addu": case "addiu": case "sub": case "subu":
            case "xor": case "xoru": case "negu" : case "rem": case "remu":
            case "seq": case "sge": case "sgt": case "sle": case "slt": case "sne":
                if(locked(ins.token_[1]) || locked(ins.token_[2])) return false;
                lock(ins.token_[0]);
                return true;
            case "neg":
            case "move":
            case "la": case "li": case "lb": case "lh": case "lw":
                if(locked(ins.token_[1])) return false;
                lock(ins.token_[0]);
                return true;
            case "sb": case "sh": case "sw":
                if(locked(ins.token_[0])) return false;
                if(ins.token_[1].type_ == TokenType.NUM_REG) {
                    if(lockedReg(ins.token_[1].reg_)) return false;
                    return true;
                }
                lock(ins.token_[1]);
                return true;
            case "b" : case "j" : case "jr":
                if(locked(ins.token_[0])) return false;
                lockJump();
                return true;
            case "jalr": case "jal":
                if(locked(ins.token_[0])) return false;
                lockJump(); lockReg(RA);
                return true;
            case "beq": case "bgt": case "bge": case "blt": case "ble": case "bne":
                if(locked(ins.token_[0]) || locked(ins.token_[1]) || locked(ins.token_[2])) return false;
                lockJump();
                return true;
            case "beqz": case "bgtz": case "bgez": case "bltz": case "blez": case "bnez":
                if(locked(ins.token_[0]) || locked(ins.token_[1])) return false;
                lockJump();
                return true;
            case "mflo":
                if(lockedReg(LO)) return false;
                lock(ins.token_[0]);
                return true;
            case "mfhi":
                if(lockedReg(HI)) return false;
                lock(ins.token_[0]);
                return true;
            case "nop": return true;
            default:
                System.out.println(ins.name_ + "in instructionDecode");
        }
        return false;
    }

    boolean memoryAccess(int p) {
        Instruction ins = instructions[p];
        switch (ins.name_) {
            case "syscall":
                if(memory.getReg(V0) == 4 || memory.getReg(V0) == 8 || memory.getReg(V0) == 9) {
                    if (lockedStruct) return false;
                }
                syscall();
                return true;
            case "lb": case "lh": case "lw":
            case "sb": case "sh": case "sw":
                lockedStruct = true;
                return true;
        }
        return true;
    }

    boolean writeBack(int p) {
        Instruction ins = instructions[p];
        switch (ins.name_) {
            case "syscall":
                unlockJump(); unlockReg(V0);
                return true;
            case "mul": case "mulu": case "div": case "divu":
                if(ins.n_ == 2) {
                    unlockReg(LO); unlockReg(HI);
                    return true;
                }
            case "add": case "addu": case "addiu": case "sub": case "subu":
            case "xor": case "xoru": case "negu" : case "rem": case "remu":
            case "seq": case "sge": case "sgt": case "sle": case "slt": case "sne":
                unlock(ins.token_[0]);
                return true;
            case "neg":
            case "move":
            case "la": case "li": case "lb": case "lh": case "lw":
                unlock(ins.token_[0]);
                return true;
            case "sb": case "sh": case "sw":
                unlock(ins.token_[1]);
                return true;
            case "b" : case "j" : case "jr":
                unlockJump();
                return true;
            case "jalr": case "jal":
                unlockJump(); unlockReg(RA);
                return true;
            case "beq": case "bgt": case "bge": case "blt": case "ble": case "bne":
                unlockJump();
                return true;
            case "beqz": case "bgtz": case "bgez": case "bltz": case "blez": case "bnez":
                unlockJump();
                return true;
            case "mflo":
                unlock(ins.token_[0]);
                return true;
            case "mfhi":
                unlock(ins.token_[0]);
                return true;
            case "nop": return true;
            default:
                System.out.println(ins.name_ + "in instructionDecode");
        }
        return false;
    }

    private int instructionCount = 0;
    boolean instructionFetch() {
        if(lockedJump() || lockedStruct) return false;
        ++nextIns;
        while (nextIns < numOfInstruction && (instructions[nextIns].name_.length() == 0 || labels.containsKey(instructions[nextIns].name_))) ++nextIns;
        if(nextIns >= numOfInstruction) return false;
        line[0] = nextIns;
        return true;
    }

    void outputcircleCount() {
    //    System.out.println();
    //    System.out.println(circleCount);
    //    System.out.println(instructionCount);
    }

    boolean empty(){
        if(nextIns < numOfInstruction) return false;
        for(int i = 0; i < 5; ++i){
            if(line[i] != -1)
                return false;
        }
        return true;
    }

    void run() {
        for(int i = 0; i < 5; ++i) line[i] = -1;
        for(int i = 0; i < 34; ++i) lockRegCount[i] = 0;
        lockJumpCount = 0;
        nextIns = labels.get("main");
        while(nextIns < numOfInstruction) {
            ++circleCount;
            lockedStruct = false;
            if(freeNextLine(4) && line[4] != -1 && writeBack(line[4])) { toNextLine(4); }
            if(freeNextLine(3) && line[3] != -1 && memoryAccess(line[3])) toNextLine(3);
            if(freeNextLine(2) && line[2] != -1 && execution(line[2])) {  toNextLine(2);}
            if(freeNextLine(1) && line[1] != -1 && instructionDecode(line[1])) toNextLine(1);
            if(freeNextLine(0) && instructionFetch()) {++instructionCount; toNextLine(0);}
            //for(int i = 0; i < 34; ++i)
            //    System.out.print(lockRegCount[i] + " ");
            //System.out.print(lockJumpCount + " ");
            //System.out.println(lockedStruct + " ");
        }
        outputcircleCount();
    }
}

class Main {
    static private Spim test = new Spim();
    static private void readFileByLines(String fileName) {
        File file = new File(fileName);
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempString;
            while ((tempString = reader.readLine()) != null)  {
                test.addInstruction(tempString);
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {

                }
            }
        }
    }

    public static void main(String args[]){
        readFileByLines(args[0]);
        //readFileByLines("E:/MipsTest/out/production/MipsTest/testsuit-1/maxflow-5100379110-daibo.s");
        //readFileByLines("E:/javaCode/src/test.s");
        test.analysis();
        test.run();
    }
}