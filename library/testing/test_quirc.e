note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_QUIRC

inherit
	EQA_TEST_SET

feature -- Test routines

	test_version
			-- New test routine

		do
			assert ("Version", not {QUIRC_FUNCTIONS}.quirc_version.is_case_insensitive_equal ("Unkown"))
		end

	test_quirc_initalization
		do
			if attached {QUIRC_STRUCT_API} {QUIRC_FUNCTIONS}.quirc_new as l_quirc then
				assert ("Expteted Attached", True)
				{QUIRC_FUNCTIONS}.quirc_destroy (l_quirc)
			else
				assert ("Unexpected", False)
			end
		end
end


