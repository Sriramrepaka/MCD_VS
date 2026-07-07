
# CACE Summary for ota-2stage

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |  1.003 V/V |          any |  1.004 V/V |     1.03 V/V |  1.007 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |         10e6 Hz | 10522100.000 Hz |          any | 22609600.000 Hz |          any | 38988700.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  1.003 V/V |          any |  1.004 V/V |          any |  1.004 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |         10e6 Hz | 21808100.000 Hz |          any | 22636000.000 Hz |          any | 23662600.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.183 mV |          any |   0.189 mV |         1 mV |   0.214 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.187 us |          any |   0.198 us |        10 us |   0.208 us |   Pass ✅    |
| Passband Gain LPF    | ngspice              | gain                 |        0.95 V/V |  1.002 V/V |          any |  1.003 V/V |     1.03 V/V |  1.006 V/V |   Pass ✅    |
| Cutoff Frequency LPF (-3dB) | ngspice              | fc                   |        9.5e3 Hz | 9841.090 Hz |    10.0e3 Hz | 9926.370 Hz |    10.5e3 Hz | 10430.500 Hz |   Pass ✅    |
| Passband Gain LPF (MC) | ngspice              | gain_mc              |             any |  1.001 V/V |          any |  1.003 V/V |          any |  1.004 V/V |   Pass ✅    |
| Cutoff Frequency LPF (MC) | ngspice              | fc_mc                |        9.5e3 Hz | 9917.090 Hz |      10e3 Hz | 9928.145 Hz |    10.5e3 Hz | 9935.930 Hz |   Pass ✅    |
| Output noise LPF     | ngspice              | noise                |             any |   0.150 mV |          any |   0.172 mV |       5.0 mV |   0.220 mV |   Pass ✅    |
| Settling time LPF    | ngspice              | tsettle              |             any |  46.272 us |       150 us |  49.572 us |       400 us |  52.504 us |   Pass ✅    |
| Passband Gain LR4 LPF | ngspice              | gain_lpf             |        0.95 V/V |  1.003 V/V |          any |  1.007 V/V |     1.15 V/V |  1.129 V/V |   Pass ✅    |
| Passband Gain LR4 HPF | ngspice              | gain_hpf             |        0.95 V/V |  0.964 V/V |          any |  0.982 V/V |     1.15 V/V |  1.088 V/V |   Pass ✅    |
| Cutoff Frequency LPF (-3dB) | ngspice              | fc_lpf               |        9.4e3 Hz | 9842.690 Hz |    10.0e3 Hz | 9926.930 Hz |    10.5e3 Hz | 10477.200 Hz |   Pass ✅    |
| Cutoff Frequency HPF (-3dB) | ngspice              | fc_hpf               |        9.4e3 Hz | 9418.050 Hz |    10.0e3 Hz | 9925.470 Hz |    10.5e3 Hz | 9949.630 Hz |   Pass ✅    |
| Phase Mismatch LPR4  | ngspice              | phase_error          |             0 ° |    0.006 ° |          0 ° |    0.007 ° |          5 ° |    0.008 ° |   Pass ✅    |
| Output noise LR4 LPF | ngspice              | noise_lpf            |             any |   0.181 mV |          any |   0.208 mV |       5.0 mV |   0.277 mV |   Pass ✅    |
| Output noise LR4 HPF | ngspice              | noise_hpf            |             any |   0.193 mV |          any |   0.222 mV |       5.0 mV |   0.292 mV |   Pass ✅    |
| Settling time LR4 LPF | ngspice              | tsettle_lpf          |             any | 143.976 us |       150 us | 147.827 us |       280 us | 149.603 us |   Pass ✅    |
| Settling time LR4 HPF | ngspice              | tsettle_hpf          |             any |  39.068 us |       150 us |  39.535 us |       280 us |  41.717 us |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./ota-2stage/schematic/gain_vs_temp.png)

## gain_vs_vin

![gain_vs_vin](./ota-2stage/schematic/gain_vs_vin.png)

## gain_vs_vdd

![gain_vs_vdd](./ota-2stage/schematic/gain_vs_vdd.png)

## gain_vs_corner

![gain_vs_corner](./ota-2stage/schematic/gain_vs_corner.png)

## bw_vs_temp

![bw_vs_temp](./ota-2stage/schematic/bw_vs_temp.png)

## bw_vs_vin

![bw_vs_vin](./ota-2stage/schematic/bw_vs_vin.png)

## bw_vs_vdd

![bw_vs_vdd](./ota-2stage/schematic/bw_vs_vdd.png)

## bw_vs_corner

![bw_vs_corner](./ota-2stage/schematic/bw_vs_corner.png)

## gain_mc

![gain_mc](./ota-2stage/schematic/gain_mc.png)

## bw_mc

![bw_mc](./ota-2stage/schematic/bw_mc.png)

## noise_vs_temp

![noise_vs_temp](./ota-2stage/schematic/noise_vs_temp.png)

## noise_vs_vin

![noise_vs_vin](./ota-2stage/schematic/noise_vs_vin.png)

## noise_vs_vdd

![noise_vs_vdd](./ota-2stage/schematic/noise_vs_vdd.png)

## noise_vs_corner

![noise_vs_corner](./ota-2stage/schematic/noise_vs_corner.png)

## settling_vs_temp

![settling_vs_temp](./ota-2stage/schematic/settling_vs_temp.png)

## settling_vs_vin

![settling_vs_vin](./ota-2stage/schematic/settling_vs_vin.png)

## settling_vs_vdd

![settling_vs_vdd](./ota-2stage/schematic/settling_vs_vdd.png)

## settling_vs_corner

![settling_vs_corner](./ota-2stage/schematic/settling_vs_corner.png)

## gain_vs_temp_lpf

![gain_vs_temp_lpf](./ota-2stage/schematic/gain_vs_temp_lpf.png)

## gain_vs_vin_lpf

![gain_vs_vin_lpf](./ota-2stage/schematic/gain_vs_vin_lpf.png)

## gain_vs_vdd_lpf

![gain_vs_vdd_lpf](./ota-2stage/schematic/gain_vs_vdd_lpf.png)

## gain_vs_corner_lpf

![gain_vs_corner_lpf](./ota-2stage/schematic/gain_vs_corner_lpf.png)

## fc_vs_temp_lpf

![fc_vs_temp_lpf](./ota-2stage/schematic/fc_vs_temp_lpf.png)

## fc_vs_vin_lpf

![fc_vs_vin_lpf](./ota-2stage/schematic/fc_vs_vin_lpf.png)

## fc_vs_vdd_lpf

![fc_vs_vdd_lpf](./ota-2stage/schematic/fc_vs_vdd_lpf.png)

## fc_vs_corner_lpf

![fc_vs_corner_lpf](./ota-2stage/schematic/fc_vs_corner_lpf.png)

## gain_mc_lpf

![gain_mc_lpf](./ota-2stage/schematic/gain_mc_lpf.png)

## fc_mc_lpf

![fc_mc_lpf](./ota-2stage/schematic/fc_mc_lpf.png)

## noise_vs_temp_lpf

![noise_vs_temp_lpf](./ota-2stage/schematic/noise_vs_temp_lpf.png)

## noise_vs_vin_lpf

![noise_vs_vin_lpf](./ota-2stage/schematic/noise_vs_vin_lpf.png)

## noise_vs_vdd_lpf

![noise_vs_vdd_lpf](./ota-2stage/schematic/noise_vs_vdd_lpf.png)

## noise_vs_corner_lpf

![noise_vs_corner_lpf](./ota-2stage/schematic/noise_vs_corner_lpf.png)

## settling_vs_temp_lpf

![settling_vs_temp_lpf](./ota-2stage/schematic/settling_vs_temp_lpf.png)

## settling_vs_vin_lpf

![settling_vs_vin_lpf](./ota-2stage/schematic/settling_vs_vin_lpf.png)

## settling_vs_vdd_lpf

![settling_vs_vdd_lpf](./ota-2stage/schematic/settling_vs_vdd_lpf.png)

## settling_vs_corner_lpf

![settling_vs_corner_lpf](./ota-2stage/schematic/settling_vs_corner_lpf.png)

## gain_vs_temp_lr4_lpf

![gain_vs_temp_lr4_lpf](./ota-2stage/schematic/gain_vs_temp_lr4_lpf.png)

## gain_vs_vin_lr4_lpf

![gain_vs_vin_lr4_lpf](./ota-2stage/schematic/gain_vs_vin_lr4_lpf.png)

## gain_vs_vdd_lr4_lpf

![gain_vs_vdd_lr4_lpf](./ota-2stage/schematic/gain_vs_vdd_lr4_lpf.png)

## gain_vs_corner_lr4_lpf

![gain_vs_corner_lr4_lpf](./ota-2stage/schematic/gain_vs_corner_lr4_lpf.png)

## fc_vs_temp_lr4_lpf

![fc_vs_temp_lr4_lpf](./ota-2stage/schematic/fc_vs_temp_lr4_lpf.png)

## fc_vs_vin_lr4_lpf

![fc_vs_vin_lr4_lpf](./ota-2stage/schematic/fc_vs_vin_lr4_lpf.png)

## fc_vs_vdd_lr4_lpf

![fc_vs_vdd_lr4_lpf](./ota-2stage/schematic/fc_vs_vdd_lr4_lpf.png)

## fc_vs_corner_lr4_lpf

![fc_vs_corner_lr4_lpf](./ota-2stage/schematic/fc_vs_corner_lr4_lpf.png)

## gain_vs_temp_lr4_hpf

![gain_vs_temp_lr4_hpf](./ota-2stage/schematic/gain_vs_temp_lr4_hpf.png)

## gain_vs_vin_lr4_hpf

![gain_vs_vin_lr4_hpf](./ota-2stage/schematic/gain_vs_vin_lr4_hpf.png)

## gain_vs_vdd_lr4_hpf

![gain_vs_vdd_lr4_hpf](./ota-2stage/schematic/gain_vs_vdd_lr4_hpf.png)

## gain_vs_corner_lr4_hpf

![gain_vs_corner_lr4_hpf](./ota-2stage/schematic/gain_vs_corner_lr4_hpf.png)

## fc_vs_temp_lr4_hpf

![fc_vs_temp_lr4_hpf](./ota-2stage/schematic/fc_vs_temp_lr4_hpf.png)

## fc_vs_vin_lr4_hpf

![fc_vs_vin_lr4_hpf](./ota-2stage/schematic/fc_vs_vin_lr4_hpf.png)

## fc_vs_vdd_lr4_hpf

![fc_vs_vdd_lr4_hpf](./ota-2stage/schematic/fc_vs_vdd_lr4_hpf.png)

## fc_vs_corner_lr4_hpf

![fc_vs_corner_lr4_hpf](./ota-2stage/schematic/fc_vs_corner_lr4_hpf.png)

## phase_error_vs_temp

![phase_error_vs_temp](./ota-2stage/schematic/phase_error_vs_temp.png)

## phase_error_vs_corner

![phase_error_vs_corner](./ota-2stage/schematic/phase_error_vs_corner.png)

## noise_vs_temp_lpf

![noise_vs_temp_lpf](./ota-2stage/schematic/noise_vs_temp_lpf.png)

## noise_vs_vin_lpf

![noise_vs_vin_lpf](./ota-2stage/schematic/noise_vs_vin_lpf.png)

## noise_vs_vdd_lpf

![noise_vs_vdd_lpf](./ota-2stage/schematic/noise_vs_vdd_lpf.png)

## noise_vs_corner_lpf

![noise_vs_corner_lpf](./ota-2stage/schematic/noise_vs_corner_lpf.png)

## noise_vs_temp_hpf

![noise_vs_temp_hpf](./ota-2stage/schematic/noise_vs_temp_hpf.png)

## noise_vs_vin_hpf

![noise_vs_vin_hpf](./ota-2stage/schematic/noise_vs_vin_hpf.png)

## noise_vs_vdd_hpf

![noise_vs_vdd_hpf](./ota-2stage/schematic/noise_vs_vdd_hpf.png)

## noise_vs_corner_hpf

![noise_vs_corner_hpf](./ota-2stage/schematic/noise_vs_corner_hpf.png)

## settling_vs_temp_lr4_lpf

![settling_vs_temp_lr4_lpf](./ota-2stage/schematic/settling_vs_temp_lr4_lpf.png)

## settling_vs_vin_lr4_lpf

![settling_vs_vin_lr4_lpf](./ota-2stage/schematic/settling_vs_vin_lr4_lpf.png)

## settling_vs_vdd_lr4_lpf

![settling_vs_vdd_lr4_lpf](./ota-2stage/schematic/settling_vs_vdd_lr4_lpf.png)

## settling_vs_corner_lr4_lpf

![settling_vs_corner_lr4_lpf](./ota-2stage/schematic/settling_vs_corner_lr4_lpf.png)

## settling_vs_temp_lr4_hpf

![settling_vs_temp_lr4_hpf](./ota-2stage/schematic/settling_vs_temp_lr4_hpf.png)

## settling_vs_vin_lr4_hpf

![settling_vs_vin_lr4_hpf](./ota-2stage/schematic/settling_vs_vin_lr4_hpf.png)

## settling_vs_vdd_lr4_hpf

![settling_vs_vdd_lr4_hpf](./ota-2stage/schematic/settling_vs_vdd_lr4_hpf.png)

## settling_vs_corner_lr4_hpf

![settling_vs_corner_lr4_hpf](./ota-2stage/schematic/settling_vs_corner_lr4_hpf.png)
