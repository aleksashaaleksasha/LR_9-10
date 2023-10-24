Program Zad_5_5;
var i,sum,n : integer;
A : array of integer;
B : array of integer;

function kr(s : integer; F : array of integer) : integer;
var u : integer;
begin
  for u := 0 to s-1 do if F[u] mod 5 = 0 then result := u;
end;

function cmax(s : integer; F : array of integer) : array of integer;
var u,k : integer;
begin
  k := F[0];
  for u := 0 to s-1 do if k < F[u] then k := F[u];
  for u := 0 to s-1 do if k = F[u] then F[u] := 0;
  result := F;
end;

function mtpp(s : integer; F : array of integer) : array of integer;
var u,k : integer;
begin
  for u := 0 to s-1 do if 0 < F[u] then F[u] := F[u]*2;
  result := F;
end;

begin
  writeln('Введите длину массивов:');
  readln(n);
  setLength(A,n);
  setLength(B,n);
  writeln('Введите массив A:');
  for i := 0 to n-1 do readln(A[i]);
  writeln('Введите массив B:');
  for i := 0 to n-1 do readln(B[i]);
  if kr(n,A) < kr(n,B) then begin
  A := cmax(n,A);
  B := mtpp(n,B);
  end
  else if kr(n,A) > kr(n,B) then begin
  A := cmax(n,B);
  B := mtpp(n,A);
  end;
  writeln('Изменённый массивы А и В: ');
  writeln(A);
  writeln(B);
end.