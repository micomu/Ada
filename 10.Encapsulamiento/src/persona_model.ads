with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package persona_model is

   type Dinero is digits 2;
   type C_Persona is tagged private; 
   type Persona is access C_Persona'Class;
   
   function Create(Nombre : String ; Apellido : String ; Riqueza : Dinero) return Persona; -- Constructor
   
   function Get_Nombre (This : C_Persona ) return String;
   
   function Get_Apellido (This : C_Persona ) return String;
   
   function Get_Riqueza (This : C_Persona) return Dinero;
   
   procedure Set_Riqueza (This : out C_Persona ; Value :Dinero);
   
   procedure Saludar(This: C_Persona);
   
private 
   
    type C_Persona is tagged record
      Nombre : Unbounded_String;
      Apellido: Unbounded_String;
      Riqueza : Dinero;
   end record;
   
end persona_model;
