module Bullet3

# package code goes here
const file = joinpath(@__DIR__, "..", "deps", "deps.jl")
isfile(file) || error("Bullet3 not build correctly. Please run Pkg.build(\"Bullet3\")")

include(file)

function __init__()
    check_deps()
end

end # module
