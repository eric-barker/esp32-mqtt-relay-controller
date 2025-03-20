# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/jackson/esp/v5.4/esp-idf/components/bootloader/subproject"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/tmp"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/src/bootloader-stamp"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/src"
  "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/jackson/Documents/Repositories/esp32-mqtt-relay-controller/esp-idf-projects/temperature-sensor/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
