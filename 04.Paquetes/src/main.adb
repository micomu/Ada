with io; use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

begin
   declare
      Nombre: String:= Get_Non_Empty_Line("�C�mo te llamas?");
      Edad : Integer := Get_Integer("Qu� edad tienes?");
      Altura : Float:= Get_Float("�Cu�nto mide?");
      Input : String := Get_Line;
   begin

      --Put_Line("Tu nombre es " & Nombre & "de " & Altura'image);


   end;


end Main;
