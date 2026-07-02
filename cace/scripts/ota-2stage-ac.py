# Imports
import numpy as np
from typing import Any
# ============================================

# Functions
# With this function, the user can post-process the data from CACE, 
# plot it, save it and write it back to the CACE .yaml file.
# https://github.com/efabless/cace/blob/main/docs/source/tutorials/custom_scripts.md
def postprocess(results: dict[str, list], conditions: dict[str, Any]) -> dict[str, list]:
    # Print results and conditions for debugging
    # print(f'results: {results}')
    # print(f'conditions: {conditions}')
    
    # Iterate over gain MC results
    gain_mc_arr = []
    for gain_mc in results['gain_mc']:
        gain_mc_arr.append(gain_mc)
    print(f'gain_mc_arr = {gain_mc_arr}')
    
    # Delete statistical outliers in gain_mc_arr
    gain_mc_arr = [val for val in gain_mc_arr if 0.1 <= val <= 10]
    print(f'gain_mc_arr = {gain_mc_arr}')
    
    # 2. Process Frequency Metric (Dynamic Check)
    freq_mc_arr = []
    
    # Check if this is the Voltage Buffer Testbench (looking for 'bw_mc')
    if 'bw_mc' in results:
        for bw_mc in results['bw_mc']:
            freq_mc_arr.append(bw_mc)
        # Outlier filter for wideband buffer (10 kHz to 10 GHz)
        freq_mc_arr = [val for val in freq_mc_arr if 10e3 <= val <= 10e9]
        header_str = "gain_mc_arr,bw_mc_arr"
        return_dict = {'gain_mc_arr': gain_mc_arr, 'bw_mc_arr': freq_mc_arr}
        csv_filename = 'cace/scripts/ota-2stage-ac.csv'

    # Otherwise, check if this is the LPF Testbench (looking for 'fc_mc')
    elif 'fc_mc' in results:
        for fc_mc in results['fc_mc']:
            freq_mc_arr.append(fc_mc)
        # Outlier filter for narrow 10 kHz audio filter band (1 kHz to 100 kHz)
        freq_mc_arr = [val for val in freq_mc_arr if 1e3 <= val <= 100e3]
        header_str = "gain_mc_arr,fc_mc_arr"
        return_dict = {'gain_mc_arr': gain_mc_arr, 'fc_mc_arr': freq_mc_arr}
        csv_filename = 'cace/scripts/lpf-2stage-ac.csv'
        
    else:
        print("Warning: No matching frequency metric found in results dictionary.")
        return {'gain_mc_arr': gain_mc_arr}

    # 3. Save the data to the correct CSV file path
    np.savetxt(csv_filename, 
        np.column_stack((np.array(gain_mc_arr), np.array(freq_mc_arr))), comments = "", 
        header = header_str, delimiter = ",")

    return return_dict
# ============================================