using DataStructures
function madsmodelrun(parameters::Associative) # model run
	f(t) = parameters["a"] * t * t - parameters["b"] # a * t^2 - b
	times = 1:9
	predictions = OrderedDict{AbstractString, Float64}(zip(map(i -> string("o", i), times), map(f, times)))
	return predictions
end
