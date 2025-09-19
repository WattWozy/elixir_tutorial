cast = [
  %{
    character: "Buttercup", 
    actor: %{
      first: "Robin",
      second: "Wright"
    }, 
    role: "princess"
  }, 
  %{
    character: "Westley", 
    actor: %{
      first: "Cary", 
      second: "Elwes"
    }, 
    role: "farm boy"
  }
]

# Access module provides a number of predefined functions to use
# as parameters to get_in and get_in_and_update
# These functions act as simple filters while traversing the structure
# "all" and "at" work only on lists

IO.inspect get_in(cast, [Access.all(), :character])
IO.inspect get_in(cast, [Access.at(1), :role])
#IO.inspect get_and_update_in(cast, [Access.all(), :actor, :last], fn (val) -> {val, String.upcase(val, :default)} end)

