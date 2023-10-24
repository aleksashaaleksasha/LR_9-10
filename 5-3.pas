Program Zad_5_3;
var i,sum,n : integer;
A : array of integer;
function func(s:integer):integer;
var u,k : integer;
begin
  for u := 0 to s-1 do if A[u] < 0 then k := u;
  result := k;
end;
begin
  writeln('Введите длину массива:');
  readln(n);
  setLength(A,n);
  for i := 0 to n-1 do readln(A[i]);
  writeln('Номер последнего отрицательного элемента: ',func(n)+1)
end.