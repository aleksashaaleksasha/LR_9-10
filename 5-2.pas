Program Zad_5_2;
var i,n,minn,maxx : integer;
A : array of integer;
procedure minmax(s:integer; minn,maxx : integer);
var u,k : integer;
begin
  minn := A[0];
  for u := 0 to s-1 do if abs(minn) > abs(A[u]) then minn := A[u];
  for u := 0 to s-1 do if A[u] < 0 then begin
    maxx := A[u];
    k := u;
    break
  end;
  for u := k to s-1 do if (A[u] < 0) and (A[u] > maxx) then maxx := A[u];
  writeln(minn);
  writeln(maxx);
end;
begin
  writeln('Введите длину массива:');
  readln(n);
  setLength(A,n);
  for i := 0 to n-1 do readln(A[i]);
  writeln('Минимальный по модулю элемент, максимальный отрицательный элемент: ');
  minmax(n, minn, maxx);
end.