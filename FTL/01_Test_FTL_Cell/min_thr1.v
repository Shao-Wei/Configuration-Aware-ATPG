// Minimal netlist to test THRESHOLD_1
module min_thr1 (
  A, B, C, D, E, T
);
  input A;
  input B;
  input C;
  input D;
  input E;
  output T;

  // Instantiate THRESHOLD_1 from the addon MDT
  THRESHOLD_1 UTH (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .Y(T)
  );
endmodule
