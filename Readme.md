# wrap_quirc
`wrap_quirc` is an Eiffel binding of [quirc C API](https://github.com/dlbeer/quirc) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

## Requirements 


*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [quirc C API](https://github.com/dlbeer/quirc).
Quirc is a C library for scanning QR codes.

## Download and  Install

### Linux

Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install lib quirc library

	vcpkg install quirc

Then copy `libquirc.a` to `/usr/local/lib` and `quirc.h` to `usr/local/include`


### Windows
Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install lib quirc library

	vcpkg install quirc:x64-windows-static
	
Then copy the files `quirc.lin` to `%LIBRARY_PATH%/wrap_quirc/library/C/lib`


## Status

Work in progress


## Examples

### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	`library/generated_wrapper/c/src` 

and run

	`finish_freezing --library`

It will copy the C lib `eif_libquirc.a` or `eif_libquirc.lib` under the library root `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`

