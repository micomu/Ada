with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed; -- No poner el use a proposito
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure Main is

   --  S : String := "Hola";
   --
   --
   --
   --
   --  procedure Put_Reverse_Line(Texto: in String) is
   --
   --  begin
   --     for I of reverse Texto loop
   --        Put(I);
   --     end loop;
   --     end;



   -- Put_Reverse_Line(S);

--     procedure Put_Nice_Line
--       (Texto:in String;
--       Subrayado : Character := '*') is
--        use Ada.Strings.Fixed;
--
--  begin
--        Put_Line(Texto);
--        Put_Line(Texto'Length * Subrayado);
--     end;
--
--     S : String := "Hola";


   --Put_Nice_Line("Hola Subprogramas" , '-');
   --  Put_Nice_Line(Texto => "Hola Subprogramas",
   --                Subrayado => '=');
   --
   --  for C of S loop
   --     Put(C);
   --  end loop;

   --  procedure Put_Hacker_Line(Texto:in String; a:String := "4";
   --                            e:String := "3"; i:String := "1";
   --                            o:String := "0"; s:String := "5") is
   --     use Ada.Strings.Fixed;
   --  begin
   --     for C of Texto loop
   --        case C is
   --        when 'i' | 'I' => Put(i);
   --        when 'a' | 'A' => Put(a);
   --        when 'e' | 'E' => Put(e);
   --        when 's' | 'S' => Put(s);
   --        when 'o' | 'O' => Put(o);
   --        when others => Put(C);
   --        end case;
   --     end loop;
   --     New_Line;
   --  end;

   --  function Area_Rectangulo(LadoMayor : Float;
   --                           LadoMenor: Float) return Float is
   --  begin
   --     return LadoMayor * LadoMenor;
   --  end;
   --
   --  Area : Float;
   --
   --  procedure Intercambiar(A: in out Integer;
   --                           B: in out Integer) is
   --     Aux : Integer := A;
   --  begin
   --     Aux:=A;
   --     A:=B;
   --     B:=Aux;
   --  end;
   --
   --  declare
   --     Primero : Integer := 10;
   --     Segundo : Integer :=20;
   --  begin
   --     --   Area := Area_Rectangulo(3.0, 5.0);
   --     --  Put(Area, Exp=> 0, Aft => 2);
   --     --  New_Line;
   --     Intercambiar(Primero, Segundo);
   --     Put_Line("El primero" & image'Primero & image'Segundo);
   --     end;

   -- funcion que sume dos enteros y devuelva el resultado
   function Suma_2_Enteros(Primero : in Float;
                           Segundo : in Float)return Float is
   begin
      return Primero + Segundo;
   end;

   function Suma_2_Enteros(Primero : in Integer;
                           Segundo : in Integer)return Integer is
   begin
      return Primero + Segundo;
   end;

begin

   declare

      A: Integer := 2;
      B: Integer := 3;
      Resultado: Integer;
      FA: Float := 7.0;
      FB: Float := 8.0;
      ResultadoFloat: Float;

      Function "+"(Primero : in Float; Segundo: in Integer) Return Float is
      begin
         return Primero + Float(Segundo);
      end;

      procedure PrintF(Item: String) renames Put_Line;

   begin

      Resultado := Suma_2_Enteros(A, B);

      Printf("La suma de" & A'Image & " más" & B'Image & " es" & Resultado'image);

      ResultadoFloat := Suma_2_Enteros(FA, FB);

      Put(FA, Exp => 0);
      Put(" + ");
      Put(FB, Exp => 0);
      Put(" = ");
      Put (ResultadoFloat, Exp => 0);

      --Sumos dos distintos
      New_Line;
      ResultadoFloat := FA + A;
      Put(ResultadoFloat , Exp=> 0);

   end;


end main;
