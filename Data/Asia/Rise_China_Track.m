China_Infected_All =[];
China_Recovered_All = [];
China_Dead_All = [];

str0 = "Hubei"
str1 = "Mainland China"
str2 = "China"

for i = 23:1:31
   fname = strcat ( '01-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.x___Province_State;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str0));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end


for i = 1:9
   fname = strcat ( '02-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end

for i = 10:29
   fname = strcat ( '02-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end


for i = 1:9
   fname = strcat ( '03-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end


for i = 10
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end

for i = 11:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end

for i = 1:9
   fname = strcat ( '04-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end

for i = 10:30
   fname = strcat ( '04-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end

for i = 1:9
   fname = strcat ( '05-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end


for i = 10:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str2));
idx = index;
China_Infected_All = [China_Infected_All,sum(P.Confirmed(idx)) ];
China_Recovered_All = [China_Recovered_All,sum(P.Recovered(idx)) ];
China_Dead_All = [China_Dead_All,sum(P.Deaths(idx)) ];
end






China_Time = 1:1:length(China_Infected_All);
China_Time = China_Time';
str = '.mat';
filename = strcat('Rise_China_Track', str);
save(filename,'China_Time','China_Infected_All', 'China_Recovered_All', 'China_Dead_All');






