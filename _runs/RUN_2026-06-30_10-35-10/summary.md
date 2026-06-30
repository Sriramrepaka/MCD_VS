
# CACE Summary for ota-2stage

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |  1.002 V/V |          any |  1.004 V/V |     1.03 V/V |  1.010 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          8e6 Hz | 6102980.000 Hz |          any | 8834620.000 Hz |          any | 11286100.000 Hz |   Fail ❌    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  1.003 V/V |          any |  1.004 V/V |          any |  1.004 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |          8e6 Hz | 8682490.000 Hz |          any | 8850875.000 Hz |          any | 9165240.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.180 mV |          any |   0.208 mV |         1 mV |   0.252 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.009 us |          any |   0.016 us |        10 us |   0.041 us |   Pass ✅    |

