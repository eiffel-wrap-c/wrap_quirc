-- enum wrapper
class QUIRC_DECODE_ERROR_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quirc_success or a_value = quirc_error_invalid_grid_size or a_value = quirc_error_invalid_version or a_value = quirc_error_format_ecc or a_value = quirc_error_data_ecc or a_value = quirc_error_unknown_data_type or a_value = quirc_error_data_overflow or a_value = quirc_error_data_underflow
		end

	quirc_success: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_SUCCESS"
		end

	quirc_error_invalid_grid_size: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_INVALID_GRID_SIZE"
		end

	quirc_error_invalid_version: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_INVALID_VERSION"
		end

	quirc_error_format_ecc: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_FORMAT_ECC"
		end

	quirc_error_data_ecc: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_DATA_ECC"
		end

	quirc_error_unknown_data_type: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_UNKNOWN_DATA_TYPE"
		end

	quirc_error_data_overflow: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_DATA_OVERFLOW"
		end

	quirc_error_data_underflow: INTEGER 
		external
			"C inline use <quirc.h>"
		alias
			"QUIRC_ERROR_DATA_UNDERFLOW"
		end

end
