# Hybrid Linkwitz-Riley (LR4) Active Crossover filter design using a 2-Stage OTA

This repository contains the complete design, sizing, schematic capture, and automated verification framework for a high-performance **Two-Stage Miller-Compensated Operational Transconductance Amplifier (OTA)**. Optimized using the $g_m/I_D$ methodology, this amplifier serves as the core operational block for an hybrid Linkwitz-Riley 4th-order (LR4) active crossover filter system.

The course makes heavy use of circuit simulation, using [**Xschem**](https://xschem.sourceforge.io) for schematic entry and [**ngspice**](https://ngspice.sourceforge.io) for simulation. The 130nm CMOS technology [**SG13G2**](https://github.com/IHP-GmbH/IHP-Open-PDK) from [IHP Microelectronics](https://www.ihp-microelectronics.com) is used.

Tools and PDK are integrated in the [**IIC-OSIC-TOOLS**](https://github.com/iic-jku/IIC-OSIC-TOOLS) Docker image.

This work takes heavy inspiration from [**Analog Circuit Design**](https://iic-jku.github.io/analog-circuit-design/aicd.html) course.

All material is made publicly available, to access a detailed report on the same click [**report**](https://sriramrepaka.github.io/MCD_VS/)

---

## 📂 Repository Structure

The project is organized linearly following a modern analog IC design flow, spanning from high-level behavioral models down to automated PVT verification:

```text
├── Behavioural Model/  # LTspice behavioural model simulation of the LR4 crossover filter
├── xschem/             # Schematic files (.sch) and testbenches for the 2-Stage OTA
├── gmid/               # Sizing scripts (.ipynb) leveraging the gm/ID methodology
├── cace/               # Automated PVT and MC simulation scripts, specification targets, and results
