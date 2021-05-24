# CELT
ETSIT -UPM: Circuitos Electrónicos ("Generador de funciones analógico y digital") en VHDL y LTSPICE

CIRCUITO.ASC (parte analógica) compuesto por: 
- Conversor analógico / digital: el circuito permite convertir un valor digital de 8 bits [B7..B0] en un valor de tensión proporcional a dicho valor digital. El circuito produce un cambio de signo, por lo que los niveles de tensión a su salida serán negativos. Los valores de tensión de los bits son 0V y 5V para el 0 y el 1 respectivamente. Además, este circuito actúa como un filtro paso bajo con frecuencia de corte fc. 
- Filtro de continua: Este circuito elimina la componente continua procedente del conversor D/A. Se trata de un filtro paso alto con un buffer seguidor de tensión.
- Comparador / cuadrador: es un comparador con histéresis, pudiendo definir un umbral de tensión de modo que cuando la señal de entrada supera este umbral bien positivo o negativo, la salida del operacional conmuta entre sus valores de saturación. De este modo se convierte la señal de entrada triangular en una señal cuadrada. 
- Filtro paso bajo de orden 2: para obtener la señal sinusoidal filtramos la señal triangular empleando un filtro paso bajo de orden 2 (con 2 polos). La descomposición en serie de Fourier de la señal triangular contiene la frecuencia fundamental y una serie de armónicos. Situando la frecuencia de corte del filtro en la frecuencia fundamental de la señal triangular conseguiremos atenuar los armónicos suficientemente para obtener una señal prácticamente sinusoidal a la salida.

main.vhd (parte digital) compuesto por: 
- Contador ascendente / descendente
- Generador ENABLE
- Autómata de control
