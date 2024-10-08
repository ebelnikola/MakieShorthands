# Package Description

This tiny package provides a few functions that help save time while plotting with CairoMakie. Current functions list: 

yloglines, xloglines, xyloglines, ylogscatter, xlogscatter, xylogscatter.

There are also functions that can be used to format tick labels:

float_scientific_LaTeX, int_LaTeX, int_powers_of_10_LaTeX, int_powers_of_2_LaTeX, int_power_of_10_scientific_LaTeX.

# Installation

Run the following commands in Julia:

```
using Pkg
Pkg.add("https://github.com/ebelnikola/MakieShorthands")
```

# TODO

I don't expect anyone to use this code except me. However, it is worth adding descriptions to the functions or, at least, explicit references to Makie documentation.
