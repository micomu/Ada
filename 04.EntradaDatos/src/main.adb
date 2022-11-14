with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   function Get_Non_Empty_Line(Prompt: String:= "Ingrese un texto no vacío") return String is
   begin
      Put_Line("Ingrese su nombre");
      loop
         declare
            Nombre : String := Get_Line;
         begin

            if(nombre'Length = 0) then
               Put_Line(Prompt);
            else
               return Nombre;
            end if;
         end;
      end loop;

   end Get_Non_Empty_Line;

   function Try_Convert_Integer(Texto: in String;
                                Texto_Como_Entero: out Integer) return Boolean is
   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
   end;

   function Get_Integer (Texto_Como_Entero: in Integer)return Integer is
   begin

      loop
         declare
            numero: Integer := 0;
         begin
            if(Try_Convert_Integer(Get_Line, numero)) then
               return numero;
            end if;
            Put_Line("Error");
         end;
      end loop;

   end;

   function Get_Integer2(Prompt : String := "Ingrese un numero";
                        Error : String := "no es numero") return Integer is
   Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result))) loop
         Put_Line(Error);
      end loop;
      return Result;
   end Get_Integer2;


   function Get_Integer_Between(Min: in Integer;
                                Max: in Integer;
                                Empty_Error: String := "Texto vacío, vuelva a intentar";
                                Underflow_Error: String := "Numero muy chico " & Max;
                                Overflow_Error: String := "Numero muy grande " & Min)return Integer
     Result : Integer;
   begin
   loop
      Result := Get_Integer(Prompt, Empty_Error);
      if (Result > Max) then
         Put_Line (Overflow_Error);
      elsif (Result < Min) then
         Put_Line(Underflow_Error);
      else
         return Result;
      end if;
      end loop;
   end;




begin

    declare
         Nombre : String := Get_Non_Empty_Line;
   begin

      Put_Line("Su nombre es " & Nombre);

      Put_Line("Ingrese su edad");


      declare
         Edad : Integer := 0;
      begin
         if (Try_Convert_Integer(Get_Line, Edad)) then
                Put_Line("Tienes" & Edad'Image & " años");
         else
                Put_Line("No ingresaste un numero");
         end if;


      end;
      end;

end Main;
