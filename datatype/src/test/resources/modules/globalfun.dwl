%dw 2.0
//import * from dw::core::Strings
//output application/xml
//fun applyToKeys(element,func) = 
//	if ( element is Object ) element mapObject (value,key) ->{
//	(func(key)) : applyToKeys(value,func)
//}
//	else element
//---
//applyToKeys(payload,(key) -> lower(key))
%dw 2.0
fun toUpper(aString) = upper(aString)
fun toPhoneFormat(str:String) =
	"(" ++ str[0 to 2] ++ ")  "  ++ str[3 to 5] ++ "-" ++ str[6 to 9]