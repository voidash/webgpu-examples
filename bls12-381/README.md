# Wgsl implementaion of bls12_381



## GPU information

| Parameter | Value |
| :--- | :--- |
| name    | "Apple M1 GPU"    |
| vendor    | "Apple Inc."    |
| device    | "M1"    |
| device_type    | "IntegratedGpu"    |
| driver    | "Apple"    |
| driver_info    | "Metal"    |
| backend    | "Metal"    |


## Benchmark results

### Finite Field (Fp) and BigInt implementation

| Function         | Time (ms)       | Change (%)          | Performance  | Outliers  |
|------------------|-----------------|---------------------|--------------|-----------|
| Bigint multiply  | 5.9767 - 6.0708 | -2.2709 to -0.7045  | Improved     | 3 (3.00%) |
| Bigint add       | 5.9173 - 5.9494 | -4.0384 to -3.3743  | Improved     | 5 (5.00%) |
| Bigint adc       | 71.146 - 71.397 | -5.0628 to -4.6045  | Improved     | 8 (8.00%) |
| Bigint mac       | 5.9771 - 6.0688 | -2.6927 to -1.1293  | Improved     | 17 (17.00%)|
| Fp multiply      | 6.1307 - 6.2088 | -3.9553 to -2.3814  | Improved     | 8 (8.00%) |
| Fp subtract      | 6.0221 - 6.0413 | -3.0871 to -2.4717  | Improved     | 5 (5.00%) |

### Pairings implementation










