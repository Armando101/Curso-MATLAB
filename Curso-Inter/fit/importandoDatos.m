%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: C:\Users\TALDOC\Downloads\DavisDaily.xlsx
%    Worksheet: DavisDaily
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2019/01/08 14:52:10

%% Import the data, extracting spreadsheet dates in Excel serial date format
[~, ~, raw0_0, dates0_0] = xlsread('C:\Users\TALDOC\Downloads\DavisDaily.xlsx','DavisDaily','D2:E3653','',@convertSpreadsheetExcelDates);
[~, ~, raw0_1, dates0_1] = xlsread('C:\Users\TALDOC\Downloads\DavisDaily.xlsx','DavisDaily','H2:H3653','',@convertSpreadsheetExcelDates);
[~, ~, raw0_2, dates0_2] = xlsread('C:\Users\TALDOC\Downloads\DavisDaily.xlsx','DavisDaily','J2:K3653','',@convertSpreadsheetExcelDates);
[~, ~, raw0_3, dates0_3] = xlsread('C:\Users\TALDOC\Downloads\DavisDaily.xlsx','DavisDaily','O2:O3653','',@convertSpreadsheetExcelDates);
raw = [raw0_0,raw0_1,raw0_2,raw0_3];
dates = [dates0_0,dates0_1,dates0_2,dates0_3];
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
dates(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),dates)) = {''};
raw = raw(:,[2,3,4,5,6]);
dates = dates(:,1);

%% Exclude rows with non-numeric cells
I = ~(all(cellfun(@(x) (isnumeric(x) || islogical(x)) && ~isnan(x),raw),2) & all(cellfun(@isnumeric,dates),2)); % Find rows with non-numeric cells
raw(I,:) = [];
dates(I,:) = [];

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
Date = datetime([dates{:,1}].', 'ConvertFrom', 'Excel');
DayofYear = data(:,1);
SolRatio = data(:,2);
MaxAirTemp = data(:,3);
MinAirTemp = data(:,4);
AvgRelHum = data(:,5);

% For code requiring serial dates (datenum) instead of datetime, uncomment
% the following line(s) below to return the imported dates as datenum(s).

% Date=datenum(Date);

%% Clear temporary variables
clearvars data raw dates raw0_0 dates0_0 raw0_1 dates0_1 raw0_2 dates0_2 raw0_3 dates0_3 I;