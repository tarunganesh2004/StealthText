# StealthText - Hidden Message Encoder 🔐

## 🔷 What is Zig & Why Zig?
### **What is Zig?**
Zig is a modern, low-level programming language designed for **performance, safety, and simplicity**. It provides **manual memory management** like C, but with added safety features and **zero runtime dependencies**.

### **Why Use Zig?**
- 🚀 **Fast & Lightweight** – No garbage collector, minimal overhead.
- 🔥 **Manual Control** – Precise memory management without footguns.
- ⚡ **Cross-Platform** – Write once, run anywhere.
- 🔄 **Interoperability** – Easily integrates with C libraries.

## 📜 Description
StealthText is a CLI-based steganography tool written in **Zig** that hides secret messages inside normal text using zero-width characters. It allows encoding and decoding messages without altering visible text.

## 🚀 Features
- **Encode** hidden messages into normal text
- **Decode** messages to retrieve the original secret text
- **Uses zero-width steganography** for invisible communication

## 🛠️ Installation & Setup
### **1️⃣ Install Zig**
- Download and install Zig from: [https://ziglang.org/download/](https://ziglang.org/download/)
- Verify installation:
  ```sh
  zig version
  ```

### **2️⃣ Clone the Repository**
```sh
git clone https://github.com/yourusername/StealthText.git
cd StealthText
```

### **3️⃣ Run the Program**
#### **Encoding a Message**
```sh
zig run stealthtext.zig encode "Hello, world!"
```
#### **Decoding a Message**
```sh
zig run stealthtext.zig decode "Hello, world! (with hidden text)"
```

## 📂 Folder Structure
```txt
StealthText/  
│── src/  
│   ├── encoder.zig  # Encodes hidden messages  
│   ├── decoder.zig  # Decodes hidden messages  
│── stealthtext.zig  # CLI entry point  
│── README.md  
│── zig.mod  # Zig package manager (optional)  
```

## 🔥 Contributing
Feel free to submit pull requests and improve this project!

## 📜 License
This project is open-source under the **MIT License**.
