module Statistics

export
    TurbulentKineticEnergy,
    horizontal_averages,
    FieldSlice,
    FieldSlices,
    XYSlice,
    XYSlices,
    YZSlice,
    YZSlices,
    XZSlice,
    XZSlices

using Oceananigans,
      Oceananigans.AbstractOperations,
      Oceananigans.Architectures,
      Oceananigans.Diagnostics,
      Oceananigans.Grids,
      Oceananigans.Fields,
      Oceananigans.Operators

using Oceananigans.Utils: @loop_xyz, datatuple

using GPUifyLoops: @loop, @launch

include("turbulent_kinetic_energy.jl")
include("horizontal_averages.jl")
include("two_dimensional_slices.jl")

end # module
