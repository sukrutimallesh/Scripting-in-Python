#include <stdio.h>
#include <stdlib.h>

#define THRESHOLD 170 // Hardcoded threshold value

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        // Display usage information if insufficient arguments are provided
        printf("Usage: %s <numbers...>\n", argv[0]);
        return 1; // Return indicating an error
    }
    // Dynamically allocate memory for integers based on the number of arguments
    int *numbers = (int *)malloc((argc - 1) * sizeof(int));
    if (numbers == NULL)
    {
        // Check if memory allocation failed
        printf("Memory allocation failed.\n");
        return 1; // Return indicating an error
    }
    // Read elements from the command line arguments and convert them to integers
    for (int i = 1; i < argc; i++)
    {
        numbers[i - 1] = atoi(argv[i]); // Convert string to integer using atoi
    }
    // Apply thresholding operation and print the modified numbers
    for (int i = 0; i < argc - 1; i++)
    {
        if (numbers[i] > THRESHOLD)
        {
            printf("255 "); // If number exceeds threshold, print 255
        }
        else
        {
            printf("0 "); // If number is below or equal to threshold, print 0
        }
    }
    printf("\n"); // Print newline after displaying modified numbers
    // Free dynamically allocated memory to prevent memory leaks
    free(numbers);

    return 0; // Return 0 to indicate successful execution
}
