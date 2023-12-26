% Read data from text files
output_variable = fileread('input.txt');           % Read content from 'input.txt'
output_variable1 = fileread('C_output.txt');       % Read content from 'C_output.txt'
output_variable2 = fileread('Haskell_output.txt'); % Read content from 'Haskell_output.txt'
output_variable3 = fileread('Prolog_output.txt');  % Read content from 'Prolog_output.txt'

% Convert read text content to numeric arrays of type uint8
output_array = uint8(str2num(output_variable));           
output_array1 = uint8(str2num(output_variable1));        
output_array2 = uint8(str2num(output_variable2));         
output_array3 = uint8(str2num(output_variable3));         

% Reshape the numeric arrays into 256x256 matrices
resized_matrix = reshape(output_array, 256, 256);           
resized_matrix1 = reshape(output_array1, 256, 256);         
resized_matrix2 = reshape(output_array2, 256, 256);       
resized_matrix3 = reshape(output_array3, 256, 256);         

% Create a new figure window 
figure()

% Display images in a subplot arrangement
subplot(2, 2, 1);          % Subplot at position 1
imshow(resized_matrix);    % Display the original image
title('Original Image');   % Set title for the subplot

subplot(2, 2, 2);                % Subplot at position 2
imshow(resized_matrix1);         % Display the image processed by the C program
title('Black and White Image Using C Program');  % Set title

subplot(2, 2, 3);                % Subplot at position 3
imshow(resized_matrix2);         % Display the color flipped image from the Haskell program
title('Color Flipped Image Using Haskell Program');  % Set title

subplot(2, 2, 4);                % Subplot at position 4
imshow(resized_matrix3);         % Display the rotated image from the Prolog program
title('Rotated Image using Prolog Program');  % Set title
