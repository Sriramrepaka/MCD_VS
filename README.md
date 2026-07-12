# High-Fidelity Audio Linkwitz-Riley (LR4) Active Crossover System

This repository contains the complete design, sizing, schematic capture, and automated verification framework for a high-performance **Two-Stage Miller-Compensated Operational Transconductance Amplifier (OTA)**. Optimized using the $g_m/I_D$ methodology, this amplifier serves as the core operational block for an hybrid Linkwitz-Riley 4th-order (LR4) active crossover filter system.

The course makes heavy use of circuit simulation, using [**Xschem**](https://xschem.sourceforge.io) for schematic entry and [**ngspice**](https://ngspice.sourceforge.io) for simulation. The 130nm CMOS technology [**SG13G2**](https://github.com/IHP-GmbH/IHP-Open-PDK) from [IHP Microelectronics](https://www.ihp-microelectronics.com) is used.

Tools and PDK are integrated in the [**IIC-OSIC-TOOLS**](https://github.com/iic-jku/IIC-OSIC-TOOLS) Docker image, which will be used during the coursework.

All course material is made publicly available

---

## 📂 Repository Structure

The project is organized linearly following a modern analog IC design flow, spanning from high-level behavioral models down to automated PVT verification:

```text
├── Behavioural Model/  # LTspice ideal system-level simulation of the LR4 crossover filter
├── Xchem/              # Schematic capture files (.sch) and testbenches for the 2-Stage OTA
├── gmid/               # Sizing scripts (.ipynb) leveraging the gm/ID methodology
├── cace/               # Automated PVT simulation scripts, specification targets, and results
