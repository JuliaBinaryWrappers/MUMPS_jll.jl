# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MUMPS_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("MUMPS")
JLLWrappers.@generate_main_file("MUMPS", UUID("ca64183c-ec4f-5579-95d5-17e128c21291"))
end  # module MUMPS_jll
