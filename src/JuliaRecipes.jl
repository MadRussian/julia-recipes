module JuliaRecipes
import Random

greet() = print("Hello World!")
greet_alien() = print("Hello ", Random.randstring(8))
num(x) = x

end # module
