mass 1 24.305
mass 2 15.999

group magnesium type 1
group oxygen type 2

set group magnesium charge 2.143305152470292
set group oxygen charge -2.143305152470292

variable R_cut equal 10.0

pair_style buck/coul/long ${R_cut}
pair_coeff 1 1 0.0 0.5 0.0 ${R_cut}
pair_coeff 1 2 1359.0681828665136 0.3009665482850089 0.0 ${R_cut}
pair_coeff 2 2 40246.996187483186 0.03762269364601255 37.86838926707774 ${R_cut}

kspace_style pppm 1.0e-5

neighbor 1.0 bin
neigh_modify every 1 delay 0 check yes