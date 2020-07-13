Chile_Infected_All =[];
Chile_Recovered_All = [];
Chile_Dead_All = [];

str1 = "Chile"
str2 = "Chile"
str3 = "Chile"


for i = 21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end



for i = 22:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end


for i = 1:9
   fname = strcat ( '04-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end

for i = 10:30
   fname = strcat ( '04-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end

for i = 1:9
   fname = strcat ( '05-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end

for i =10:19
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,P.Confirmed(idx) ];
Chile_Recovered_All = [Chile_Recovered_All,P.Recovered(idx) ];
Chile_Dead_All = [Chile_Dead_All,P.Deaths(idx) ];
end

for i =20:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Chile_Infected_All = [Chile_Infected_All,sum(P.Confirmed(idx)) ];
Chile_Recovered_All = [Chile_Recovered_All,sum(P.Recovered(idx)) ];
Chile_Dead_All = [Chile_Dead_All,sum(P.Deaths(idx)) ];
end



Chile_Time = 1:1:length(Chile_Infected_All);
Chile_Time = Chile_Time';
str = '.mat';
filename = strcat('Rise_Chile_Track', str);
save(filename,'Chile_Time','Chile_Infected_All', 'Chile_Recovered_All', 'Chile_Dead_All');
% 
% 
% 



