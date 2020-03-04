# Autogenerated wrapper script for MUMPS_jll for x86_64-unknown-freebsd11.1-libgfortran3
export libcmumps, libsmumps, libdmumps, libzmumps

using MPICH_jll
using METIS_jll
using PARMETIS_jll
using SCALAPACK_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcmumps`
const libcmumps_splitpath = ["lib", "libcmumps.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcmumps_path = ""

# libcmumps-specific global declaration
# This will be filled out by __init__()
libcmumps_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcmumps = "libcmumps.so"


# Relative path to `libsmumps`
const libsmumps_splitpath = ["lib", "libsmumps.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsmumps_path = ""

# libsmumps-specific global declaration
# This will be filled out by __init__()
libsmumps_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsmumps = "libsmumps.so"


# Relative path to `libdmumps`
const libdmumps_splitpath = ["lib", "libdmumps.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libdmumps_path = ""

# libdmumps-specific global declaration
# This will be filled out by __init__()
libdmumps_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libdmumps = "libdmumps.so"


# Relative path to `libzmumps`
const libzmumps_splitpath = ["lib", "libzmumps.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libzmumps_path = ""

# libzmumps-specific global declaration
# This will be filled out by __init__()
libzmumps_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libzmumps = "libzmumps.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"MUMPS")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (MPICH_jll.PATH_list, METIS_jll.PATH_list, PARMETIS_jll.PATH_list, SCALAPACK_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (MPICH_jll.LIBPATH_list, METIS_jll.LIBPATH_list, PARMETIS_jll.LIBPATH_list, SCALAPACK_jll.LIBPATH_list,))

    global libcmumps_path = normpath(joinpath(artifact_dir, libcmumps_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcmumps_handle = dlopen(libcmumps_path)
    push!(LIBPATH_list, dirname(libcmumps_path))

    global libsmumps_path = normpath(joinpath(artifact_dir, libsmumps_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsmumps_handle = dlopen(libsmumps_path)
    push!(LIBPATH_list, dirname(libsmumps_path))

    global libdmumps_path = normpath(joinpath(artifact_dir, libdmumps_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libdmumps_handle = dlopen(libdmumps_path)
    push!(LIBPATH_list, dirname(libdmumps_path))

    global libzmumps_path = normpath(joinpath(artifact_dir, libzmumps_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libzmumps_handle = dlopen(libzmumps_path)
    push!(LIBPATH_list, dirname(libzmumps_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

