# Autogenerated wrapper script for MUMPS_jll for powerpc64le-linux-gnu-libgfortran4-mpi+openmpi
export libcmumpspar, libdmumpspar, libsmumpspar, libzmumpspar

using CompilerSupportLibraries_jll
using METIS_jll
using PARMETIS_jll
using SCOTCH_jll
using PTSCOTCH_jll
using SCALAPACK32_jll
using OpenBLAS32_jll
using OpenMPI_jll
JLLWrappers.@generate_wrapper_header("MUMPS")
JLLWrappers.@declare_library_product(libcmumpspar, "libcmumpspar.so")
JLLWrappers.@declare_library_product(libdmumpspar, "libdmumpspar.so")
JLLWrappers.@declare_library_product(libsmumpspar, "libsmumpspar.so")
JLLWrappers.@declare_library_product(libzmumpspar, "libzmumpspar.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, METIS_jll, PARMETIS_jll, SCOTCH_jll, PTSCOTCH_jll, SCALAPACK32_jll, OpenBLAS32_jll, OpenMPI_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libcmumpspar,
        "lib/libcmumpspar.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdmumpspar,
        "lib/libdmumpspar.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsmumpspar,
        "lib/libsmumpspar.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libzmumpspar,
        "lib/libzmumpspar.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
