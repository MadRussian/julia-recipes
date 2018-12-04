if size(ARGS, 1) < 1
  println("Not enough arguments")
elseif ARGS[1] == "test"
  using Pkg
  Pkg.build("JuliaRecipes")
  Pkg.test("JuliaRecipes", coverage=true)
elseif ARGS[1] == "coverage"
  using Pkg
  Pkg.add("Coverage")
  using Coverage
  coverage = process_folder()
  @show get_summary(coverage)
  Coveralls.submit(coverage)
else
  println("Not supported: ", ARGS[1])
end

