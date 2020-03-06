%% eeglab
% add your path to eeglab
mypath=pwd;
eeglabpath = '/Users/mplome/Desktop/eeglab14_1_2b'
cd(eeglabpath)

%open and close once so all paths are set correctly:
eeglab;
close;
cd(mypath);

%% Task 2.
%Laden sie den ersten Datensatz in Matlab (Sub1.mat)
load('/Users/mplome/Desktop/homework/Sub02.mat')
%a. Wie hoch ist die Sampling Rate in diesem Datensatz?
%250 1 sample = 4ms 
%b.	Wie viele Kanäle gibt es in diesem Datensatz?
%70
%.c.	Was ist die Referenzelektrode?
%nose
%d.	Erzeugen Sie einen topographischen Plot zum Zeitpunkt 10s. 10 s =
%10000ms = 2501 samples
figure;
topoplot(EEG.data(:,2501),EEG.chanlocs,'electrodes','labels');
colorbar;
  
%% Task 3
%a. files 1/2/3 einliesst
%b. Die Länge des aktuellen Datensatzes ausliesst (in ms) 
%und folgende Textausgabe erzeugt
%: «Die Länge des aktuellen Datensatzes beträgt x ms», 
%wobei x dem aktuell korrekten Wert entsprechen soll.
%c.	Zusatzaufgabe (optional): 
%Setzen Sie bedingte Anweisungen ein um bei dem ersten Datensatz zusätzlich «Start» 
%und nach dem letzen Datensatz «Stop» auszugeben.

for i=1:3
     if i == 1 
         disp('START')
     end
     
     EEG_file(i) = load(['/Users/mplome/Desktop/homework/Sub0' num2str(i) '.mat'])
     disp(['Die Länge des aktuellen Datensatzes beträgt ' num2str(size(EEG_file(i).EEG.times,2)*4) 'ms'])

    if i == 3
        disp('STOP')
    end
end
       


