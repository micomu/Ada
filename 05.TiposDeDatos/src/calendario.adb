package body calendario is
   
   
   procedure Mostrar_dias is
   begin
   for Dia in Dia_Semana loop
      case Dia is
         when Sabado..Domingo =>
            Put_Line(Dia'Image & " es fin de semana");
            when others => 
            Put_Line(Dia'Image & " es dia de semana");
      end case;
   end loop;
end Mostrar_dias;

   procedure Mostrar_Mes is
      begin
for Mes in Meses loop
      case Mes is
         when Marzo..Junio =>
            Put_Line(Primavera'Image);
         when Julio..Septiembre =>
            Put_Line(Verano'Image);
         when Octubre..Diciembre =>
            Put_Line(Otoño'Image);
         when Enero..Febrero =>
            Put_Line(Invierno'Image);
      end case;
end loop;
   end Mostrar_Mes;
   
   
   function To_String(Date:Fecha) return String is
   begin
      return Date.dia'image & "/" & Date.Mes'Image & "/"  & Date.Año'Image;
   end To_String;
   

end calendario;
