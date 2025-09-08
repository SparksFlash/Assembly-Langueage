# 📘 Assembly Language Basics – Structured Notes (বাংলায়)

---

## 1️⃣ সংখ্যা ও অক্ষরের উপস্থাপনা

### 🔹 সংখ্যা পদ্ধতি (Number Systems)
- কম্পিউটার **শুধু বাইনারি (0,1)** তথ্য প্রক্রিয়া করতে পারে।
- প্রধান সংখ্যা পদ্ধতি:
  - **Decimal (Base 10)** → মানুষের জন্য সহজ।
  - **Binary (Base 2)** → শুধু 0,1।
  - **Hexadecimal (Base 16)** → 0–9, A–F।

#### ✍️ উদাহরণ
- 11010b = 26d  
- 1Ah = 26d  

#### বিশেষ নোটেশন
- Binary → শেষে `b` (101b)  
- Hexadecimal → শেষে `h` (1A3h)  
- Decimal → শেষে `d` (79d)  

---

### 🔹 টেবিল (Binary ↔ Hex ↔ Decimal)

| Decimal | Binary | Hexadecimal |
| ------- | ------ | ----------- |
| 0       | 0000   | 0           |
| 1       | 0001   | 1           |
| 9       | 1001   | 9           |
| 10      | 1010   | A           |
| 15      | 1111   | F           |
| 16      | 10000  | 10          |

---

## 2️⃣ সংখ্যা পদ্ধতির মধ্যে রূপান্তর (Conversion)

### 🔹 Binary/Hex → Decimal
- প্রতিটি digit × base^(position) যোগ করতে হয়।

**উদাহরণ (Hex):**  
82ADh = 8×16³ + A×16² + 2×16¹ + D×1 = **33453d**

**উদাহরণ (Binary):**  
11101b = 16+8+4+0+1 = **29d**

---

### 🔹 Decimal → Binary/Hex
- বারবার ভাগ করতে হয় (divide by 2 বা 16)  
- ভাগশেষগুলো উল্টো দিক থেকে লিখতে হয়।

**উদাহরণ (Decimal → Hex):**  
11172 ÷ 16 → Hex = **2BA4h**

**উদাহরণ (Decimal → Binary):**  
95 ÷ 2 → Binary = **1011111b**

---

### 🔹 Binary ↔ Hex
- 1 Hex digit = 4-bit Binary  
- Hex → Binary → প্রতিটি digit আলাদা 4-bit  
- Binary → Hex → প্রতি 4-bit কে Hex এ রূপান্তর

---

## 3️⃣ Addition এবং Subtraction

### 🔹 Binary Addition Table

**উদাহরণ:**  
100101111b + 110110b = **101100101b**

---

### 🔹 Hexadecimal Addition
SB39h + 7AF4h = **D62Dh**

---

### 🔹 Binary Subtraction Table

**উদাহরণ:**  
1001b – 0111b = **0010b**

---

### 🔹 Hexadecimal Subtraction
D26Fh – B3A4h = **170Bh**

---

## 4️⃣ Signed এবং Unsigned সংখ্যা

### 🔹 Unsigned
- সব বিট শুধু মান প্রকাশে ব্যবহৃত হয়।
- **8-bit:** 0 – 255  
- **16-bit:** 0 – 65535  

### 🔹 Signed (Two’s Complement)
- MSB = Sign bit (0 = Positive, 1 = Negative)
- **Two’s complement = One’s complement + 1**

**Range:**
- **8-bit:** -128 থেকে +127  
- **16-bit:** -32768 থেকে +32767  

**উদাহরণ (-5 in 16-bit):**  
5 = `0000 0000 0000 0101`  
One’s complement = `1111 1111 1111 1010`  
Two’s complement = `1111 1111 1111 1011`

---

### 🔹 Odd/Even নির্ধারণ
- LSB = 0 → Even  
- LSB = 1 → Odd  

---

### 🔹 Unsigned → Signed সম্পর্ক
- **8-bit:** যদি ≥ 80h → Signed = Unsigned – 256  
- **16-bit:** যদি ≥ 8000h → Signed = Unsigned – 65536  

**উদাহরণ:**  
FE0Ch = 65036 (Unsigned)  
Signed = 65036 – 65536 = **-500**

---

## 5️⃣ Character Representation (ASCII)

### 🔹 ASCII Code
- 7-bit code → মোট 128 ক্যারেক্টার  
- **0 – 31:** Control (CR, LF, BEL, BS ইত্যাদি)  
- **32 – 126:** Printable character  
- **127:** Delete (DEL)  

### 🔹 উদাহরণ
- A → 41h → 01000001  
- space → 20h → 00100000  
- z → 7Ah → 01111010  

### 🔹 উদাহরণ: “RG 2z”
| Character | ASCII (Hex) | Binary   |
| --------- | ----------- | -------- |
| R         | 52h         | 01010010 |
| G         | 47h         | 01000111 |
| Space     | 20h         | 00100000 |
| 2         | 32h         | 00110010 |
| z         | 7Ah         | 01111010 |

---

### 🔹 কীবোর্ড ইনপুট
- পুরনো কীবোর্ড সরাসরি ASCII দিত।  
- আধুনিক কীবোর্ড → প্রতিটি কী-এর জন্য **Scan Code** CPU-তে পাঠায়।  

---

## 6️⃣ ASCII Printable Characters (32–126)

| Dec | Hex | Char | Dec | Hex | Char | Dec | Hex | Char | Dec | Hex | Char |
| --- | --- | ---- | --- | --- | ---- | --- | --- | ---- | --- | --- | ---- |
| 32  | 20h | (space) | 48 | 30h | 0 | 64 | 40h | @ | 80 | 50h | P |
| 33  | 21h | ! | 49 | 31h | 1 | 65 | 41h | A | 81 | 51h | Q |
| 34  | 22h | " | 50 | 32h | 2 | 66 | 42h | B | 82 | 52h | R |
| 35  | 23h | # | 51 | 33h | 3 | 67 | 43h | C | 83 | 53h | S |
| 36  | 24h | $ | 52 | 34h | 4 | 68 | 44h | D | 84 | 54h | T |
| 37  | 25h | % | 53 | 35h | 5 | 69 | 45h | E | 85 | 55h | U |
| 38  | 26h | & | 54 | 36h | 6 | 70 | 46h | F | 86 | 56h | V |
| 39  | 27h | ' | 55 | 37h | 7 | 71 | 47h | G | 87 | 57h | W |
| 40  | 28h | ( | 56 | 38h | 8 | 72 | 48h | H | 88 | 58h | X |
| 41  | 29h | ) | 57 | 39h | 9 | 73 | 49h | I | 89 | 59h | Y |
| 42  | 2Ah | * | 58 | 3Ah | : | 74 | 4Ah | J | 90 | 5Ah | Z |
| 43  | 2Bh | + | 59 | 3Bh | ; | 75 | 4Bh | K | 91 | 5Bh | [ |
| 44  | 2Ch | , | 60 | 3Ch | < | 76 | 4Ch | L | 92 | 5Ch | \ |
| 45  | 2Dh | - | 61 | 3Dh | = | 77 | 4Dh | M | 93 | 5Dh | ] |
| 46  | 2Eh | . | 62 | 3Eh | > | 78 | 4Eh | N | 94 | 5Eh | ^ |
| 47  | 2Fh | / | 63 | 3Fh | ? | 79 | 4Fh | O | 95 | 5Fh | _ |
| 96  | 60h | ` | 112 | 70h | p |  124 | 7Ch | \| |   |     |   |
| 97  | 61h | a | 113 | 71h | q | 125 | 7Dh | } |   |     |   |
| 98  | 62h | b | 114 | 72h | r | 126 | 7Eh | ~ |   |     |   |
| 99  | 63h | c | 115 | 73h | s |   |     |   |   |     |   |
| 100 | 64h | d | 116 | 74h | t |   |     |   |   |     |   |
| 101 | 65h | e | 117 | 75h | u |   |     |   |   |     |   |
| 102 | 66h | f | 118 | 76h | v |   |     |   |   |     |   |
| 103 | 67h | g | 119 | 77h | w |   |     |   |   |     |   |
| 104 | 68h | h | 120 | 78h | x |   |     |   |   |     |   |
| 105 | 69h | i | 121 | 79h | y |   |     |   |   |     |   |
| 106 | 6Ah | j | 122 | 7Ah | z |   |     |   |   |     |   |
| 107 | 6Bh | k | 123 | 7Bh | { |   |     |   |   |     |   |
| 108 | 6Ch | l |     |     |   |   |     |   |   |     |   |
| 109 | 6Dh | m |     |     |   |   |     |   |   |     |   |
| 110 | 6Eh | n |     |     |   |   |     |   |   |     |   |
| 111 | 6Fh | o |     |     |   |   |     |   |   |     |   |

---

# 📌 সারসংক্ষেপ (Quick Notes)

✅ **Number System:** Binary, Decimal, Hex (conversion rules জরুরি)  
✅ **Addition/Subtraction:** Base অনুযায়ী carry/borrow  
✅ **Signed/Unsigned:** MSB দিয়ে চিহ্ন নির্ধারণ, Two’s complement = negative  
✅ **Odd/Even:** LSB দিয়ে নির্ধারণ  
✅ **ASCII:** 7-bit code, 128 character (Control + Printable)  
✅ **Keyboard Input:** Scan Code → CPU  

---

