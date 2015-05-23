%Matlab pig latin project pig_laBy Rob P. and David H.

%Function of this code will take a string and remove the first letter. 
%The first letter will then move to the back of the string.
%Once the first letter is moved, letters -ay will follow the first letter.

function [ pl ] = pig_latin(string)

%command for when string is split into multiple arrays
array=regexp(string, '\s*', 'split');
m=array; %array is defined as m

%for loop - first letter of each array is defined as firsts
for i=1:length(array);
   firsts(i)=array{i}(1);
end

%for loop - if an array only has one letter the array remains unchanged
for i=1:length(array);
   if length(array{i})==1; %if array is only one character
   array=array;
   else
       array{i}(1)=''; %otherwise remove the first letter in the array
   end
end

%for loop - for the length of the array
for i=1:length(array);
   if length(m{i})~=1; %if length of array is not one character long
       array{i}=[array{i} firsts(i)]; %array will be manipulated into: array characters following array's first character
   end
end

%for loop - for the length of the array
for i=1:length(array); 
   array{i}=strcat(array{i},'ay') %letters -ay will follow after the entire array and the first letter of the array

end


end