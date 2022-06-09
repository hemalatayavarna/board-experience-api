%dw 2.0
import p from Mule

//Set Company for all the 3 systems
fun setCompany(sourceSystem,company)=
	if (p('default.company.systems') contains (sourceSystem)) 
		p('default.company') 
	else
		company
