/*
enum CompoundingFrequency {
    case daily
    case monthly
    case halfyearly
    case yearly
}
*/

struct InvesmentCalculator {
    
var p:float
var i: float
var t: float
var a?: float
var f: Int

init(startingamount: float, rate: float, timeinyears: float, compoundingtime: character, additionalprincipal?: float){

p = startingamount
i = rate
t = timeinyears
if additionalprincipal != nil {

a = additionalprincipal

}

switch compoundingtime {

case "m":
	f = 12
case "y":
	f = 1
case "h":
	f = 2
default:
	f = 12


}
//f = compoundingtime
}

func schedulednumberofpayment() -> float{

return t * f

}

func scheduledpayment() -> float {
//scheduled payment
return (p*i/f) /(1 - (1 + i/f)^(-t*f))
}

func interestamount(currentprincipal: float) -> float {

return currentprincipal*(i/f)
}

func principalpaid(currentprincipal: float) -> float{
return scheduledpayment - interestamount(currentprincipal)
}


}