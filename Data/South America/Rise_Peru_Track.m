Peru_Infected_All =[];
Peru_Recovered_All = [];
Peru_Dead_All = [];

str1 = "Peru"
str2 = "Peru"
str3 = "Peru"



for i = 26:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Peru_Infected_All = [Peru_Infected_All,P.Confirmed(idx) ];
Peru_Recovered_All = [Peru_Recovered_All,P.Recovered(idx) ];
Peru_Dead_All = [Peru_Dead_All,P.Deaths(idx) ];
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
Peru_Infected_All = [Peru_Infected_All,P.Confirmed(idx) ];
Peru_Recovered_All = [Peru_Recovered_All,P.Recovered(idx) ];
Peru_Dead_All = [Peru_Dead_All,P.Deaths(idx) ];
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
Peru_Infected_All = [Peru_Infected_All,P.Confirmed(idx) ];
Peru_Recovered_All = [Peru_Recovered_All,P.Recovered(idx) ];
Peru_Dead_All = [Peru_Dead_All,P.Deaths(idx) ];
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
Peru_Infected_All = [Peru_Infected_All,P.Confirmed(idx) ];
Peru_Recovered_All = [Peru_Recovered_All,P.Recovered(idx) ];
Peru_Dead_All = [Peru_Dead_All,P.Deaths(idx) ];
end

for i =10:27
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Peru_Infected_All = [Peru_Infected_All,P.Confirmed(idx) ];
Peru_Recovered_All = [Peru_Recovered_All,P.Recovered(idx) ];
Peru_Dead_All = [Peru_Dead_All,P.Deaths(idx) ];
end

for i =28:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Peru_Infected_All = [Peru_Infected_All,sum(P.Confirmed(idx)) ];
Peru_Recovered_All = [Peru_Recovered_All,sum(P.Recovered(idx)) ];
Peru_Dead_All = [Peru_Dead_All,sum(P.Deaths(idx)) ];
end



Peru_Time = 1:1:length(Peru_Infected_All);
Peru_Time = Peru_Time';
str = '.mat';
filename = strcat('Rise_Peru_Track', str);
save(filename,'Peru_Time','Peru_Infected_All', 'Peru_Recovered_All', 'Peru_Dead_All');
% 
% 
% 



