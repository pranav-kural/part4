read_xyz_file(File, Points) :-
  open(File, read, Stream),
  write('file open'), nl,
  read_xyz_points(Stream,Output),
  write('done reading'), nl,
  without_first(Output, Points),
  close(Stream), !.

read_xyz_points(Stream, []) :-
  at_end_of_stream(Stream).

read_xyz_points(Stream, [Point|Points]) :-
  read_line_to_string(Stream,L),
  split_string(L, "\t", "\s\t\n", XYZ),
  write('Point read = '), write(XYZ), nl, % comment out to see points being read
  % if XYZ is "x y z" then do nothing and read next
  % otherwise convert to float and add to list
  (XYZ = ["x","y","z"] -> 
    read_xyz_points(Stream, Points) ; 
    convert_to_float(XYZ,Point), read_xyz_points(Stream, Points)).

% remove first element from list - "x y z" header location
without_first([_|T], T).

convert_to_float([],[]).
convert_to_float([H|T],[HH|TT]) :-
  atom_number(H, HH),
  convert_to_float(T,TT). 