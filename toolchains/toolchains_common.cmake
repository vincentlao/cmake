# Copyright 2016, alex at staticlibs.net
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

# default to Debug
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

# common g++ flags
set ( STATICLIB_COMMON_GPLUSPLUS_FLAGS
        "--std=c++11 -fPIC -Wall -Werror -Wextra -fno-strict-overflow -fno-strict-aliasing -fstack-protector-all" CACHE INTERNAL "" )
