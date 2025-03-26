unit sphereu; // модуль SPHEREU.pas
interface
Uses SICHU;
Type
Sphere = class (Sich) // клас-нащадок класу Sich
public
Constructor Creat(x, y, z, r : Real);
Function Volume: Real; // Volume – об’єм сфери
// Функції друку і заповнення полів переходять в Sphere без змін
End;
implementation
Constructor Sphere.Creat(x, y, z, r: Real); // цей метод перейшов без змін
 Begin
 Inherited Creat(x, y, z, r);
 end;
Function Sphere.Volume: Real; // Volume – об’єм сфери
begin
 Result := (4.0/3.0) * Pi * Rad * Rad * Rad;
end;
end.
