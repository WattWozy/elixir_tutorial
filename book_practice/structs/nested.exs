defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do 
  defstruct owner: %Customer{}, details: "", severity: 1


# macros to access and modify nested object fields
#
# put_in(out_struct.in_struct.field, <value>)
#
# get_in(out_struct.in_struct.field)
#
# get_and_update_in() IEX doc covers it :)
#

end
