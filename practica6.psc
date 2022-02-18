Algoritmo sin_titulo
	definir precio,tasa_cambio,precio_en_tasa,sub_total como real
	definir monto_iva,monto_descuento,billetes,monto_total Como Real
	definir cantidad,porc_descuento como entero
	
	mostrar "Introduzca el precio en $ del producto que va a comprar:"
	leer precio
	mostrar "Introduzca la cantidad de unidades que va a comprar:"
	leer cantidad
	mostrar "Cuanto es la tasa de cambio $ -> Bs actual:"
	leer tasa_cambio
	
	precio_en_tasa <- precio*tasa_cambio
	
	mostrar "el precio en Bs del producto es " precio_en_tasa
	
	mostrar "Introduzca el porcentaje de descuento "
	mostrar "Nota: 0 si no hay descuento, 100 si no pagara nada:"
	leer porc_descuento
	
	sub_total <- precio*cantidad
	monto_descuento <- sub_total*porc_descuento/100
	sub_total_menos_descuento <- sub_total-monto_descuento
	monto_iva <- sub_total_menos_descuento*0.16
	monto_total <- sub_total_menos_descuento+monto_iva
	
	mostrar "El sub total a pagar es " sub_total "$ o " precio_en_tasa*cantidad " bs"
	mostrar "El porcentaje de descuento es " porc_descuento "% que equivale son " 
	mostrar monto_descuento "$"
	
	mostrar "El sub total menos el descuento es " sub_total_menos_descuento "$"
	
	mostrar "El monto a pagar por IVA es " monto_iva "$"
	mostrar "El monto total a pagar es " monto_total "$"
	
	mostrar "Con que billete(s) va a pagar:"
	leer billetes
	
	mostrar "El monto del cambio es " billetes - monto_total "$"
	mostrar "En Bs es " (billetes - monto_total) * tasa_cambio
	
	
FinAlgoritmo

