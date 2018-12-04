using Test
import JuliaRecipes

JuliaRecipes.greet()
JuliaRecipes.greet_alien()
@test JuliaRecipes.num(3) == 3
