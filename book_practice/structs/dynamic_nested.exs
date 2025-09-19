nested = %{
  buttercup: %{
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  westley: %{
      actor: %{
        first: "Cary",
        last: "Elwes" # typo!
      },
      role: "farm boy"
      }
} 

IO.inspect get_in(nested, [:buttercup])
IO.inspect get_in(nested, [:buttercup, :actor])
IO.inspect get_in(nested, [:buttercup, :actor, :first])
IO.inspect put_in(nested, [:westley, :actor, :last],"Elwes")

# COOL TRICK: you can pass a function to customize your filter 

authors = [
  %{name: "Jose", language: "Elixir"}, 
  %{name: "Matz", language: "Ruby"}, 
  %{name: "Larry", language: "Perl"}
]

languages_with_r = fn(:get, collection, next_fn) ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end
IO.inspect get_in(authors, [languages_with_r, :name])

