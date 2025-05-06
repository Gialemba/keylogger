# Keylogger

A simple proof-of-concept (PoC) Linux keylogger implemented in C.

##  Overview

This project demonstrates a basic keylogging technique on Linux systems. The keylogger captures keystrokes by hooking into the keyboard input system. It serves as an educational tool to understand how keylogging works at a low level.

##  Features

- **Keystroke Capture**: Records key presses.
- **Low-Level Implementation**: Utilizes kernel-level hooks for capturing input.
- **Educational Purpose**: Designed to demonstrate keylogging techniques for learning and research.

##  Installation

### Prerequisites

- A Linux system with kernel headers installed.

### Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/Gialemba/keylogger.git
   cd keylogger
   ```
2. Compile the kernel module:

  ```bash
  make
  ```
3. Insert the module into the kernel:

  ```bash
  sudo make load
  ```
4. To remove the module:

  ```bash
  sudo make unload
  ```
### USAGE

1. After inserting the module, the keylogger will start capturing keystrokes.

2. To stop the keylogger, remove the module using the command provided above.

3. Captured keystrokes can be found in the keyboard.log: (path has to be defined)

### WARNINGS

- **Educational Use Only**: This keylogger is intended for educational purposes to understand keylogging techniques.

- **System Stability**: Improper use of kernel modules can lead to system instability. Ensure you understand the implications before loading this module.

- **Legal Considerations**: Unauthorized use of keyloggers is illegal and unethical. Only use this tool on systems where you have explicit permission.
