module maquina_4_estados(clock_50mhz, clock_1hz, segmentos, anodos,estado);
  input clock_50mhz;                  //entrada de oscilacion del cristal externo
  output clock_1hz;                   //clock 1 segundo
  output reg [6:0] segmentos = 7'b3F; //apagar segmentos
  output reg [1:0] anodos = 0;               //encender display1 y display 2 con el rotabit
  output reg [1:0] estado = 0;        //estado inicial para conectar 2 leds, 00,  01,  10,  11, 00 y se repite
  
  reg [25:0] cuenta_para_1hz = 0;  //inicializacion de la variable que servira para generar la salida de 1hz
  reg [25:0] cuenta_para_2khz = 0;
  
  reg clock_2khz = 0;
  reg [1:0] rotabit = 0;  // para otra maquina de estados
  
  
  parameter [6:0] cero = 0;  //falta definir constante
  parameter [6:0] uno = 0; //falta definir parameter
  parameter [6:0] dos = 0; // falta definir parameter
  parameter [6:0] tres = 0; //falta definir parameter
  
  
  always @(posedge clock_50mhz)  //genera una señal de 1hz
  begin
    cuenta_para_1hz = cuenta_para_1hz + 1;
    if(cuenta_para_1hz == 25_000_000)
      begin
          clock_1hz =  ~clock_1hz;  //genera la señal de oscialcion, esta señal empezo en 0, valor inicial
          cuenta_para_1hz = 0; // resetea el contador
      end
  end
  
    always @(posedge clock_50mhz) // genera 1 señal de 2khz bueno no es cierto, hay que calcular bien el valor limite de la cuenta
  begin
    cuenta_para_2khz = cuenta_para_2khz + 1;
    if(cuenta_para_2khz == 55_000)
      begin
          clock_2khz =  ~clock_2khz;  //genera la señal de oscialcion, esta señal empezo en 0, valor inicial
          cuenta_para_2khz = 0; // resetea el contador
      end
  end
  
    always @(posedge clock_2khz)
  begin
    case(rotabit)
      0:  rotabit <= 1;
      1:  rotabit <= 0;
     
    endcase
  end
  
    always @(rotabit)
  begin
    case(rotabit)
      0: anodos = 2'b01;
      1:  anodos= 2'b10;
      
    endcase
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
