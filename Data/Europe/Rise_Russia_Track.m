clear all; close all

Russia_Infected_All =[];
Russia_Recovered_All = [];
Russia_Dead_All = [];

str1 = "Russia"
str2 = "Russia"
str3 = "Russia"


for i = 25:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Russia_Infected_All = [Russia_Infected_All,P.Confirmed(idx) ];
Russia_Recovered_All = [Russia_Recovered_All,P.Recovered(idx) ];
Russia_Dead_All = [Russia_Dead_All,P.Deaths(idx) ];
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
Russia_Infected_All = [Russia_Infected_All,P.Confirmed(idx) ];
Russia_Recovered_All = [Russia_Recovered_All,P.Recovered(idx) ];
Russia_Dead_All = [Russia_Dead_All,P.Deaths(idx) ];
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
Russia_Infected_All = [Russia_Infected_All,P.Confirmed(idx) ];
Russia_Recovered_All = [Russia_Recovered_All,P.Recovered(idx) ];
Russia_Dead_All = [Russia_Dead_All,P.Deaths(idx) ];
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
Russia_Infected_All = [Russia_Infected_All,P.Confirmed(idx) ];
Russia_Recovered_All = [Russia_Recovered_All,P.Recovered(idx) ];
Russia_Dead_All = [Russia_Dead_All,P.Deaths(idx) ];
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
Russia_Infected_All = [Russia_Infected_All,P.Confirmed(idx) ];
Russia_Recovered_All = [Russia_Recovered_All,P.Recovered(idx) ];
Russia_Dead_All = [Russia_Dead_All,P.Deaths(idx) ];
end



Russia_Time = 1:1:length(Russia_Infected_All);
Russia_Time = Russia_Time';
str = '.mat';
filename = strcat('Rise_Russia_Track', str);
save(filename,'Russia_Time','Russia_Infected_All', 'Russia_Recovered_All', 'Russia_Dead_All');
% 
% 
% 



