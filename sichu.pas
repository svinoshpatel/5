unit sichu; // модуль SICHU.pas
interface
Uses POINTS, SysUtils;
Type
Sich = class (Point) // клас-нащадок класу Point
protected
 Rad: Real; // поле Rad буде доступне в класі Sphere
public
Constructor Creat(x, y, z, r: Real);
Procedure SetSich(x, y, z, r: Real);
Procedure SetRad(r: Real);
Function GetPoint: String;
Function GetRad: Real;
end;
implementation
Procedure Sich.SetRad (r: Real); // реалізація методу SetRad
begin
 if r >= 0 then Rad := r
else Rad := 0;
end;
Constructor Sich.Creat(x, y, z, r: Real);
begin
 Inherited Creat(x, y, z); // виклик конструктора-предку
 SetRad(r);
end;
Procedure Sich.SetSich(x, y, z, r: Real);// реалізація методу SetSich
Begin
 SetPoint(x, y, z);
 SetRad(r);
end;
Function Sich.GetPoint: String;
begin
 Result := (Inherited GetPoint) +' , Rad = '+ FloatToStr(Rad);
end;
Function Sich.GetRad: Real; // реалізація методу GetRad
Begin
 Result := Rad;
end;
end.
