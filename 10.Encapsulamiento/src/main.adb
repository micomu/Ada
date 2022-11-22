with Ada.Text_IO; use Ada.Text_IO;
with persona_model; use persona_model;

procedure Main is
   -- I�igo : Persona := new Persona'(Nombre => "I�igo");
   I�igo : Persona := Create("I�igo", "Montero", 0.0);

begin
   i�igo.Saludar;
   declare
      Apellido : String := I�igo.Get_Apellido;
      begin
      I�igo.Set_Riqueza(1000001.00);
      Put_Line(if I�igo.Get_Riqueza > Dinero(1000000) then "Millonario" else
                  "Pobre");
      end;
end Main;
