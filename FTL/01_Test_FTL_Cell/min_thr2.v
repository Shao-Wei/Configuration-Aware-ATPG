// Minimal netlist to test THRESHOLD_2
module min_thr2 (
  A, B, C, D, E, T
);
  input A;
  input B;
  input C;
  input D;
  input E;
  output T;

  // Instantiate THRESHOLD_2 from the addon MDT
  THRESHOLD_2 UTH (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .Y(T)
  );
endmodule
