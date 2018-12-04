using Pkg
Pkg.build("JuliaRecipes")
Pkg.test("JuliaRecipes", coverage=true)
