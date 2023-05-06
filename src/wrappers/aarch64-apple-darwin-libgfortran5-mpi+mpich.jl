# Autogenerated wrapper script for MUMPS_jll for aarch64-apple-darwin-libgfortran5-mpi+mpich
export libcmumps, libdmumps, libmumps_common, libsmumps, libzmumps

using CompilerSupportLibraries_jll
using METIS_jll
using SCOTCH_jll
using PARMETIS_jll
using SCALAPACK32_jll
using OpenBLAS32_jll
using MPICH_jll
JLLWrappers.@generate_wrapper_header("MUMPS")
JLLWrappers.@declare_library_product(libcmumps, "@rpath/libcmumps.dylib")
JLLWrappers.@declare_library_product(libdmumps, "@rpath/libdmumps.dylib")
JLLWrappers.@declare_library_product(libmumps_common, "@rpath/libmumps_common.dylib")
JLLWrappers.@declare_library_product(libsmumps, "@rpath/libsmumps.dylib")
JLLWrappers.@declare_library_product(libzmumps, "@rpath/libzmumps.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, METIS_jll, SCOTCH_jll, PARMETIS_jll, SCALAPACK32_jll, OpenBLAS32_jll, MPICH_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libcmumps,
        "lib/libcmumps.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdmumps,
        "lib/libdmumps.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmumps_common,
        "lib/libmumps_common.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsmumps,
        "lib/libsmumps.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libzmumps,
        "lib/libzmumps.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
