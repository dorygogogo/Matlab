clear ALL
clc

%Dory Kuo 2021/08/30
%Importing the data from the Godden & Baddeley(1975)Research and producing
%the tables with the calculations of the data mean and data standard deviations


%Part 1 
%Import the data
data=readtable('godden_baddeley.xls');

%Given codes; Make the table 
table1a=cell(4,6);
table1a(1,:)={'Learning environment' 'Mean recall score (dry)' ...
'S.D. (dry)' 'Mean recall score (wet)' 'S.D. (wet' 'Total'};

%Classification on 4 groups
Groups = findgroups(data.conditionsStudyAll,data.conditionsTestAll);

%Calculating the mean
Calculation_of_Mean = splitapply(@mean, data.dataAll, Groups);

%Calculating the standard deviation
Calculation_of_Standard_Deviation = splitapply(@std, data.dataAll, Groups);

%Round to one decimal 
MEAN = round(Calculation_of_Mean,1);
STD = round(Calculation_of_Standard_Deviation,1);

%Label the Dry Environment + Dry data
table1a(2,:)={'Dry' MEAN(1) STD(1) MEAN(2) STD(2) (MEAN(1)+MEAN(2))}
%Label the Wet Environment + Wet data
table1a(3,:)={'Wet' MEAN(3) STD(3) MEAN(4) STD(4) (MEAN(3)+MEAN(4))}
%Label the Totals
table1a(4,:)={'Total' (MEAN(1)+MEAN(3)) ' ' (MEAN(2)+MEAN(4)) ' ' ' '}

%Part2
%Change the table into the actual table
table1b = cell2table(table1a); 
%Remove the labels in the first row
table1b(1,:)=[]; 
%Insert the 'NaN' into the empty spaces
table1b(3,6)={'NaN'};
table1b(3,5)={'NaN'};
table1b(3,3)={'NaN'};
%Create it with the same label tags
table1b.Properties.VariableNames={'Learning environment' 'Mean recall score (dry)' ...
'S.D. (dry)' 'Mean recall score (wet)' 'S.D. (wet' 'Total'}