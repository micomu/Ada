with ada.Text_IO; use ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ada.Numerics.Float_Random; use ada.Numerics.Float_Random;


procedure Main is
--     G : Generator;
--     -- Numero_Al_Azar : Uniformly_Distributed;
--     Numero_Al_Azar : Integer;
--     Intento : Constant Integer := 5;
--     Es_Correcto : Boolean := True;
--
--
--  begin
--     Reset(G);
--     for I in 1..10 loop
--        Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);
--        Put(Numero_Al_Azar, Exp => 0);
--        New_Line;
--     end loop;
--     Numero_Al_Azar := Random(G);


--     G : Generator;
--     Numero_Al_Azar : Integer;
--     Intentos : Constant Integer := 5;
--     Es_Correcto : Boolean;
--
--  begin
--
--     Reset(G);
--     Generar_Numero_Aleatorio(G, Numero_Al_Azar);
--     Es_Correcto := (Numero_Al_Azar, Intento);
--
--     ------------------------------------------------------------------------
--
--     procedure Generar_Numero_Aleatorio (Generador : in Generator;
--                                         Numero_Al_Azar : in out Integer) is
--     begin
--        Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);
--     end Generar_Numero_Aleatorio;
--
--     ------------------------------------------------------------------------
--
--     function Comprobar_Intento(Numero_Al_Azar : in Integer;
--                                Intentos : in Integer) return  Boolean is
--        declare
--           prueba : Integer;
--           Intentos_Realizados : Integer := 0;
--           Resultado : Boolean := False; -- Para retornar el resultado del juego
--     begin
--        loop
--           Put_Line("Introduzca un número para comprobar si es correcto");
--              Prueba := Integer'Value(Get_Line);
--
--              if(Intentos_Realizados = Intentos) then
--                 Exit
--
--              elsif (Prueba = Numero_Al_Azar) then
--
--                 Resultado = True;
--                 Exit
--
--              elsif(Prueba > Numero_Al_Azar) then
--
--                 Put_Line("El número" & image'Prueba & "es mayor que el número);
--                 New_Line;
--                 Put_Line("Introduzca un nuevo número");
--                 Prueba := Integer'Value(Get_Line);
--
--              elsif(Prueba < Numero_Al_Azar) then
--
--                 Put_Line("El número" & image'Prueba & "es menor que el número);
--                 New_Line;
--                 Put_Line("Introduzca un nuevo número");
--                 Prueba := Integer'Value(Get_Line);




end Main;
