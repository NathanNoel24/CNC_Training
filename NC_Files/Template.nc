%
O120209 
(CNC_Training/NathanPantoja) 
(This template is for any Haas CNC machine.  EOL characters are not required.  If using another machine check controller documentation.

(Startup Process)
M06 T1	 					(Select tool)
M03 S5000 					(Start Spindle, Clockwise, at 5,000 RPM)
G54 						(Use Work Offset G54)
G00 						(Rapid Movement)
G90 G17 					(Safe Startup Line: Absolute Programming and Set the active plane as XY)
	X0. Y0. 				(Position at 0 for X and Y axes - set in work offsets)
G43 H01 					(Use Tool Offset #1)
			Z0.15 			(Move to Z position just above work)
G91 						(Change to incremental positioning)
(END Startup Process)

(Set Feedrate and drop to just above origin)
G00 X0.5 Y0.5				(Rapid Movement and Start Coordinates)
G01 F5.0 					(Change to Cutting speed and set Feed Rate.)
			Z-0.3			(Drop cutter into work)
Y2.5						(Move North)
G2	Y2.0 J-0.5				(Start to End Arc)
[POSITIONS GO HERE]

(End Sequence)
G0			Z2.				(Raise Cutter)
G28							(Machine Home) 
M30 						(End of Program)
%
