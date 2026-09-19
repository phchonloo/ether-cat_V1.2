# GitHub Codespaces

This repository includes a cloud development environment for the N32G45x
(Cortex-M4) EtherCAT firmware.

## Start the environment

1. Open the repository on GitHub.
2. Select **Code** > **Codespaces** > **Create codespace on main**.
3. Wait for the container build and the VS Code editor to open.

The environment installs:

- GNU Arm Embedded Toolchain (`arm-none-eabi-gcc`)
- GDB multiarch
- OpenOCD
- CMake and Ninja
- C/C++, Cortex-Debug, CMake, and XML editor extensions

The editor is configured with the include paths and preprocessor definitions
from `program/FCM4E1553 Ethercat/MDK-ARM/Project.uvprojx`.

## Important build limitation

The checked-in firmware project is a Keil MDK project and contains Keil-format
precompiled libraries. The Codespace supports source editing, navigation,
review, and ARM GCC tooling, but it does not make the existing Keil project
directly buildable on Linux. A reproducible cloud build requires either:

- a GCC-compatible build definition and GCC-compatible replacement libraries,
  or
- a separately licensed build service that supports the required Keil tools.

USB debug probes and the physical EtherCAT target are normally unavailable
inside GitHub Codespaces. Flashing and on-target debugging should be performed
on a local development machine or a connected self-hosted runner.
