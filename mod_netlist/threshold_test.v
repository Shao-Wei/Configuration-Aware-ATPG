// Simple test netlist for THRESHOLD_0 cell
module threshold_test (
    A,
    B,
    C,
    Y
);
  input A;
  input B;
  input C;
  output Y;

  // Instantiate threshold cell from techlib
  THRESHOLD_0 U1 (
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
  );

endmodule
