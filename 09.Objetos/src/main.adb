with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with P_Heroe; use P_Heroe;
with P_Persona; use P_Persona;
with P_Triangulo; use P_Triangulo;


procedure Main is

begin


   declare

      Una_Persona : Persona := null;
      Un_Heroe : Heroe := null;
      Un_Trinagulo : Triangulo := new C_Triangulo'(Base => 10.0 , Altura => 10.0);

   begin

      Una_Persona := new C_Persona'(Nombre => To_Unbounded_String("Esteban"),
                                    Apellido => To_Unbounded_String("Calabria"));
      Una_Persona.Saludar;

      Un_Heroe := new C_Heroe'(Nombre => To_Unbounded_String("ElBicho"),
                               Fuerza => 500,
                               Puntos_De_Vida => 69);
      Un_Heroe.Presentar;

      Put_Line(Un_Trinagulo.Calcular_Area'Image);

   end;
end Main;
