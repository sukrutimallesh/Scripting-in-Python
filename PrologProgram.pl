% Rule to reverse a list using recursion
reverse_list([], []). % Base case: an empty list reversed is still an empty list
reverse_list([X|Xs], Reversed) :- % Recursive case: X is the head element, Xs is the tail, Reversed is the reversed list
    reverse_list(Xs, ReversedTail), % Recursively reverse the tail of the list
    append(ReversedTail, [X], Reversed). % Append the reversed tail with the head element X to get the Reversed list

% Rule to read input list
read_list(List) :- % Rule to read a list from standard input
    read(List). % read/1 reads a term from the standard input and unifies it with List

% Rule to write output list without square brackets
write_list([]). % Base case: an empty list is printed as it is
write_list([X]) :- % If there's a single element X in the list
    write(X). % Write the element X
write_list([X|Xs]) :- % Recursive case: X is the head element, Xs is the tail of the list
    write(X), % Write the head element X
    write(' '), % Write a space after each element
    write_list(Xs). % Recursively call write_list/1 for the tail Xs

% Main rule to perform sequence of operations
main :- % Main entry point
    read_list(InputList), % Read the input list
    reverse_list(InputList, ReversedList), % Reverse the input list to get ReversedList
    write_list(ReversedList). % Write the reversed list to the standard output
