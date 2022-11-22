with Ada.Text_IO; use Ada.Text_IO;
with persona_model; use persona_model;

procedure Main is
   -- Iñigo : Persona := new Persona'(Nombre => "Iñigo");
   Iñigo : Persona := Create("Iñigo", "Montero", 0.0);

begin
   iñigo.Saludar;
   declare
      Apellido : String := Iñigo.Get_Apellido;
      begin
      Iñigo.Set_Riqueza(1000001.00);
      Put_Line(if Iñigo.Get_Riqueza > Dinero(1000000) then "Millonario" else
                  "Pobre");
      end;
end Main;
