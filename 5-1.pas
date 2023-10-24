Program Zad_5_1;
var i,sum,n : integer;
A : array of integer;
function chet(s:integer):integer;
var u : integer;
begin
  for u := 0 to s-1 do if A[u] mod 2 = 0 then sum := sum + A[u];
  result := sum;
end;
begin
  writeln('Введите длину массива:');
  readln(n);
  setLength(A,n);
  for i := 0 to n-1 do readln(A[i]);
  writeln('Сумма чётных элементов массива: ',chet(n))
end.