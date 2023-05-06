// Package weather about weather utils.
package weather

// CurrentCondition represents city current weather condition.
var CurrentCondition string
// CurrentLocation represents city current location.
var CurrentLocation string

// Forecast format city weather conditon.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
