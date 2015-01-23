module maquina_4_estados(clock_50mhz, clock_1hz, segmentos, anodo,estado);
  input clock_50mhz;                  //entrada de oscilacion del cristal externo
  output clock_1hz;                   //clock 1 segundo
  output reg [6:0] segmentos = 7'b3F; //apagar segmentos
  output reg anodo = 0;               //encender display1
  output reg [1:0] estado = 0;        //estado inicial para conectar 2 leds, 00,  01,  10,  11, 00 y se repite
  
  reg [25:0] cuenta_para_1hz = 0;  //inicializacion de la variable que servira para generar la salida de 1hz
  
  parameter [6:0] cero = 0;  //falta definir constante
  parameter [6:0] uno = 0; //falta definir parameter
  parameter [6:0] dos = 0; // falta definir parameter
  parameter [6:0] tres = 0; //falta definir parameter
  
  
  always @(posedge clock_50mhz)
  begin
    cuenta_para_1hz = cuenta_para_1hz + 1;
    if(cuenta_para_1hz == 25_000_000)
      begin
          clock_1hz =  ~clock_1hz;  //genera la señal de oscialcion, esta señal empezo en 0, valor inicial
          cuenta_para_1hz = 0; // resetea el contador
      end
  
  always @(posedge clock_1hz)
  begin
    case(estado)
      0:  estado <= 1;
      1:  estado <= 2;
      2:  estado <= 3;
      3:  estado <= 4;
    endcase
  end
  
  always @(estado)
  begin
    case(estado)
      0: segmentos = cero;
      1: segmentos = uno;
      2: segmentos = dos;
      3: segmentos = tres;
    endcase
  
  end
  
endmodule
