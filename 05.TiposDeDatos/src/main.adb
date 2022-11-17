with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with figuras; use figuras;
with calendario; use calendario;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with io; use io;


procedure Main is
   begin
   --  type Nota is new Integer range 1..10 with Default_Value => 5; -- tipo de dato restringido
   --  type Numero_Muy_Largo is range 1..2**56;

   --  type Angulo is new Float range 0.0..360.0;
   --  type Angulo is mod 360;


   --  A : Float := 1.3;
   --  B : Distancia := 5.6;
   --  Base : Distancia := 10.0;
   --  Altura : Distancia := 15.0;
   --  Area_Triangulo : Area;
   --
   --  --  Nota_Examen : Nota;
   --  --  N : Numero_Muy_Largo;
   --  Giro : Angulo := 180;

   --  Hoy_Es : Dia_Semana;
   --  Mañana_Es : Dia_Semana;
   --  Hoy : fecha := (15, Noviembre, 2022);
   --  Cumple_Mario : fecha := (Dia => 1, Mes => Junio , Año => 1998); --aggregate
--  begin
   --  Hoy_Es := Martes;
   --  Put_Line(Hoy_Es'Image);
   --  Mañana_Es := Dia_Semana'succ(Hoy_es);
   --  Put_Line(Mañana_Es'Image);

   --  A := B; Asignaciones incompatibles
   --  B := A;

   --  A := Float(B);
   --  B := Distancia(A);
   --  Area_Triangulo := Base * Altura / 2.0;
   --  --  Nota_Examen := 10;
   --  --  --  Nota_Examen := Nota_Examen + 3;
   --  --
   --  --  Put_Line(Nota'Size'Image);
   --  Put_Line(Giro'Image);
   --  Giro := Giro +185;
   --  Put_Line(Giro'Image);

   --  for Dia in Dia_Semana loop
   --     case Dia is
   --        when Sabado..Domingo =>
   --           Put_Line(Dia'Image & " es fin de semana");
   --           when others =>
   --           Put_Line(Dia'Image & " es dia de semana");
   --     end case;
   --  end loop;
   --
   --  for Mes in Meses loop
   --     case Mes is
   --        when Marzo..Junio =>
   --           Put_Line(Primavera'Image);
   --        when Julio..Septiembre =>
   --           Put_Line(Verano'Image);
   --        when Octubre..Diciembre =>
   --           Put_Line(Otoño'Image);
   --        when Enero..Febrero =>
   --           Put_Line(Invierno'Image);
   --     end case;
   --  end loop;

   --  Put_Line("Mario cumple el " & To_String(Cumple_Mario));
   --  declare
   --     type Nota is new Integer range 1..10;
   --     subtype Notas_Buenas is Nota range  8..10;
   --     subtype Notas_Aprobadas is Nota range  5..7;
   --     subtype Notas_Malas is  Nota range  1..4;
   --
   --     Examen : Nota := 10;
   --     --Mala_nota : Notas_Malas;
   --  begin
   --     --Mala_nota := Examen;
   --     Put_Line("Que nota sacaste?");
   --     Get(Integer(Examen));
   --     case Examen is
   --        When Notas_Malas => Put_Line("Sacaste mala nota");
   --        When Notas_Buenas => Put_Line("Sacaste buena nota");
   --        When Notas_Aprobadas => Put_Line("Aprobaste");
   --           end case;

   -- end;
   --  declare
   --     subtype Cantidad is Positive;
   --
   --     A : Cantidad := 10;
   --     B : Positive := 50;
   --  begin
   --     B:= A;
   --     Put_Line("Declaro un alias tipo");
   --  end;
   --
   --  declare
   --     type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     subtype Fin_De_Semana is Dias_Semana range Sabado..Domingo;
   --
   --     function "+"(Input : in Unbounded_String) return String is
   --        begin
   --        return To_Unbounded_String(Input);
   --        end "+";
   --
   --     --  Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (To_Unbounded_String("Monday"),
   --     --                                                               To_Unbounded_String("Tuesday"),
   --     --                                                               To_Unbounded_String("Wednesday"),
   --     --                                                               To_Unbounded_String("Thursday"),
   --     --                                                               To_Unbounded_String("Friday"),
   --     --                                                               To_Unbounded_String("Saturday"),
   --     --                                                               To_Unbounded_String("Sunday"));
   --
   --     Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (+"Monday", +"Tuesday", +"Wednesday", +"Thursday",
   --                                                                 +"Friday", +"Saturday", +"Sunday");
   --  begin
   --     Put_Line("Ingrese un dia de la semana");
   --     for Dia in Dias_Semana loop
   --        Put_Line(Dia'Image);
   --        null;
   --     end loop;
   --
   --     declare
   --        Dia : Dias_Semana := Dias_Semana'value(Get_Line);
   --     begin
   --        Put_Line(Dia'image & " en Ingles es "  & To_String(Dias_En_Ingles(Dia)));
   --
   --     end;
   --  end;

   --Unconstraint arrays o vectores sin restriccion
   --  declare
   --
   --     type Nota is range 1..10;
   --     type Lista_Notas is array(Positive range <>) of Nota with Default_Component_Value => 10;
   --
   --     Notas : Lista_Notas := (4,5,6,2,4,5); --implicita
   --
   --     --Notas : Lista_Notas (1..3); --explicita
   --  begin
   --
   --     for Nota of Notas loop
   --        Put_Line(Nota'Image);
   --     end loop;
   --  end;

   declare
      type Nota is new Integer range 1..10;
      type Lista_Examenes is Array(Positive range <>) of Nota with Default_Component_Value => 4;

      Examenes : Lista_Examenes(1..Get_Integer("¿Cuántos examenes has tenido?"));

      procedure Cargar_Notas(Lista : out Lista_Examenes) is
      begin

         for C in Lista'Range loop
           Lista(C) := Nota(Get_Integer_Between(Integer(Nota'First),
                                                Integer(Nota'Last),
                                                "¿Qué nota sacaste en el examen" & C'Image & "?"));
         end loop;

      end Cargar_Notas;


   begin



     Cargar_Notas(Examenes);

      Put_line("Has sacado las siguientes notas:");

      for Examen of Examenes loop
         Put_line(Examen'Image);
      end loop;
   end;


   procedure Mostrar_Notas(Lista : in Lista_Examenes) is
   begin
      Put_line("Has sacado las siguientes notas:");
      for Examen of Lista loop
         Put_line(Examen'Image);
      end loop;
   end Mostrar_Notas;

   function Nota_Alta (Notas : in Lista_Examenes) return integer is
      Comparador : integer :=0;

   begin
      for Examen of Lista loop
            if(Examen > Comparador) then
               Comparador := Examen;
            end if;

      end loop;
         return Comparador;
      end Nota_Alta;

   function Nota_Media (List : in Notas) return Float is
      Total : Nota:= Nota'First;
   begin
      for Examen of List loop
         Total:=Total+Examen;
      end loop;
      return Float(Total)/Float(List'Length);
   end Nota_Media;


end Main;
