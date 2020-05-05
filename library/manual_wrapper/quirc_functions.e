note
	description: "Summary description for {QUIRC_FUNCTIONS}."
	date: "$Date$"
	revision: "$Revision$"

class
	QUIRC_FUNCTIONS

inherit

	QUIRC_FUNCTIONS_API
		rename
			quirc_version as quirc_version_api
		end


feature -- Access

	quirc_version: STRING
		local
			l_ptr: POINTER
		do
			Result := "Unkown"
			l_ptr := quirc_version_api
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		end
end
