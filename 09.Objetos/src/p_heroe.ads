with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package P_Heroe is

   type C_Heroe is tagged record
      Nombre : Unbounded_String;
         fuerza: Integer;
         Puntos_De_Vida : Integer;
      end record;
   type Heroe is access C_Heroe'Class;
   
   procedure Presentar(This: C_Heroe);

end P_Heroe;
