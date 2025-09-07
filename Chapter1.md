# 🖥️ Microcomputer System – Structured Notes

## 1. প্রধান অংশ (Main Components)

- **CPU (Central Processing Unit):** কম্পিউটারের মস্তিষ্ক, সবকিছু নিয়ন্ত্রণ করে।
- **Memory (RAM/ROM):** প্রোগ্রাম ও ডাটা সংরক্ষণ করে।
- **I/O Devices (Keyboard, Monitor, Disk, Printer):** ইনপুট ও আউটপুট কাজ করে। এগুলোকে **peripherals** ও বলা হয়।

---

## 2. মাদারবোর্ড (Motherboard / System Board)

- ভেতরে থাকে **Microprocessor** ও **Memory circuits**।
- অতিরিক্ত **add-in cards** বসানোর জন্য **expansion slots** থাকে।

---

## 3. Bit, Byte এবং Word

- **Bit (0 বা 1):** সবচেয়ে ছোট ডাটা ইউনিট।
- **Byte = 8 bits** → প্রতিটি বাইটের একটি নির্দিষ্ট **address** থাকে।
  - **Address ≠ Contents**
    - Address = মেমরির লোকেশন নম্বর (স্থির)।
    - Contents = সেই লোকেশনে রাখা ডাটা (পরিবর্তনশীল)।
- **Word = সাধারণত 2 bytes**
  - Low address byte = Low byte  
  - High address byte = High byte  

---

## 4. Addressing ক্ষমতা

- প্রসেসর কত **bit address** ব্যবহার করে তার ওপর নির্ভর করে কত memory access করা যাবে।
- উদাহরণ: **20-bit address = 2²⁰ = 1 MB memory**

---

## 5. Memory Operations

- **Read (Fetch):** CPU ডাটার কপি নেয়, আসল ডাটা অপরিবর্তিত থাকে।
- **Write (Store):** নতুন ডাটা লিখে দেয় → আগের ডাটা মুছে যায়।

---

## 6. Memory Types

- **RAM (Random Access Memory):**
  - পড়া ও লেখা যায়।
  - Power off হলে ডাটা হারিয়ে যায়।
- **ROM (Read Only Memory):**
  - শুধু পড়া যায়, ডাটা পরিবর্তন করা যায় না।
  - Power off হলেও ডাটা থেকে যায়।
  - সিস্টেম প্রোগ্রাম থাকে → **Firmware**

---

## 7. Buses (যোগাযোগের পথ)

CPU, Memory, I/O সার্কিট একে অপরের সাথে **Bus** এর মাধ্যমে যোগাযোগ করে।  
তিন ধরণের বাস আছে:

1. **Address Bus:** কোন মেমরি লোকেশন অ্যাক্সেস করতে হবে তার ঠিকানা বহন করে।
2. **Data Bus:** আসল ডাটা বহন করে।
3. **Control Bus:** কোন অপারেশন (read/write) করতে হবে তা জানায়।

👉 **উদাহরণ (Read Operation):**
- CPU address → Address Bus-এ পাঠায়  
- Data → Data Bus দিয়ে CPU-তে আসে  
- Control → Control Bus-এ CPU জানায় যে এটি "read operation"

---

## 8. CPU এর গঠন (Intel 8086 উদাহরণ)

![Intel 8086 Architecture](https://electronicsdesk.com/wp-content/uploads/2019/03/block-diagram-of-8086-microprocessor-1.jpg)


### 🔹 Execution Unit (EU)
- কাজ: Instruction execute করা
- থাকে:
  - **ALU (Arithmetic Logic Unit):** +, −, ×, ÷, AND, OR, NOT
  - **Registers:** AX, BX, CX, DX, SI, DI, BP, SP
  - **FLAGS Register:** Status bits রাখে

### 🔹 Bus Interface Unit (BIU)
- কাজ: মেমরি ও I/O সার্কিটের সাথে যোগাযোগ
- থাকে: CS, DS, ES, SS, IP
- **IP (Instruction Pointer):** পরবর্তী instruction এর ঠিকানা ধরে
- **Instruction Prefetch Queue:** একাধিক instruction আগে থেকে নিয়ে আসে → দ্রুত কাজ হয়

---

## 9. I/O Ports

- CPU ↔ I/O devices এর মধ্যে যোগাযোগ হয় **Ports** এর মাধ্যমে  
- প্রতিটি Port এর একটি **Address** থাকে  

### ধরণ:
- **Serial Port:** একবারে ১ বিট → যেমন Keyboard  
- **Parallel Port:** একবারে 8 বা 16 বিট → যেমন Disk Drive  

---

## 10. Instruction Execution (Fetch-Execute Cycle)

1. **Fetch Instruction** → মেমরি থেকে instruction আনা  
2. **Decode** → কী অপারেশন হবে বুঝা  
3. **Fetch Data** → প্রয়োজন হলে ডাটা আনা  
4. **Execute** → ALU তে কাজ করা  
5. **Store Result** → ফলাফল মেমরি/রেজিস্টারে রাখা  

---

## 11. Timing (Clock Speed)

- CPU-এর কাজ **Clock pulses** দ্বারা নিয়ন্ত্রিত হয়  
- 1 MHz = 10⁶ pulse/second  
- উদাহরণ: Intel 8086 = 4.77 MHz  
- Clock rate বেশি হলে CPU দ্রুত কাজ করে  

---

## 12. Input / Output Devices

- **Magnetic Disks**
  - Floppy Disk → 360 KB – 1.44 MB, বহনযোগ্য
  - Hard Disk → 20 MB – 100+ MB, স্থায়ী, দ্রুত
- **Keyboard** → টাইপরাইটারের মতো, মাইক্রোপ্রসেসর signal পাঠায়
- **Display Monitor** → Text + Graphics, video adapter এর মাধ্যমে
- **Printers**
  - Daisy Wheel → টাইপরাইটারের মতো
  - Dot Matrix → ডট দিয়ে লেখা/গ্রাফিক্স
  - Laser Printer → উচ্চ মানের, ব্যয়বহুল, শান্ত

---

## 13. Programming Languages

### 🔹 Machine Language
- শুধুমাত্র CPU বোঝে
- 0 ও 1 এর স্ট্রিং
- লেখা কঠিন

### 🔹 Assembly Language
- Machine Language এর symbolic রূপ
- **Assembler** → Assembly → Machine Code
- উদাহরণ:
  ```asm
  MOV AX, A
  ADD AX, 4
  MOV A, AX
