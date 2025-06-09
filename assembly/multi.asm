// Initialize R2 to 0
@R2
M=0

// Load R1 into counter
@R1
D=M
@counter
M=D

// Check if counter == 0 (early exit)
@counter
D=M
@END
D;JEQ

// Loop: R2 = R2 + R0
(LOOP)
    // Load R0 into D
    @R0
    D=M

    // Add D to R2
    @R2
    M=D+M

    // Decrement counter
    @counter
    M=M-1

    // If counter > 0, repeat
    @counter
    D=M
    @LOOP
    D;JGT

// End of program
(END)
@END
0;JMP

