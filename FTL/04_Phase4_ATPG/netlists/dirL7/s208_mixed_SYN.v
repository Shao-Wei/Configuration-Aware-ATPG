/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar  2 09:52:53 2025
/////////////////////////////////////////////////////////////


module s208_mixed ( X, Clear, C_8, C_7, C_6, C_5, C_4, C_3, C_2, C_1, C_0,
        Y_4, Y_3, Y_2, Y_1, Y_8, Y_7, Y_6, Y_5, II6, II3, II4, II158, II155,
        II156, Z, II5, II157, W );
  input C_0, C_1, C_2, C_3, C_4, C_5, C_6, C_7, C_8, Clear, X, Y_1, Y_2,
         Y_3, Y_4, Y_5, Y_6, Y_7, Y_8;
  output II155, II156, II157, II158, II3, II4, II5, II6, W, Z;
  wire n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57;

  INV_X1 U39 ( .A(Y_1), .ZN(n52) );
  INV_X1 U40 ( .A(Y_2), .ZN(n51) );
  NOR2_X1 U41 ( .A1(n52), .A2(n51), .ZN(n50) );
  NAND2_X1 U42 ( .A1(Y_3), .A2(n50), .ZN(n31) );
  INV_X1 U43 ( .A(Clear), .ZN(n32) );
  NAND2_X1 U44 ( .A1(n32), .A2(X), .ZN(n49) );
  INV_X1 U45 ( .A(n49), .ZN(n29) );
  OAI211_X1 U46 ( .C1(Y_3), .C2(n50), .A(n31), .B(n29), .ZN(n30) );
  INV_X1 U47 ( .A(n30), .ZN(II4) );
  INV_X1 U48 ( .A(Y_4), .ZN(n40) );
  NOR2_X1 U49 ( .A1(n40), .A2(n31), .ZN(n33) );
  AOI211_X1 U50 ( .C1(n40), .C2(n31), .A(n33), .B(n49), .ZN(II3) );
  INV_X1 U51 ( .A(Y_8), .ZN(n34) );
  NAND3_X1 U52 ( .A1(Y_5), .A2(Y_6), .A3(Y_7), .ZN(n35) );
  NOR2_X1 U53 ( .A1(n34), .A2(n35), .ZN(W) );
  NAND2_X1 U54 ( .A1(n33), .A2(n32), .ZN(n54) );
  AOI211_X1 U55 ( .C1(n34), .C2(n35), .A(W), .B(n54), .ZN(II155) );
  INV_X1 U56 ( .A(Y_7), .ZN(n37) );
  NAND2_X1 U57 ( .A1(Y_5), .A2(Y_6), .ZN(n53) );
  INV_X1 U58 ( .A(n35), .ZN(n36) );
  AOI211_X1 U59 ( .C1(n37), .C2(n53), .A(n36), .B(n54), .ZN(II156) );
  AOI21_X1 U60 ( .B1(Y_1), .B2(C_1), .A(C_0), .ZN(n48) );
  NAND2_X1 U61 ( .A1(Y_4), .A2(C_4), .ZN(n44) );
  OAI222_X1 U62 ( .A1(Y_7), .A2(Y_8), .B1(Y_7), .B2(C_8), .C1(C_7), .C2(n37), 
        .ZN(n39) );
  NAND2_X1 U63 ( .A1(Y_6), .A2(C_6), .ZN(n38) );
  OAI21_X1 U64 ( .B1(n39), .B2(Y_6), .A(n38), .ZN(n41) );
  INV_X1 U65 ( .A(Y_5), .ZN(n57) );
  OAI221_X1 U66 ( .B1(Y_5), .B2(n41), .C1(n57), .C2(C_5), .A(n40), .ZN(n43) );
  NAND2_X1 U67 ( .A1(Y_3), .A2(C_3), .ZN(n42) );
  OAI221_X1 U68 ( .B1(Y_3), .B2(n44), .C1(Y_3), .C2(n43), .A(n42), .ZN(n45) );
  OAI221_X1 U69 ( .B1(Y_2), .B2(n45), .C1(n51), .C2(C_2), .A(n52), .ZN(n47) );
  INV_X1 U70 ( .A(X), .ZN(n46) );
  AOI21_X1 U71 ( .B1(n48), .B2(n47), .A(n46), .ZN(Z) );
  NOR2_X1 U72 ( .A1(Y_1), .A2(n49), .ZN(II6) );
  AOI211_X1 U73 ( .C1(n52), .C2(n51), .A(n50), .B(n49), .ZN(II5) );
  NOR2_X1 U74 ( .A1(Y_5), .A2(n54), .ZN(II158) );
  INV_X1 U75 ( .A(Y_6), .ZN(n56) );
  INV_X1 U76 ( .A(n53), .ZN(n55) );
  AOI211_X1 U77 ( .C1(n57), .C2(n56), .A(n55), .B(n54), .ZN(II157) );
endmodule

