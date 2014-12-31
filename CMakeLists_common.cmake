
cmake_minimum_required ( VERSION 2.8 )

# not a project, should be used with 'include'
# project ( staticlib_util_cmake CXX )
# set ( ${PROJECT_NAME}_VERSION_MAJOR 1 )
# set ( ${PROJECT_NAME}_VERSION_MINOR 0 )
# set ( ${PROJECT_NAME}_VERSION_MICRO 0 )

# common variables
set ( STATICLIB_CXX_POSTFIX .cpp )
set ( STATICLIB_CXX_TEST_POSTFIX _test.cpp )
set ( STATICLIB_CXX_INCLUDE_DIR include )
set ( STATICLIB_CXX_SOURCES_DIR src )
set ( STATICLIB_CXX_TEST_DIR test )

# include all macros
file ( GLOB_RECURSE STATICLIB_COMMON_MACROS 
    ${STATICLIB_PARENT_DIR}/staticlib_util_cmake/macros/*.cmake )
foreach ( commonmacro ${STATICLIB_COMMON_MACROS} )
    include ( ${commonmacro} )
endforeach ( commonmacro ${STATICLIB_COMMON_MACROS} )