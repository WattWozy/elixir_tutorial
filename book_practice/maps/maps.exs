
map = %{name: "David", likes: "programming", where: "Spain"}
map1 = %{name: "Nicke", likes: "vegetables", sport: "running"} 
map2 = %{name: "Nicke", likes: "vegetables", sport: "running"} 

# Referencing the Map object

# value listing
keys = Map.values map

# key listing
values = Map.keys map

# key searching
country = map.where #also map[:where]

# map dropping
newmap = Map.drop map, [:name]

# mapp adding
newmap2 = Map.put map, :name, "Niklas"

# asking for a key (boolean) 
Map.has_key? map, :where

# matching maps
Map.equal? map1, map2

# separates a value from a map
Map.pop map1, :where # returns %{value, %{rest_of_map}}

