# Copyright 2015, alex at staticlibs.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required ( VERSION 2.8.11 )
# Configures Doxyfile for current project and runs Doxygen using it;
# OFF by default,
# to generate docs run: cmake with -DSTATICLIB_GENERATE_DOCS=ON

macro ( staticlib_enable_docs )
    option( STATICLIB_GENERATE_DOCS "generate docs" OFF )
    if ( STATICLIB_GENERATE_DOCS ) 
        configure_file ( ${STATICLIB_CMAKE}/doxygen/Doxyfile ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )
        execute_process ( COMMAND doxygen ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )
    endif ( ) 
endmacro ( )
