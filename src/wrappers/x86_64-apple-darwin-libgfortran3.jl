# Autogenerated wrapper script for MUMPS_jll for x86_64-apple-darwin-libgfortran3
export libcmumps, libdmumps, libsmumps, libzmumps

using CompilerSupportLibraries_jll
using MPICH_jll
using METIS_jll
using PARMETIS_jll
using SCALAPACK_jll
using OpenBLAS_jll
JLLWrappers.@generate_wrapper_header("MUMPS")
JLLWrappers.@declare_library_product(libcmumps, "@rpath/libcmumps.dylib")
JLLWrappers.@declare_library_product(libdmumps, "@rpath/libdmumps.dylib")
JLLWrappers.@declare_library_product(libsmumps, "@rpath/libsmumps.dylib")
JLLWrappers.@declare_library_product(libzmumps, "@rpath/libzmumps.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, MPICH_jll, METIS_jll, PARMETIS_jll, SCALAPACK_jll, OpenBLAS_jll)
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
