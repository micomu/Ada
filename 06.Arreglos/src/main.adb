with io; use io;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

begin

   -- declarando Arreglos
   --  declare
   --     type Arreglo_Numeros is array (1..3) of Positive; --Declarando un array en forma explicita
   --
   --     Numeros : Arreglo_Numeros;
   --     Mas_Numeros : Arreglo_Numeros := (10,20,30);
   --     Todavia_Mas_Numeros : Arreglo_Numeros := (1,100,1);
   --  begin
   --     Numeros(1) := 3;
   --     Numeros(2) := 5;
   --     Numeros(3) := 19;
   --
   --     for I in Numeros'Range loop
   --        Put_Line("Numeros (" & I'Image & ") = " & Numeros(I)'Image);
   --     end loop;
   --
   --     Put("Mas_Numeros =(");
   --     for N of Mas_Numeros loop
   --        Put(N'Image);
   --        Put(",");
   --     end loop;
   --     Put(")");
   --     New_Line;
   --
   --     Put("Todavia_Mas_Numero = (");
   --     for I in Todavia_Mas_Numeros'First..Todavia_Mas_Numeros'Last loop
   --        Put(Todavia_Mas_Numeros(I)'Image);
   --        Put(if (I /= Todavia_Mas_Numeros'last) then "," else "");
   --     end loop;
   --     Put(")");
   --     New_Line;


   Put_Line("Cuantos examenes has tenido?");
   declare
      type Nota is new Integer range 1 .. 10 with
      Default_Value => 5;
      Numero_Examenes : Integer:=Get_Integer;
begin
      declare
         type Notas is array (1 .. Numero_Examenes) of Nota;
      begin
         Put("Ingresa tus notas");
         for I in Notas'Range loop
            Notas(I) := Nota'Value(Get_Integer);
         end loop;


         Put
        ("Tus notas del curso han sido[");
         for I of Notas loop
         if I = Notas(Notas'Length)  then
            Put(I'Image);
         else
            Put(I'Image & ",");
         end if;
      end loop;
      Put
        ("]");
      Put_Line
        ("");
         end;
end;



end Main;
