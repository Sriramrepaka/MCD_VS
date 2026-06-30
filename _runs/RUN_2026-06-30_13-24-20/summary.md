
# CACE Summary for ota-2stage

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |  1.003 V/V |          any |  1.004 V/V |     1.03 V/V |  1.007 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          8e6 Hz | 10522100.000 Hz |          any | 22609600.000 Hz |          any | 38988700.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  1.003 V/V |          any |  1.004 V/V |          any |  1.004 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |          8e6 Hz | 21808100.000 Hz |          any | 22636000.000 Hz |          any | 23662600.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.183 mV |          any |   0.189 mV |         1 mV |   0.214 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.010 us |          any |   0.015 us |        10 us |   0.031 us |   Pass ✅    |

