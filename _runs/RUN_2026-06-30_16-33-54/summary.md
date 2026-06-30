
# CACE Summary for ota-2stage

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |          ​ |          any |          ​ |     1.03 V/V |          ​ |   Error ❗   |
| Bandwidth            | ngspice              | bw                   |         10e6 Hz |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  1.003 V/V |          any |  1.004 V/V |          any |  1.004 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |         10e6 Hz | 21808100.000 Hz |          any | 22636000.000 Hz |          any | 23662600.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |          ​ |          any |          ​ |         1 mV |          ​ |   Error ❗   |
| Settling time        | ngspice              | tsettle              |             any |          ​ |          any |          ​ |        10 us |          ​ |   Error ❗   |

