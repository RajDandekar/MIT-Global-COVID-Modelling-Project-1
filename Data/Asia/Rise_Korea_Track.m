Korea_Infected_All =[];
Korea_Recovered_All = [];
Korea_Dead_All = [];

str1 = "South Korea"
str2 = "Republic of Korea"
str3 = "Korea, South"

for i = 1:1:7
   fname = strcat ( '02-', num2str(22+i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
end

for i = 1:1:9
   fname = strcat ( '03-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
end


for i = 10
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
end

for i = 11:21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
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
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
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
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
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
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
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
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
end

for i = 10:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Korea_Infected_All = [Korea_Infected_All,P.Confirmed(idx) ];
Korea_Recovered_All = [Korea_Recovered_All,P.Recovered(idx) ];
Korea_Dead_All = [Korea_Dead_All,P.Deaths(idx) ];
end






Korea_Time = 1:1:length(Korea_Infected_All);
Korea_Time = Korea_Time';
str = '.mat';
filename = strcat('Rise_Korea_Track', str);
save(filename,'Korea_Time','Korea_Infected_All', 'Korea_Recovered_All', 'Korea_Dead_All');






