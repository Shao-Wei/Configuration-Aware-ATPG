/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar  2 09:15:14 2025
/////////////////////////////////////////////////////////////


module s208_mixed ( X, Clear, C_8, C_7, C_6, C_5, C_4, C_3, C_2, Y_4, Y_3,
        Y_2, Y_1, Y_8, Y_7, Y_6, Y_5, n79, n53, II6, II4, II158, II156, II5,
        II157, W, n33, n34, n39, n49, n50, n55, n66, n68, n81, n87, n90,
        C_0, C_1, II155, II3, Z );
  input X, Clear, C_8, C_7, C_6, C_5, C_4, C_3, C_2, Y_4, Y_3, Y_2, Y_1,
         Y_8, Y_7, Y_6, Y_5, n79, n53, C_0, C_1;
  output II6, II4, II158, II156, II5, II157, W, n33, n34, n39, n49, n50,
         n55, n66, n68, n81, n87, n90, II155, II3, Z;
  wire   n27, n28, n29, n30, n31, n32, n35, n36, n38, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n51, n52, n54, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n67, n69;

  NAND2_X1 U45 ( .A1(n35), .A2(n65), .ZN(n67) );
  AND2_X1 U46 ( .A1(n27), .A2(n36), .ZN(n60) );
  AND3_X1 U47 ( .A1(n32), .A2(n31), .A3(X), .ZN(n27) );
  AND2_X1 U48 ( .A1(n32), .A2(n63), .ZN(n38) );
  NOR2_X1 U49 ( .A1(n48), .A2(n64), .ZN(n33) );
  AND2_X1 U50 ( .A1(Y_1), .A2(Y_2), .ZN(n65) );
  INV_X1 U51 ( .A(Y_1), .ZN(n63) );
  INV_X1 U52 ( .A(Y_3), .ZN(n61) );
  INV_X1 U53 ( .A(Y_4), .ZN(n47) );
  AND3_X1 U54 ( .A1(n45), .A2(n43), .A3(n62), .ZN(n30) );
  NOR3_X1 U55 ( .A1(n64), .A2(n65), .A3(n38), .ZN(II5) );
  NOR2_X1 U56 ( .A1(Y_5), .A2(n58), .ZN(n42) );
  INV_X1 U57 ( .A(n65), .ZN(n48) );
  NAND2_X1 U58 ( .A1(n59), .A2(n61), .ZN(n36) );
  AND3_X1 U59 ( .A1(n51), .A2(Y_4), .A3(Y_3), .ZN(n35) );
  AND2_X1 U60 ( .A1(Y_8), .A2(n46), .ZN(n45) );
  AND2_X1 U61 ( .A1(C_8), .A2(n44), .ZN(n43) );
  AOI21_X1 U62 ( .B1(Y_7), .B2(C_7), .A(Y_6), .ZN(n58) );
  AND2_X1 U63 ( .A1(Y_5), .A2(C_5), .ZN(n28) );
  NOR2_X1 U64 ( .A1(Y_4), .A2(Y_3), .ZN(n57) );
  INV_X1 U65 ( .A(Y_5), .ZN(n46) );
  INV_X1 U66 ( .A(Y_6), .ZN(n44) );
  NAND2_X1 U67 ( .A1(Y_4), .A2(C_4), .ZN(n59) );
  AND3_X1 U68 ( .A1(n32), .A2(n31), .A3(X), .ZN(n41) );
  AND2_X1 U69 ( .A1(n41), .A2(n57), .ZN(n29) );
  AND3_X1 U70 ( .A1(n27), .A2(n57), .A3(n28), .ZN(n66) );
  AND2_X1 U71 ( .A1(n29), .A2(n30), .ZN(n90) );
  INV_X1 U72 ( .A(Y_1), .ZN(n31) );
  INV_X1 U73 ( .A(Y_2), .ZN(n32) );
  AND2_X1 U74 ( .A1(n40), .A2(n79), .ZN(n81) );
  NAND4_X1 U75 ( .A1(n27), .A2(n42), .A3(n56), .A4(n57), .ZN(n40) );
  OR2_X1 U76 ( .A1(C_6), .A2(n44), .ZN(n56) );
  AND2_X1 U77 ( .A1(Y_8), .A2(n53), .ZN(W) );
  AND4_X1 U78 ( .A1(Y_2), .A2(X), .A3(C_2), .A4(n63), .ZN(n68) );
  NOR2_X1 U79 ( .A1(Y_4), .A2(n61), .ZN(n34) );
  INV_X1 U80 ( .A(Clear), .ZN(n51) );
  NAND2_X1 U81 ( .A1(X), .A2(n51), .ZN(n64) );
  AOI211_X1 U82 ( .C1(n65), .C2(Y_3), .A(n47), .B(n64), .ZN(n39) );
  AOI221_X1 U83 ( .B1(n65), .B2(Y_3), .C1(n48), .C2(n61), .A(n64), .ZN(II4) );
  INV_X1 U84 ( .A(Y_7), .ZN(n62) );
  NOR2_X1 U85 ( .A1(Y_8), .A2(n62), .ZN(n50) );
  INV_X1 U86 ( .A(Y_8), .ZN(n52) );
  NOR3_X1 U87 ( .A1(n53), .A2(n52), .A3(n67), .ZN(n55) );
  NOR2_X1 U88 ( .A1(n46), .A2(n44), .ZN(n69) );
  INV_X1 U89 ( .A(n69), .ZN(n54) );
  AOI221_X1 U90 ( .B1(n69), .B2(Y_7), .C1(n54), .C2(n62), .A(n67), .ZN(II156)
         );
  NOR2_X1 U91 ( .A1(n54), .A2(n67), .ZN(n49) );
  OAI21_X1 U92 ( .B1(C_3), .B2(n61), .A(n60), .ZN(n87) );
  NOR2_X1 U93 ( .A1(Y_1), .A2(n64), .ZN(II6) );
  NOR2_X1 U94 ( .A1(Y_5), .A2(n67), .ZN(II158) );
  AOI211_X1 U95 ( .C1(n46), .C2(n44), .A(n69), .B(n67), .ZN(II157) );
  FTL_FUNC_00782_F8F8F8F8 FTL_PATCH_O0 ( .A(n33), .B(n34), .C(n39), .D(n39), .E(n39), .Y(II3) );
  FTL_FUNC_00782_F8F8F8F8 FTL_PATCH_O1 ( .A(n49), .B(n50), .C(n55), .D(n55), .E(n55), .Y(II155) );
  FTL_FUNC_08536_FFFFEFFF FTL_PATCH_O2 ( .A(n66), .B(n68), .C(n81), .D(n87), .E(n90), .Y(Z) );
  FTL_FUNC_03752_575F575F FTL_PATCH_I0 ( .A(X), .B(C_1), .C(C_0), .D(Y_1), .E(Y_1), .Y(n79) );
  FTL_FUNC_00090_80808080 FTL_PATCH_I1 ( .A(Y_7), .B(Y_6), .C(Y_5), .D(Y_5), .E(Y_5), .Y(n53) );
endmodule

