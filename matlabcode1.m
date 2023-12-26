% Read the input image 'mickey.png' using imread
input_image = imread('mickey.png'); 

% Reshape the 2D image matrix into a 1D array
image_1D = reshape(input_image, 1, []);

% Write the 1D image array into a text file 'input.txt' with space delimiter
dlmwrite('input.txt', image_1D, 'delimiter',' ');

% Display a message indicating that the image has been processed and saved
disp('Image processed and saved as input.txt');
