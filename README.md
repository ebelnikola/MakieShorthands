# Package Description

This tiny package provides a few functions that help save time while plotting with CairoMakie. Current functions list: 

yloglines, xloglines, xyloglines,ylogscatter,xlogscatter,xylogscatter.

methods for lines and scatter taking X::Vector, Y::Matrix and plotting each column of Y against X. 

# Installation

Run the following commands in Julia:

```
using Pkg
Pkg.add("https://github.com/ebelnikola/MakieShorthands")
```

# TODO

I don't expect anyone to use this code except me. However, it is worth adding descriptions to the functions or, at least, explicit references to Makie documentation.
