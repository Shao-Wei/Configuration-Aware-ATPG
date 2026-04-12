/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar  2 09:34:24 2025
/////////////////////////////////////////////////////////////


module s208_mixed ( X, Clear, C_8, C_7, C_6, C_5, C_4, C_3, C_2, C_1, C_0,
        Y_4, Y_3, Y_2, Y_1, Y_8, Y_7, Y_6, Y_5, II6, II3, II4, II158, II155,
        II156, Z, II5, II157, W );
  input C_0, C_1, C_2, C_3, C_4, C_5, C_6, C_7, C_8, Clear, X, Y_1, Y_2,
         Y_3, Y_4, Y_5, Y_6, Y_7, Y_8;
  output II155, II156, II157, II158, II3, II4, II5, II6, W, Z;
  wire n28, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n66, n68, n79, n81, n87,
         n90;

  AND2_X1 U42 ( .A1(Y_4), .A2(n28), .ZN(n47) );
  AND2_X1 U43 ( .A1(n37), .A2(n33), .ZN(n54) );
  NOR3_X1 U44 ( .A1(n58), .A2(n59), .A3(n30), .ZN(II5) );
  INV_X1 U45 ( .A(n45), .ZN(n28) );
  NAND2_X1 U46 ( .A1(n53), .A2(n55), .ZN(n33) );
  NOR2_X1 U47 ( .A1(Y_5), .A2(n52), .ZN(n38) );
  AND2_X1 U48 ( .A1(Y_8), .A2(n42), .ZN(n41) );
  AND2_X1 U49 ( .A1(C_8), .A2(n40), .ZN(n39) );
  AND2_X1 U50 ( .A1(n35), .A2(X), .ZN(n37) );
  INV_X1 U51 ( .A(Y_6), .ZN(n40) );
  NAND2_X1 U52 ( .A1(Y_4), .A2(C_4), .ZN(n53) );
  INV_X1 U53 ( .A(Y_4), .ZN(n44) );
  INV_X1 U54 ( .A(Y_5), .ZN(n42) );
  AND2_X1 U55 ( .A1(Y_5), .A2(C_5), .ZN(n32) );
  AND2_X1 U56 ( .A1(n39), .A2(n56), .ZN(n31) );
  NOR2_X1 U57 ( .A1(Y_4), .A2(Y_3), .ZN(n29) );
  NOR2_X1 U58 ( .A1(Y_2), .A2(Y_1), .ZN(n30) );
  AND3_X1 U59 ( .A1(n37), .A2(n29), .A3(n32), .ZN(n66) );
  AND4_X1 U60 ( .A1(n37), .A2(n41), .A3(n31), .A4(n29), .ZN(n90) );
  NOR2_X1 U61 ( .A1(Y_2), .A2(Y_1), .ZN(n35) );
  AND2_X1 U62 ( .A1(n36), .A2(n79), .ZN(n81) );
  NAND4_X1 U63 ( .A1(n37), .A2(n38), .A3(n51), .A4(n29), .ZN(n36) );
  OR2_X1 U64 ( .A1(C_6), .A2(n63), .ZN(n51) );
  INV_X1 U65 ( .A(Y_1), .ZN(n43) );
  AND4_X1 U66 ( .A1(Y_2), .A2(X), .A3(C_2), .A4(n43), .ZN(n68) );
  NAND3_X1 U67 ( .A1(Y_2), .A2(Y_1), .A3(Y_3), .ZN(n45) );
  INV_X1 U68 ( .A(Clear), .ZN(n46) );
  NAND2_X1 U69 ( .A1(X), .A2(n46), .ZN(n58) );
  AOI211_X1 U70 ( .C1(n45), .C2(n44), .A(n47), .B(n58), .ZN(II3) );
  NAND2_X1 U71 ( .A1(Y_2), .A2(Y_1), .ZN(n57) );
  INV_X1 U72 ( .A(Y_3), .ZN(n55) );
  AOI211_X1 U73 ( .C1(n57), .C2(n55), .A(n28), .B(n58), .ZN(II4) );
  INV_X1 U74 ( .A(Y_8), .ZN(n48) );
  NAND3_X1 U75 ( .A1(Y_5), .A2(Y_6), .A3(Y_7), .ZN(n49) );
  NOR2_X1 U76 ( .A1(n48), .A2(n49), .ZN(W) );
  NAND2_X1 U77 ( .A1(n47), .A2(n46), .ZN(n61) );
  AOI211_X1 U78 ( .C1(n48), .C2(n49), .A(W), .B(n61), .ZN(II155) );
  NAND2_X1 U79 ( .A1(Y_5), .A2(Y_6), .ZN(n60) );
  INV_X1 U80 ( .A(Y_7), .ZN(n56) );
  INV_X1 U81 ( .A(n49), .ZN(n50) );
  AOI211_X1 U82 ( .C1(n60), .C2(n56), .A(n50), .B(n61), .ZN(II156) );
  INV_X1 U83 ( .A(Y_6), .ZN(n63) );
  AOI21_X1 U84 ( .B1(Y_7), .B2(C_7), .A(Y_6), .ZN(n52) );
  OAI21_X1 U85 ( .B1(C_3), .B2(n55), .A(n54), .ZN(n87) );
  NOR2_X1 U86 ( .A1(Y_1), .A2(n58), .ZN(II6) );
  INV_X1 U87 ( .A(n57), .ZN(n59) );
  NOR2_X1 U88 ( .A1(Y_5), .A2(n61), .ZN(II158) );
  INV_X1 U89 ( .A(n60), .ZN(n62) );
  AOI211_X1 U90 ( .C1(n42), .C2(n63), .A(n62), .B(n61), .ZN(II157) );
  FTL_FUNC_08536_FFFFEFFF FTL_PATCH_O0 ( .A(n66), .B(n68), .C(n81), .D(n87), .E(n90), .Y(Z) );
  FTL_FUNC_03752_575F575F FTL_PATCH_I0 ( .A(X), .B(C_1), .C(C_0), .D(Y_1), .E(Y_1), .Y(n79) );
endmodule

