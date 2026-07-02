
# CACE Summary for ota-2stage

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |  1.003 V/V |          any |  1.004 V/V |     1.03 V/V |  1.007 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |         10e6 Hz | 10522100.000 Hz |          any | 22609600.000 Hz |          any | 38988700.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  1.003 V/V |          any |  1.004 V/V |          any |  1.004 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |         10e6 Hz | 21808100.000 Hz |          any | 22636000.000 Hz |          any | 23662600.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.183 mV |          any |   0.189 mV |         1 mV |   0.214 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.010 us |          any |   0.015 us |        10 us |   0.031 us |   Pass ✅    |
| Passband Gain        | ngspice              | gain                 |        0.95 V/V |  1.002 V/V |          any |  1.003 V/V |     1.03 V/V |  1.006 V/V |   Pass ✅    |
| Cutoff Frequency (-3dB) | ngspice              | fc                   |        9.5e3 Hz | 9841.090 Hz |    10.0e3 Hz | 9926.370 Hz |    10.5e3 Hz | 10430.500 Hz |   Pass ✅    |
| Passband Gain (MC)   | ngspice              | gain_mc              |             any |  1.001 V/V |          any |  1.003 V/V |          any |  1.004 V/V |   Pass ✅    |
| Cutoff (MC)          | ngspice              | fc_mc                |          9e3 Hz | 9917.090 Hz |      10e3 Hz | 9928.145 Hz |      11e3 Hz | 9935.930 Hz |   Pass ✅    |
| Output noise LPF     | ngspice              | noise                |             any |   0.150 mV |          any |   0.172 mV |       5.0 mV |   0.220 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.001 us |       150 us |   0.003 us |       400 us |   0.046 us |   Pass ✅    |


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
