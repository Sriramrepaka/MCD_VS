
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
