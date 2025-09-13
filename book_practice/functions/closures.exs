

title = fn pref -> fn name -> "#{pref} #{name}" end end

mrTitle = title.("Mr")
mrsTitle = title.("Mrs")
saintTitle = title.("Saint")

IO.puts(mrTitle.("John"))
IO.puts(mrsTitle.("Mary"))
IO.puts(saintTitle.("Matthew"))
IO.puts(title.("Herr").("Man"))
