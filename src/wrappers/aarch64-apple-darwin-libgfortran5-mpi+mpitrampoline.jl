# Autogenerated wrapper script for MUMPS_jll for aarch64-apple-darwin-libgfortran5-mpi+mpitrampoline
export libcmumpspar, libdmumpspar, libsmumpspar, libzmumpspar

using CompilerSupportLibraries_jll
using METIS_jll
using PARMETIS_jll
using SCOTCH_jll
using PTSCOTCH_jll
using SCALAPACK32_jll
using OpenBLAS32_jll
using MPItrampoline_jll
JLLWrappers.@generate_wrapper_header("MUMPS")
JLLWrappers.@declare_library_product(libcmumpspar, "@rpath/libcmumpspar.dylib")
JLLWrappers.@declare_library_product(libdmumpspar, "@rpath/libdmumpspar.dylib")
JLLWrappers.@declare_library_product(libsmumpspar, "@rpath/libsmumpspar.dylib")
JLLWrappers.@declare_library_product(libzmumpspar, "@rpath/libzmumpspar.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, METIS_jll, PARMETIS_jll, SCOTCH_jll, PTSCOTCH_jll, SCALAPACK32_jll, OpenBLAS32_jll, MPItrampoline_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libcmumpspar,
        "lib/libcmumpspar.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdmumpspar,
        "lib/libdmumpspar.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsmumpspar,
        "lib/libsmumpspar.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libzmumpspar,
        "lib/libzmumpspar.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
