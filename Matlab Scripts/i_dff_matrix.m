%Reading the text file with the fluorescence data obtained from ImageJ 
% into MATLAB as a matrix of data, then transposing the data.

rawData = (readmatrix('Results.txt'))';

%Now we have a matrix that contains our fluorescence values. 
%Let's check the number of rows and columns of this matrix.

rows = size(rawData,1)
cols = size(rawData,2)

%The first row of our rawData matrix does not contain fluorescence data, 
%so we will remove it and stores the remaining values into a new matrix rawF.

rawF = rawData(2:end,:);

%Calculate DF/F for one cell ((F_raw - F_baseline)/F_baseline) 
%and store it in a vector named dff_cell. 
%To visualize our results, we plot the raw fluorescence trace 
%and the DF/F of your cell as two different figures.

cell = 1; % this is the cell we will extract
rawF_cell = rawF(cell,:);

% round to nearest multiple of 10
rawF_rounded = round(rawF_cell/10)*10; 
baseline = mode(rawF_rounded);

% calculate df/f
dff_cell = (rawF_cell-baseline)/baseline;
        
figure()
plot(1:size(rawF_cell,2),rawF_cell)
xlabel('index')
ylabel('raw F')
axis tight        
        
figure()
plot(1:size(rawF_cell,2),dff_cell)
xlabel('index')
ylabel('DFF')
axis tight

%Generating a matrix that contains the DF/F values for all cells. 

rawF_rounded = round(rawF/10)*10;
baseline = mode(rawF_rounded,2);
DFF = (rawF-baseline)./baseline;