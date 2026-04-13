/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP1
// Date      : Sun Mar  2 09:36:50 2025
/////////////////////////////////////////////////////////////


module s5378_mixed ( n3065gat, n3066gat, n3067gat, n3068gat, n3069gat,
        n3070gat, n3071gat, n3072gat, n3073gat, n3074gat, n3075gat,
        n3076gat, n3077gat, n3078gat, n3079gat, n3080gat, n3081gat,
        n3082gat, n3083gat, n3084gat, n3085gat, n3086gat, n3087gat,
        n3088gat, n3089gat, n3090gat, n3091gat, n3092gat, n3093gat,
        n3094gat, n3095gat, n3097gat, n3098gat, n3099gat, n3100gat, n673gat,
        n398gat, n402gat, n919gat, n846gat, n394gat, n703gat, n722gat,
        n726gat, n271gat, n160gat, n337gat, n842gat, n341gat, n2522gat,
        n2472gat, n2319gat, n1821gat, n1825gat, n1829gat, n283gat, n165gat,
        n279gat, n1026gat, n275gat, n2476gat, n1068gat, n957gat, n861gat,
        n1294gat, n1241gat, n1298gat, n865gat, n1080gat, n1148gat, n2468gat,
        n618gat, n491gat, n622gat, n626gat, n834gat, n707gat, n838gat,
        n830gat, n614gat, n2526gat, n680gat, n816gat, n580gat, n824gat,
        n820gat, n883gat, n584gat, n684gat, n699gat, n2464gat, n2399gat,
        n2343gat, n2203gat, n2562gat, n2207gat, n2626gat, n2490gat,
        n2622gat, n2630gat, n2543gat, n2102gat, n1880gat, n1763gat,
        n2155gat, n1035gat, n1121gat, n1072gat, n1282gat, n1226gat, n931gat,
        n1135gat, n1045gat, n1197gat, n2518gat, n667gat, n659gat, n553gat,
        n777gat, n561gat, n366gat, n322gat, n318gat, n314gat, n2599gat,
        n2640gat, n2495gat, n2390gat, n2270gat, n2339gat, n2634gat,
        n1834gat, n1767gat, n2084gat, n2143gat, n2061gat, n2139gat,
        n1899gat, n1850gat, n2403gat, n2394gat, n2440gat, n2407gat,
        n2347gat, n1389gat, n2021gat, n1394gat, n1496gat, n2091gat,
        n1740gat, n2179gat, n2190gat, n2135gat, n2262gat, n2182gat,
        n1316gat, n1312gat, n1775gat, n1871gat, n2592gat, n1508gat,
        n1678gat, n2309gat, n2450gat, n2446gat, n2095gat, n2176gat,
        n2169gat, n2454gat, n2040gat, n2037gat, n2099gat, n2266gat,
        n2033gat, n2110gat, n2125gat, n2117gat, n1975gat, n2644gat, n156gat,
        n152gat, n331gat, n388gat, n463gat, n327gat, n384gat, n256gat,
        n470gat, n148gat, n2514gat, n1771gat, n1336gat, n1748gat, n1675gat,
        n1807gat, n1340gat, n1456gat, n1525gat, n1462gat, n1596gat,
        n1588gat, n1235, n749, n1364, n415, n1816gat_EXTRA, n1858gat_EXTRA,
        n1603gat_EXTRA, n1777gat_EXTRA, n1685gat_EXTRA, n1717gat_EXTRA,
        n1713gat_EXTRA, n1945gat, n1836gat, n1712gat_EXTRA, n3034gat,
        n3040gat, n3044gat, n3047gat, n3049gat, n3052gat, n3057gat,
        n1632gat, n3107gat, n3108gat, n3109gat, n3110gat, n3111gat,
        n3112gat, n3113gat, n3114gat, n3115gat, n3116gat, n3122gat,
        n3141gat, n3142gat, n3146gat, n3147gat, n3149gat, n3150gat,
        n3152gat, n2897gat, n748gat_EXTRA, n43gat_EXTRA, n55gat_EXTRA,
        n2914gat, n2928gat, n2927gat, n2896gat, n2922gat, n2894gat,
        n2921gat, n2895gat, n933gat_EXTRA, n504gat_EXTRA, n2913gat,
        n2920gat, n2905gat, n2898gat, n567gat_EXTRA, n2909gat, n2908gat,
        n2971gat_EXTRA, n3010gat_EXTRA, n3016gat, n2579gat_EXTRA,
        n2646gat_EXTRA, n2613gat_EXTRA, n3000gat, n1620gat, n1827gat,
        n1606gat_EXTRA, n1610gat, n1625gat_EXTRA, n1626gat_EXTRA, n1516gat,
        n1565gat, n1696gat, n1636gat, n2163gat, n2015gat, n1613gat,
        n1391gat, n1567gat, n1915gat, n1800gat, n1593gat, n368, n372, n387,
        n390, n392, n416, n419, n420, n423, n434, n437, n438, n441, n443,
        n444, n449, n450, n453, n454, n445, n460, n461, n482, n446, n486,
        n487, n488, n405, n464, n481, n494, n362, n504, n510, n516, n525,
        n511, n528, n529, n530, n543, n550, n554, n558, n561, n567, n572,
        n574, n580, n591, n592, n593, n596, n599, n603, n604, n607, n610,
        n613, n614, n617, n620, n624, n625, n628, n636, n638, n643, n645,
        n559, n650, n651, n654, n662, n666, n671, n674, n732, n735, n743,
        n751, n779, n722, n728, n787, n832, n840, n885, n893, n938, n750,
        n944, n945, n991, n1050, n1051, n1092, n1100, n1103, n1108, n1113,
        n1120, n1132, n1110, n1112, n1148, n1157, n1165, n1151, n1167,
        n1168, n1170, n1173, n1175, n1176, n1178, n1181, n887, n888, n892,
        n1189, n1191, n1192, n1194, n1197, n1150, n1203, n1205, n1207,
        n1208, n1209, n1211, n1098, n1099, n1221, n374, n1226, n1228, n1229,
        n1244, n1245, n1249, n1269, n1271, n1234, n1238, n1268, n1426,
        n1434, n1435, n1447, n1450, n1461, n1462, n1474, n1477, n385, n1480,
        n497, n498, n660, n661, n665, n1256, n1257, n1540, n1552, n1554,
        n1557, n1559, n1561, n1230, n1258, n1551, n1563, n1565, n1567,
        n1574, n1576, n1581, n1585, n1589, n1591, n1592, n1597, n1599,
        n1600, n1605, n1609, n505, n1619, n1620, n1624, n475, n476, n1633,
        n1638, n1654, n1717, n1718, n1720, n1723, n440, n1657, n1716, n471,
        n477, n502, n503, n1721, n1040, n1046, n1047, n1088, n1094, n1095,
        n1096, n1104, n1106, n1116, n1128, n1144, n1146, n1147, n1153,
        n1161, n1163, n1164, n1166, n1169, n1171, n1172, n1174, n1177,
        n1185, n1187, n1188, n1190, n1193, n1199, n1201, n1204, n1217,
        n1222, n1224, n1225, n1240, n1241, n1252, n1253, n1254, n1264,
        n1265, n1267, n1422, n1430, n1431, n1443, n1446, n1457, n1458,
        n1470, n1473, n1476, n1536, n1547, n1548, n1550, n1553, n1555,
        n1570, n1572, n1577, n1587, n1588, n1593, n1595, n1596, n1601,
        n1615, n1616, n1629, n1634, n1650, n1653, n1712, n1713, n1714,
        n1719, n2502gat, n2506gat, n2510gat, n2588gat, n2658gat, n358, n364,
        n370, n381, n383, n386, n388, n884, n889, n934, n940, n941, n987,
        n993, n994, n1360, n1564gat, n1781gat, n1793gat, n1927gat, n2009gat,
        n2017gat, n2886gat, n2887gat, n2888gat, n2890gat, n2891gat,
        n2901gat, n2903gat, n2904gat, n2907gat, n2910gat, n2911gat,
        n2912gat, n2915gat, n2918gat, n2919gat, n2952gat, n2983gat,
        n3031gat, n3035gat, n3036gat, n3037gat, n3041gat, n3042gat,
        n3048gat, n3051gat, n3053gat, n3054gat, n3055gat, n3056gat,
        n3058gat, n3059gat, n3060gat, n3061gat, n3062gat, n3063gat,
        n3064gat, n3104gat, n3105gat, n3117gat, n3118gat, n3119gat,
        n3120gat, n3121gat, n3123gat, n3124gat, n3125gat, n3129gat,
        n3130gat, n3131gat, n3132gat, n3133gat, n3134gat, n3135gat,
        n3136gat, n3137gat, n3138gat, n3139gat, n3140gat, n3143gat,
        n3144gat, n3145gat, n3151gat, n827gat );
  input n3065gat, n3066gat, n3067gat, n3068gat, n3069gat, n3070gat,
         n3071gat, n3072gat, n3073gat, n3074gat, n3075gat, n3076gat,
         n3077gat, n3078gat, n3079gat, n3080gat, n3081gat, n3082gat,
         n3083gat, n3084gat, n3085gat, n3086gat, n3087gat, n3088gat,
         n3089gat, n3090gat, n3091gat, n3092gat, n3093gat, n3094gat,
         n3095gat, n3097gat, n3098gat, n3099gat, n3100gat, n673gat, n398gat,
         n402gat, n919gat, n846gat, n394gat, n703gat, n722gat, n726gat,
         n271gat, n160gat, n337gat, n842gat, n341gat, n2522gat, n2472gat,
         n2319gat, n1821gat, n1825gat, n1829gat, n283gat, n165gat, n279gat,
         n1026gat, n275gat, n2476gat, n1068gat, n957gat, n861gat, n1294gat,
         n1241gat, n1298gat, n865gat, n1080gat, n1148gat, n2468gat, n618gat,
         n491gat, n622gat, n626gat, n834gat, n707gat, n838gat, n830gat,
         n614gat, n2526gat, n680gat, n816gat, n580gat, n824gat, n820gat,
         n883gat, n584gat, n684gat, n699gat, n2464gat, n2399gat, n2343gat,
         n2203gat, n2562gat, n2207gat, n2626gat, n2490gat, n2622gat,
         n2630gat, n2543gat, n2102gat, n1880gat, n1763gat, n2155gat,
         n1035gat, n1121gat, n1072gat, n1282gat, n1226gat, n931gat,
         n1135gat, n1045gat, n1197gat, n2518gat, n667gat, n659gat, n553gat,
         n777gat, n561gat, n366gat, n322gat, n318gat, n314gat, n2599gat,
         n2640gat, n2495gat, n2390gat, n2270gat, n2339gat, n2634gat,
         n1834gat, n1767gat, n2084gat, n2143gat, n2061gat, n2139gat,
         n1899gat, n1850gat, n2403gat, n2394gat, n2440gat, n2407gat,
         n2347gat, n1389gat, n2021gat, n1394gat, n1496gat, n2091gat,
         n1740gat, n2179gat, n2190gat, n2135gat, n2262gat, n2182gat,
         n1316gat, n1312gat, n1775gat, n1871gat, n2592gat, n1508gat,
         n1678gat, n2309gat, n2450gat, n2446gat, n2095gat, n2176gat,
         n2169gat, n2454gat, n2040gat, n2037gat, n2099gat, n2266gat,
         n2033gat, n2110gat, n2125gat, n2117gat, n1975gat, n2644gat,
         n156gat, n152gat, n331gat, n388gat, n463gat, n327gat, n384gat,
         n256gat, n470gat, n148gat, n2514gat, n1771gat, n1336gat, n1748gat,
         n1675gat, n1807gat, n1340gat, n1456gat, n1525gat, n1462gat,
         n1596gat, n1588gat, n1235, n749, n1364, n415, n1040, n1046, n1047,
         n1088, n1094, n1095, n1096, n1104, n1106, n1116, n1128, n1144,
         n1146, n1147, n1153, n1161, n1163, n1164, n1166, n1169, n1171,
         n1172, n1174, n1177, n1185, n1187, n1188, n1190, n1193, n1199,
         n1201, n1204, n1217, n1222, n1224, n1225, n1240, n1241, n1252,
         n1253, n1254, n1264, n1265, n1267, n1422, n1430, n1431, n1443,
         n1446, n1457, n1458, n1470, n1473, n1476, n1536, n1547, n1548,
         n1550, n1553, n1555, n1570, n1572, n1577, n1587, n1588, n1593,
         n1595, n1596, n1601, n1615, n1616, n1629, n1634, n1650, n1653,
         n1712, n1713, n1714, n1719, n2502gat, n2506gat, n2510gat, n2588gat,
         n2658gat, n358, n364, n370, n381, n383, n386, n388, n884, n889,
         n934, n940, n941, n987, n993, n994;
  output n1816gat_EXTRA, n1858gat_EXTRA, n1603gat_EXTRA, n1777gat_EXTRA,
         n1685gat_EXTRA, n1717gat_EXTRA, n1713gat_EXTRA, n1945gat, n1836gat,
         n1712gat_EXTRA, n3034gat, n3040gat, n3044gat, n3047gat, n3049gat,
         n3052gat, n3057gat, n1632gat, n3107gat, n3108gat, n3109gat,
         n3110gat, n3111gat, n3112gat, n3113gat, n3114gat, n3115gat,
         n3116gat, n3122gat, n3141gat, n3142gat, n3146gat, n3147gat,
         n3149gat, n3150gat, n3152gat, n2897gat, n748gat_EXTRA,
         n43gat_EXTRA, n55gat_EXTRA, n2914gat, n2928gat, n2927gat, n2896gat,
         n2922gat, n2894gat, n2921gat, n2895gat, n933gat_EXTRA,
         n504gat_EXTRA, n2913gat, n2920gat, n2905gat, n2898gat,
         n567gat_EXTRA, n2909gat, n2908gat, n2971gat_EXTRA, n3010gat_EXTRA,
         n3016gat, n2579gat_EXTRA, n2646gat_EXTRA, n2613gat_EXTRA, n3000gat,
         n1620gat, n1827gat, n1606gat_EXTRA, n1610gat, n1625gat_EXTRA,
         n1626gat_EXTRA, n1516gat, n1565gat, n1696gat, n1636gat, n2163gat,
         n2015gat, n1613gat, n1391gat, n1567gat, n1915gat, n1800gat,
         n1593gat, n368, n372, n387, n390, n392, n416, n419, n420, n423,
         n434, n437, n438, n441, n443, n444, n449, n450, n453, n454, n445,
         n460, n461, n482, n446, n486, n487, n488, n405, n464, n481, n494,
         n362, n504, n510, n516, n525, n511, n528, n529, n530, n543, n550,
         n554, n558, n561, n567, n572, n574, n580, n591, n592, n593, n596,
         n599, n603, n604, n607, n610, n613, n614, n617, n620, n624, n625,
         n628, n636, n638, n643, n645, n559, n650, n651, n654, n662, n666,
         n671, n674, n732, n735, n743, n751, n779, n722, n728, n787, n832,
         n840, n885, n893, n938, n750, n944, n945, n991, n1050, n1051,
         n1092, n1100, n1103, n1108, n1113, n1120, n1132, n1110, n1112,
         n1148, n1157, n1165, n1151, n1167, n1168, n1170, n1173, n1175,
         n1176, n1178, n1181, n887, n888, n892, n1189, n1191, n1192, n1194,
         n1197, n1150, n1203, n1205, n1207, n1208, n1209, n1211, n1098,
         n1099, n1221, n374, n1226, n1228, n1229, n1244, n1245, n1249,
         n1269, n1271, n1234, n1238, n1268, n1426, n1434, n1435, n1447,
         n1450, n1461, n1462, n1474, n1477, n385, n1480, n497, n498, n660,
         n661, n665, n1256, n1257, n1540, n1552, n1554, n1557, n1559, n1561,
         n1230, n1258, n1551, n1563, n1565, n1567, n1574, n1576, n1581,
         n1585, n1589, n1591, n1592, n1597, n1599, n1600, n1605, n1609,
         n505, n1619, n1620, n1624, n475, n476, n1633, n1638, n1654, n1717,
         n1718, n1720, n1723, n440, n1657, n1716, n471, n477, n502, n503,
         n1721, n1360, n1564gat, n1781gat, n1793gat, n1927gat, n2009gat,
         n2017gat, n2886gat, n2887gat, n2888gat, n2890gat, n2891gat,
         n2901gat, n2903gat, n2904gat, n2907gat, n2910gat, n2911gat,
         n2912gat, n2915gat, n2918gat, n2919gat, n2952gat, n2983gat,
         n3031gat, n3035gat, n3036gat, n3037gat, n3041gat, n3042gat,
         n3048gat, n3051gat, n3053gat, n3054gat, n3055gat, n3056gat,
         n3058gat, n3059gat, n3060gat, n3061gat, n3062gat, n3063gat,
         n3064gat, n3104gat, n3105gat, n3117gat, n3118gat, n3119gat,
         n3120gat, n3121gat, n3123gat, n3124gat, n3125gat, n3129gat,
         n3130gat, n3131gat, n3132gat, n3133gat, n3134gat, n3135gat,
         n3136gat, n3137gat, n3138gat, n3139gat, n3140gat, n3143gat,
         n3144gat, n3145gat, n3151gat, n827gat;
  wire ftl_const0, n1231, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n417, n418, n421, n422, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n435, n436, n439, n442, n447, n448, n451, n452,
         n455, n456, n457, n458, n459, n462, n463, n465, n466, n467, n468,
         n469, n470, n472, n473, n474, n478, n479, n480, n483, n484, n485,
         n489, n490, n491, n492, n493, n495, n496, n499, n500, n501, n506,
         n507, n508, n509, n512, n513, n514, n515, n517, n518, n519, n520,
         n521, n522, n523, n524, n526, n527, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n544, n545, n546, n547,
         n548, n549, n551, n552, n553, n555, n556, n557, n560, n562, n563,
         n564, n565, n566, n568, n569, n570, n571, n573, n575, n576, n577,
         n578, n579, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n594, n595, n597, n598, n600, n601, n602, n605, n606, n608,
         n609, n611, n612, n615, n616, n618, n619, n621, n622, n623, n626,
         n627, n629, n630, n631, n632, n633, n634, n635, n637, n639, n640,
         n641, n642, n644, n646, n647, n648, n649, n652, n653, n655, n656,
         n657, n658, n659, n663, n664, n667, n668, n669, n670, n672, n673,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n723, n724, n725, n726, n727, n729, n730, n731,
         n733, n734, n736, n737, n738, n739, n740, n741, n742, n744, n745,
         n746, n747, n748, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n780, n781, n782,
         n783, n784, n785, n786, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n833, n834, n835, n836, n837, n838, n839,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n877, n878, n879, n880, n881, n882,
         n883;

  INV_X1 U658 ( .A(ftl_const0), .ZN(n3000gat) );
  INV_X1 U660 ( .A(ftl_const0), .ZN(n3152gat) );
  INV_X1 U662 ( .A(ftl_const0), .ZN(n3115gat) );
  INV_X1 U664 ( .A(ftl_const0), .ZN(n3112gat) );
  NAND3_X2 U666 ( .A1(n1880gat), .A2(n1834gat), .A3(n1767gat), .ZN(
        n1603gat_EXTRA) );
  INV_X2 U667 ( .A(n1603gat_EXTRA), .ZN(n759) );
  AND2_X1 U672 ( .A1(n402), .A2(n919gat), .ZN(n399) );
  AND2_X1 U673 ( .A1(n397), .A2(n486), .ZN(n414) );
  BUF_X1 U674 ( .A(n652), .Z(n653) );
  INV_X1 U675 ( .A(n2403gat), .ZN(n848) );
  BUF_X1 U676 ( .A(n414), .Z(n1633) );
  CLKBUF_X1 U677 ( .A(n2139gat), .Z(n498) );
  BUF_X1 U678 ( .A(n556), .Z(n728) );
  CLKBUF_X1 U679 ( .A(n2190gat), .Z(n438) );
  INV_X1 U680 ( .A(n2394gat), .ZN(n594) );
  INV_X1 U681 ( .A(n2440gat), .ZN(n409) );
  NAND2_X1 U682 ( .A1(n594), .A2(n409), .ZN(n401) );
  INV_X1 U683 ( .A(n401), .ZN(n630) );
  NAND2_X1 U684 ( .A1(n630), .A2(n848), .ZN(n629) );
  INV_X1 U685 ( .A(n2347gat), .ZN(n847) );
  NOR2_X1 U686 ( .A1(n629), .A2(n847), .ZN(n528) );
  INV_X1 U687 ( .A(n398gat), .ZN(n469) );
  NOR2_X1 U688 ( .A1(n402gat), .A2(n469), .ZN(n468) );
  INV_X1 U689 ( .A(n846gat), .ZN(n462) );
  NAND2_X1 U690 ( .A1(n462), .A2(n398gat), .ZN(n881) );
  INV_X1 U691 ( .A(n881), .ZN(n402) );
  NAND3_X1 U692 ( .A1(n528), .A2(n468), .A3(n402), .ZN(n395) );
  NOR3_X1 U693 ( .A1(n919gat), .A2(n2407gat), .A3(n395), .ZN(n1716) );
  OAI21_X4 U694 ( .B1(n1880gat), .B2(n1763gat), .A(n2102gat), .ZN(
        n1858gat_EXTRA) );
  INV_X1 U695 ( .A(n1858gat_EXTRA), .ZN(n396) );
  AND2_X1 U696 ( .A1(n396), .A2(n1850gat), .ZN(n397) );
  NOR2_X2 U697 ( .A1(n1899gat), .A2(n2139gat), .ZN(n781) );
  INV_X1 U698 ( .A(n781), .ZN(n839) );
  INV_X1 U699 ( .A(n2061gat), .ZN(n780) );
  NAND2_X1 U700 ( .A1(n2143gat), .A2(n780), .ZN(n589) );
  NOR2_X1 U701 ( .A1(n839), .A2(n589), .ZN(n486) );
  NOR2_X1 U702 ( .A1(n1850gat), .A2(n1899gat), .ZN(n476) );
  INV_X1 U703 ( .A(n2139gat), .ZN(n588) );
  NAND2_X1 U704 ( .A1(n2061gat), .A2(n2143gat), .ZN(n838) );
  NOR2_X1 U705 ( .A1(n588), .A2(n838), .ZN(n475) );
  AND2_X1 U706 ( .A1(n476), .A2(n475), .ZN(n477) );
  OAI221_X1 U707 ( .B1(n414), .B2(n477), .C1(n414), .C2(n1858gat_EXTRA), .A(
        n1603gat_EXTRA), .ZN(n1657) );
  INV_X1 U708 ( .A(n1657), .ZN(n398) );
  NAND2_X1 U709 ( .A1(n1716), .A2(n398), .ZN(n568) );
  NOR3_X1 U710 ( .A1(n2407gat), .A2(n847), .A3(n1657), .ZN(n413) );
  NAND2_X1 U711 ( .A1(n399), .A2(n413), .ZN(n410) );
  NAND2_X1 U712 ( .A1(n2440gat), .A2(n594), .ZN(n432) );
  NAND2_X1 U713 ( .A1(n468), .A2(n848), .ZN(n407) );
  NOR2_X1 U714 ( .A1(n2347gat), .A2(n2407gat), .ZN(n503) );
  NAND2_X1 U715 ( .A1(n2403gat), .A2(n503), .ZN(n455) );
  NOR2_X1 U716 ( .A1(n594), .A2(n409), .ZN(n631) );
  INV_X1 U717 ( .A(n631), .ZN(n835) );
  OAI33_X1 U718 ( .A1(n410), .A2(n432), .A3(n407), .B1(n455), .B2(n835), .B3(
        n1657), .ZN(n400) );
  INV_X1 U719 ( .A(n400), .ZN(n1718) );
  NOR2_X1 U720 ( .A1(n594), .A2(n2440gat), .ZN(n849) );
  INV_X1 U721 ( .A(n849), .ZN(n452) );
  AOI221_X1 U722 ( .B1(n402), .B2(n401), .C1(n881), .C2(n452), .A(n468), .ZN(
        n404) );
  INV_X1 U723 ( .A(n919gat), .ZN(n463) );
  INV_X1 U724 ( .A(n402gat), .ZN(n683) );
  NOR3_X1 U725 ( .A1(n402), .A2(n683), .A3(n835), .ZN(n403) );
  OAI221_X1 U726 ( .B1(n919gat), .B2(n404), .C1(n463), .C2(n403), .A(n398gat), 
        .ZN(n408) );
  OAI221_X1 U727 ( .B1(n919gat), .B2(n849), .C1(n463), .C2(n631), .A(n881), 
        .ZN(n406) );
  OAI22_X1 U728 ( .A1(n848), .A2(n408), .B1(n407), .B2(n406), .ZN(n412) );
  NOR3_X1 U729 ( .A1(n2394gat), .A2(n848), .A3(n409), .ZN(n502) );
  NOR2_X1 U730 ( .A1(n468), .A2(n410), .ZN(n411) );
  AOI22_X1 U731 ( .A1(n413), .A2(n412), .B1(n502), .B2(n411), .ZN(n1720) );
  AND3_X1 U732 ( .A1(n568), .A2(n1718), .A3(n1720), .ZN(n1721) );
  INV_X2 U733 ( .A(n3095gat), .ZN(n786) );
  INV_X1 U734 ( .A(n3086gat), .ZN(n570) );
  NOR2_X1 U735 ( .A1(n786), .A2(n570), .ZN(n556) );
  CLKBUF_X1 U736 ( .A(n1603gat_EXTRA), .Z(n3149gat) );
  INV_X1 U737 ( .A(n1850gat), .ZN(n841) );
  NOR4_X1 U738 ( .A1(n2143gat), .A2(n2061gat), .A3(n841), .A4(n839), .ZN(n460)
         );
  CLKBUF_X1 U739 ( .A(n460), .Z(n1717gat_EXTRA) );
  INV_X1 U740 ( .A(n1899gat), .ZN(n834) );
  NAND2_X1 U741 ( .A1(n834), .A2(n2139gat), .ZN(n428) );
  NOR3_X1 U742 ( .A1(n841), .A2(n589), .A3(n428), .ZN(n405) );
  CLKBUF_X1 U743 ( .A(n405), .Z(n1713gat_EXTRA) );
  AOI21_X1 U744 ( .B1(n415), .B2(n2309gat), .A(n3100gat), .ZN(n443) );
  NAND2_X1 U745 ( .A1(n1880gat), .A2(n2021gat), .ZN(n544) );
  AND2_X1 U746 ( .A1(n2099gat), .A2(n544), .ZN(n441) );
  NAND2_X1 U747 ( .A1(n2037gat), .A2(n2095gat), .ZN(n778) );
  NOR2_X1 U748 ( .A1(n441), .A2(n778), .ZN(n445) );
  INV_X1 U749 ( .A(n445), .ZN(n417) );
  NOR2_X1 U750 ( .A1(n443), .A2(n417), .ZN(n446) );
  CLKBUF_X1 U751 ( .A(n446), .Z(n3034gat) );
  NAND3_X1 U752 ( .A1(n722gat), .A2(n726gat), .A3(n703gat), .ZN(n826) );
  NOR3_X1 U753 ( .A1(n394gat), .A2(n2454gat), .A3(n826), .ZN(n368) );
  INV_X1 U754 ( .A(n722gat), .ZN(n581) );
  INV_X1 U755 ( .A(n703gat), .ZN(n646) );
  INV_X1 U756 ( .A(n394gat), .ZN(n827) );
  NOR2_X1 U757 ( .A1(n2454gat), .A2(n827), .ZN(n579) );
  OAI211_X1 U758 ( .C1(n581), .C2(n646), .A(n726gat), .B(n579), .ZN(n418) );
  INV_X1 U759 ( .A(n368), .ZN(n739) );
  NAND2_X1 U760 ( .A1(n418), .A2(n739), .ZN(n1685gat_EXTRA) );
  INV_X1 U761 ( .A(n1685gat_EXTRA), .ZN(n803) );
  INV_X1 U762 ( .A(n726gat), .ZN(n688) );
  NAND3_X1 U763 ( .A1(n703gat), .A2(n579), .A3(n688), .ZN(n768) );
  NAND2_X1 U764 ( .A1(n803), .A2(n768), .ZN(n1777gat_EXTRA) );
  INV_X1 U765 ( .A(n1340gat), .ZN(n421) );
  NAND2_X1 U766 ( .A1(n1777gat_EXTRA), .A2(n421), .ZN(n696) );
  AOI21_X1 U767 ( .B1(n759), .B2(n696), .A(n1456gat), .ZN(n426) );
  OAI21_X1 U768 ( .B1(n1807gat), .B2(n421), .A(n1858gat_EXTRA), .ZN(n425) );
  INV_X1 U769 ( .A(n768), .ZN(n882) );
  AOI211_X1 U770 ( .C1(n1336gat), .C2(n1685gat_EXTRA), .A(n882), .B(
        n1603gat_EXTRA), .ZN(n422) );
  OR2_X1 U771 ( .A1(n1394gat), .A2(n803), .ZN(n695) );
  OAI22_X1 U772 ( .A1(n1748gat), .A2(n422), .B1(n1675gat), .B2(n695), .ZN(n424) );
  OAI22_X1 U773 ( .A1(n426), .A2(n425), .B1(n1858gat_EXTRA), .B2(n424), .ZN(
        n427) );
  INV_X1 U774 ( .A(n427), .ZN(n3141gat) );
  CLKBUF_X1 U775 ( .A(n3141gat), .Z(n3142gat) );
  NAND2_X1 U776 ( .A1(n579), .A2(n646), .ZN(n566) );
  NOR3_X1 U777 ( .A1(n722gat), .A2(n726gat), .A3(n566), .ZN(n390) );
  CLKBUF_X1 U778 ( .A(n390), .Z(n1625gat_EXTRA) );
  NOR3_X1 U779 ( .A1(n726gat), .A2(n581), .A3(n566), .ZN(n392) );
  CLKBUF_X1 U780 ( .A(n392), .Z(n1626gat_EXTRA) );
  INV_X1 U781 ( .A(n2135gat), .ZN(n436) );
  NOR3_X1 U782 ( .A1(n2190gat), .A2(n2262gat), .A3(n436), .ZN(n449) );
  NOR2_X1 U783 ( .A1(n2190gat), .A2(n2262gat), .ZN(n435) );
  NOR2_X1 U784 ( .A1(n2135gat), .A2(n435), .ZN(n450) );
  INV_X1 U785 ( .A(n1135gat), .ZN(n508) );
  OR3_X1 U786 ( .A1(n449), .A2(n450), .A3(n508), .ZN(n3113gat) );
  NOR2_X1 U787 ( .A1(n2454gat), .A2(n271gat), .ZN(n1606gat_EXTRA) );
  INV_X1 U788 ( .A(n428), .ZN(n497) );
  NOR2_X1 U789 ( .A1(n2143gat), .A2(n780), .ZN(n488) );
  AND4_X1 U790 ( .A1(n1850gat), .A2(n497), .A3(n488), .A4(n1858gat_EXTRA), 
        .ZN(n1636gat) );
  NAND2_X1 U791 ( .A1(n3086gat), .A2(n3085gat), .ZN(n794) );
  INV_X1 U792 ( .A(n794), .ZN(n420) );
  AND3_X1 U793 ( .A1(n1775gat), .A2(n2514gat), .A3(n1771gat), .ZN(n1480) );
  INV_X1 U794 ( .A(n2630gat), .ZN(n448) );
  INV_X1 U795 ( .A(n2543gat), .ZN(n806) );
  INV_X1 U796 ( .A(n2622gat), .ZN(n442) );
  INV_X1 U797 ( .A(n2626gat), .ZN(n439) );
  NAND2_X1 U798 ( .A1(n439), .A2(n2490gat), .ZN(n877) );
  NOR4_X1 U799 ( .A1(n448), .A2(n806), .A3(n442), .A4(n877), .ZN(n1226) );
  INV_X1 U800 ( .A(n2203gat), .ZN(n713) );
  INV_X1 U801 ( .A(n2399gat), .ZN(n754) );
  NOR3_X1 U802 ( .A1(n2207gat), .A2(n713), .A3(n754), .ZN(n458) );
  INV_X1 U803 ( .A(n2343gat), .ZN(n710) );
  INV_X1 U804 ( .A(n2562gat), .ZN(n709) );
  NOR2_X1 U805 ( .A1(n710), .A2(n709), .ZN(n724) );
  AND3_X1 U806 ( .A1(n458), .A2(n724), .A3(n1226), .ZN(n1391gat) );
  XNOR2_X1 U807 ( .A(n2495gat), .B(n2270gat), .ZN(n429) );
  XNOR2_X1 U808 ( .A(n2339gat), .B(n429), .ZN(n430) );
  XOR2_X1 U809 ( .A(n2390gat), .B(n430), .Z(n1132) );
  INV_X1 U810 ( .A(n1132), .ZN(n2646gat_EXTRA) );
  NAND3_X1 U811 ( .A1(n2407gat), .A2(n848), .A3(n847), .ZN(n431) );
  NOR2_X1 U812 ( .A1(n432), .A2(n431), .ZN(n1638) );
  NOR4_X1 U813 ( .A1(n841), .A2(n589), .A3(n834), .A4(n588), .ZN(
        n1712gat_EXTRA) );
  AND2_X1 U814 ( .A1(n1638), .A2(n1712gat_EXTRA), .ZN(n1567gat) );
  INV_X1 U815 ( .A(n2262gat), .ZN(n433) );
  NAND2_X1 U816 ( .A1(n433), .A2(n2190gat), .ZN(n583) );
  INV_X1 U817 ( .A(n583), .ZN(n437) );
  AND2_X1 U818 ( .A1(n436), .A2(n435), .ZN(n1619) );
  INV_X1 U819 ( .A(n778), .ZN(n444) );
  INV_X1 U820 ( .A(n877), .ZN(n447) );
  NAND2_X1 U821 ( .A1(n447), .A2(n442), .ZN(n805) );
  NOR2_X1 U822 ( .A1(n2490gat), .A2(n439), .ZN(n879) );
  NAND2_X1 U823 ( .A1(n879), .A2(n442), .ZN(n807) );
  AND2_X1 U824 ( .A1(n805), .A2(n807), .ZN(n1434) );
  OR3_X1 U825 ( .A1(n447), .A2(n879), .A3(n442), .ZN(n1435) );
  AOI22_X1 U826 ( .A1(n2630gat), .A2(n806), .B1(n2543gat), .B2(n448), .ZN(n451) );
  XOR2_X1 U827 ( .A(n2634gat), .B(n451), .Z(n456) );
  AOI21_X1 U828 ( .B1(n1434), .B2(n1435), .A(n456), .ZN(n1450) );
  AND2_X1 U829 ( .A1(n583), .A2(n2266gat), .ZN(n453) );
  NOR2_X1 U830 ( .A1(n2347gat), .A2(n848), .ZN(n529) );
  NOR2_X1 U831 ( .A1(n630), .A2(n2347gat), .ZN(n530) );
  INV_X1 U832 ( .A(n1072gat), .ZN(n501) );
  OR4_X1 U833 ( .A1(n528), .A2(n529), .A3(n530), .A4(n501), .ZN(n3109gat) );
  AND2_X1 U834 ( .A1(n503), .A2(n502), .ZN(n504) );
  AND2_X1 U835 ( .A1(n504), .A2(n1858gat_EXTRA), .ZN(n505) );
  NOR3_X1 U836 ( .A1(n1858gat_EXTRA), .A2(n455), .A3(n452), .ZN(n510) );
  NOR2_X1 U837 ( .A1(n505), .A2(n510), .ZN(n511) );
  AND2_X1 U838 ( .A1(n446), .A2(n511), .ZN(n3047gat) );
  AND2_X1 U839 ( .A1(n3047gat), .A2(n835), .ZN(n3049gat) );
  INV_X1 U840 ( .A(n456), .ZN(n1447) );
  NAND2_X1 U841 ( .A1(n1850gat), .A2(n486), .ZN(n852) );
  INV_X1 U842 ( .A(n852), .ZN(n471) );
  XOR2_X1 U843 ( .A(n709), .B(n2640gat), .Z(n457) );
  NAND2_X1 U844 ( .A1(n2343gat), .A2(n457), .ZN(n1462) );
  OR2_X1 U845 ( .A1(n2343gat), .A2(n457), .ZN(n1461) );
  NAND2_X1 U846 ( .A1(n2203gat), .A2(n2207gat), .ZN(n744) );
  OAI21_X1 U847 ( .B1(n2203gat), .B2(n2207gat), .A(n744), .ZN(n459) );
  NAND2_X1 U848 ( .A1(n2207gat), .A2(n713), .ZN(n731) );
  NOR2_X1 U849 ( .A1(n754), .A2(n731), .ZN(n747) );
  AOI211_X1 U850 ( .C1(n754), .C2(n459), .A(n747), .B(n458), .ZN(n1474) );
  INV_X1 U851 ( .A(n1474), .ZN(n878) );
  AOI21_X1 U852 ( .B1(n1462), .B2(n1461), .A(n878), .ZN(n1477) );
  AOI22_X1 U853 ( .A1(n846gat), .A2(n919gat), .B1(n463), .B2(n462), .ZN(n465)
         );
  XOR2_X1 U854 ( .A(n465), .B(n1026gat), .Z(n467) );
  XNOR2_X1 U855 ( .A(n279gat), .B(n165gat), .ZN(n466) );
  XNOR2_X1 U856 ( .A(n467), .B(n466), .ZN(n472) );
  AOI21_X1 U857 ( .B1(n402gat), .B2(n469), .A(n468), .ZN(n470) );
  XOR2_X1 U858 ( .A(n472), .B(n470), .Z(n474) );
  XOR2_X1 U859 ( .A(n283gat), .B(n275gat), .Z(n473) );
  XOR2_X1 U860 ( .A(n474), .B(n473), .Z(n938) );
  INV_X1 U861 ( .A(n938), .ZN(n55gat_EXTRA) );
  INV_X1 U862 ( .A(n1294gat), .ZN(n720) );
  INV_X1 U863 ( .A(n1148gat), .ZN(n478) );
  AOI22_X1 U864 ( .A1(n1148gat), .A2(n1294gat), .B1(n720), .B2(n478), .ZN(n484) );
  INV_X1 U865 ( .A(n1298gat), .ZN(n730) );
  INV_X1 U866 ( .A(n957gat), .ZN(n479) );
  AOI22_X1 U867 ( .A1(n957gat), .A2(n1298gat), .B1(n730), .B2(n479), .ZN(n480)
         );
  XNOR2_X1 U868 ( .A(n865gat), .B(n480), .ZN(n483) );
  XNOR2_X1 U869 ( .A(n484), .B(n483), .ZN(n490) );
  XOR2_X1 U870 ( .A(n1241gat), .B(n1068gat), .Z(n880) );
  XNOR2_X1 U871 ( .A(n861gat), .B(n1080gat), .ZN(n485) );
  XNOR2_X1 U872 ( .A(n880), .B(n485), .ZN(n489) );
  XOR2_X1 U873 ( .A(n490), .B(n489), .Z(n933gat_EXTRA) );
  INV_X1 U874 ( .A(n933gat_EXTRA), .ZN(n885) );
  INV_X1 U875 ( .A(n824gat), .ZN(n719) );
  INV_X1 U876 ( .A(n699gat), .ZN(n680) );
  AOI22_X1 U877 ( .A1(n699gat), .A2(n824gat), .B1(n719), .B2(n680), .ZN(n495)
         );
  INV_X1 U878 ( .A(n883gat), .ZN(n729) );
  INV_X1 U879 ( .A(n816gat), .ZN(n491) );
  AOI22_X1 U880 ( .A1(n816gat), .A2(n883gat), .B1(n729), .B2(n491), .ZN(n492)
         );
  XNOR2_X1 U881 ( .A(n584gat), .B(n492), .ZN(n493) );
  XNOR2_X1 U882 ( .A(n495), .B(n493), .ZN(n500) );
  XOR2_X1 U883 ( .A(n820gat), .B(n680gat), .Z(n883) );
  XNOR2_X1 U884 ( .A(n580gat), .B(n684gat), .ZN(n496) );
  XNOR2_X1 U885 ( .A(n883), .B(n496), .ZN(n499) );
  XOR2_X1 U886 ( .A(n500), .B(n499), .Z(n567gat_EXTRA) );
  INV_X1 U887 ( .A(n567gat_EXTRA), .ZN(n991) );
  INV_X1 U888 ( .A(n3087gat), .ZN(n557) );
  NAND2_X1 U889 ( .A1(n557), .A2(n3088gat), .ZN(n793) );
  INV_X1 U890 ( .A(n793), .ZN(n660) );
  NOR2_X1 U891 ( .A1(n3083gat), .A2(n3084gat), .ZN(n539) );
  AND2_X1 U892 ( .A1(n3093gat), .A2(n539), .ZN(n551) );
  NAND2_X1 U893 ( .A1(n1871gat), .A2(n551), .ZN(n545) );
  NOR3_X1 U894 ( .A1(n3085gat), .A2(n570), .A3(n545), .ZN(n661) );
  AND2_X1 U895 ( .A1(n660), .A2(n661), .ZN(n662) );
  XOR2_X1 U896 ( .A(n1035gat), .B(n1121gat), .Z(n507) );
  XOR2_X1 U897 ( .A(n501), .B(n1282gat), .Z(n506) );
  XNOR2_X1 U898 ( .A(n507), .B(n506), .ZN(n514) );
  XOR2_X1 U899 ( .A(n931gat), .B(n1045gat), .Z(n512) );
  XOR2_X1 U900 ( .A(n1226gat), .B(n508), .Z(n509) );
  XNOR2_X1 U901 ( .A(n512), .B(n509), .ZN(n513) );
  XNOR2_X1 U902 ( .A(n514), .B(n513), .ZN(n3116gat) );
  XNOR2_X1 U903 ( .A(n1197gat), .B(n3116gat), .ZN(n2971gat_EXTRA) );
  INV_X1 U904 ( .A(n2971gat_EXTRA), .ZN(n1108) );
  XOR2_X1 U905 ( .A(n366gat), .B(n318gat), .Z(n517) );
  XNOR2_X1 U906 ( .A(n322gat), .B(n659gat), .ZN(n515) );
  XNOR2_X1 U907 ( .A(n517), .B(n515), .ZN(n521) );
  INV_X1 U908 ( .A(n561gat), .ZN(n685) );
  XNOR2_X1 U909 ( .A(n314gat), .B(n685), .ZN(n519) );
  XNOR2_X1 U910 ( .A(n777gat), .B(n553gat), .ZN(n518) );
  XNOR2_X1 U911 ( .A(n519), .B(n518), .ZN(n520) );
  XOR2_X1 U912 ( .A(n521), .B(n520), .Z(n706) );
  XOR2_X1 U913 ( .A(n706), .B(n667gat), .Z(n3010gat_EXTRA) );
  INV_X1 U914 ( .A(n3010gat_EXTRA), .ZN(n1092) );
  INV_X1 U915 ( .A(n341gat), .ZN(n523) );
  INV_X1 U916 ( .A(n337gat), .ZN(n522) );
  AOI22_X1 U917 ( .A1(n337gat), .A2(n523), .B1(n341gat), .B2(n522), .ZN(n534)
         );
  AOI22_X1 U918 ( .A1(n722gat), .A2(n726gat), .B1(n688), .B2(n581), .ZN(n532)
         );
  AOI22_X1 U919 ( .A1(n394gat), .A2(n703gat), .B1(n646), .B2(n827), .ZN(n524)
         );
  XOR2_X1 U920 ( .A(n524), .B(n271gat), .Z(n527) );
  XNOR2_X1 U921 ( .A(n160gat), .B(n842gat), .ZN(n526) );
  XNOR2_X1 U922 ( .A(n527), .B(n526), .ZN(n531) );
  XNOR2_X1 U923 ( .A(n532), .B(n531), .ZN(n533) );
  XOR2_X1 U924 ( .A(n534), .B(n533), .Z(n43gat_EXTRA) );
  INV_X1 U925 ( .A(n43gat_EXTRA), .ZN(n832) );
  NOR2_X1 U926 ( .A1(n786), .A2(n557), .ZN(n722) );
  INV_X1 U927 ( .A(n3085gat), .ZN(n536) );
  AND3_X1 U928 ( .A1(n539), .A2(n1871gat), .A3(n536), .ZN(n535) );
  NAND2_X1 U929 ( .A1(n722), .A2(n535), .ZN(n626) );
  NOR2_X1 U930 ( .A1(n3088gat), .A2(n626), .ZN(n795) );
  NAND2_X1 U931 ( .A1(n535), .A2(n728), .ZN(n547) );
  AND2_X1 U932 ( .A1(n795), .A2(n547), .ZN(n665) );
  AND2_X1 U933 ( .A1(n3094gat), .A2(n665), .ZN(n666) );
  NOR2_X1 U934 ( .A1(n3088gat), .A2(n557), .ZN(n416) );
  NOR2_X1 U935 ( .A1(n416), .A2(n660), .ZN(n538) );
  NAND2_X1 U936 ( .A1(n570), .A2(n536), .ZN(n549) );
  NAND2_X1 U937 ( .A1(n549), .A2(n794), .ZN(n537) );
  XNOR2_X1 U938 ( .A(n538), .B(n537), .ZN(n541) );
  AOI21_X1 U939 ( .B1(n3083gat), .B2(n3084gat), .A(n539), .ZN(n540) );
  XOR2_X1 U940 ( .A(n541), .B(n540), .Z(n542) );
  XOR2_X1 U941 ( .A(n3089gat), .B(n542), .Z(n748gat_EXTRA) );
  INV_X1 U942 ( .A(n748gat_EXTRA), .ZN(n779) );
  NOR2_X1 U943 ( .A1(n722), .A2(n728), .ZN(n750) );
  INV_X1 U944 ( .A(n749), .ZN(n668) );
  NOR2_X1 U945 ( .A1(n750), .A2(n668), .ZN(n751) );
  NOR3_X1 U946 ( .A1(n1496gat), .A2(n2091gat), .A3(n1858gat_EXTRA), .ZN(n464)
         );
  NOR2_X1 U947 ( .A1(n2343gat), .A2(n709), .ZN(n1257) );
  NOR3_X1 U948 ( .A1(n2203gat), .A2(n2207gat), .A3(n754), .ZN(n1256) );
  NAND2_X1 U949 ( .A1(n1257), .A2(n1256), .ZN(n809) );
  INV_X1 U950 ( .A(n809), .ZN(n1258) );
  INV_X1 U951 ( .A(n544), .ZN(n440) );
  INV_X1 U952 ( .A(n545), .ZN(n419) );
  INV_X1 U953 ( .A(n3094gat), .ZN(n546) );
  NOR2_X1 U954 ( .A1(n547), .A2(n546), .ZN(n796) );
  NAND2_X1 U955 ( .A1(n3088gat), .A2(n796), .ZN(n582) );
  INV_X1 U956 ( .A(n582), .ZN(n548) );
  NAND2_X1 U957 ( .A1(n626), .A2(n548), .ZN(n791) );
  INV_X1 U958 ( .A(n791), .ZN(n554) );
  NOR2_X1 U959 ( .A1(n2562gat), .A2(n710), .ZN(n742) );
  AND2_X1 U960 ( .A1(n742), .A2(n1256), .ZN(n1230) );
  INV_X1 U961 ( .A(n3088gat), .ZN(n670) );
  NAND2_X1 U962 ( .A1(n3088gat), .A2(n3087gat), .ZN(n667) );
  OAI211_X1 U963 ( .C1(n794), .C2(n667), .A(n551), .B(n549), .ZN(n669) );
  NOR2_X1 U964 ( .A1(n670), .A2(n669), .ZN(n1150) );
  NOR2_X1 U965 ( .A1(n751), .A2(n1150), .ZN(n1151) );
  INV_X1 U966 ( .A(n1858gat_EXTRA), .ZN(n362) );
  INV_X1 U967 ( .A(n464), .ZN(n553) );
  MUX2_X1 U968 ( .A(n477), .B(n460), .S(n1740gat), .Z(n552) );
  AOI22_X1 U969 ( .A1(n1633), .A2(n553), .B1(n552), .B2(n1858gat_EXTRA), .ZN(
        n481) );
  INV_X1 U970 ( .A(n481), .ZN(n555) );
  AOI21_X1 U971 ( .B1(n464), .B2(n405), .A(n555), .ZN(n482) );
  NAND2_X1 U972 ( .A1(n482), .A2(n446), .ZN(n585) );
  INV_X1 U973 ( .A(n585), .ZN(n3040gat) );
  AOI21_X1 U974 ( .B1(n3085gat), .B2(n3093gat), .A(n556), .ZN(n657) );
  INV_X1 U975 ( .A(n3093gat), .ZN(n782) );
  OAI22_X1 U976 ( .A1(n786), .A2(n670), .B1(n782), .B2(n557), .ZN(n655) );
  INV_X1 U977 ( .A(n655), .ZN(n565) );
  AOI21_X1 U978 ( .B1(n3086gat), .B2(n3093gat), .A(n722), .ZN(n563) );
  OR2_X1 U979 ( .A1(n565), .A2(n563), .ZN(n562) );
  NOR2_X1 U980 ( .A1(n657), .A2(n562), .ZN(n689) );
  INV_X1 U981 ( .A(n689), .ZN(n677) );
  NOR2_X1 U982 ( .A1(n563), .A2(n655), .ZN(n656) );
  INV_X1 U983 ( .A(n657), .ZN(n564) );
  NAND2_X1 U984 ( .A1(n656), .A2(n564), .ZN(n693) );
  OAI22_X1 U985 ( .A1(n677), .A2(n722gat), .B1(n693), .B2(n366gat), .ZN(n560)
         );
  INV_X1 U986 ( .A(n560), .ZN(n1099) );
  NOR2_X2 U987 ( .A1(n564), .A2(n562), .ZN(n690) );
  NAND2_X1 U988 ( .A1(n564), .A2(n563), .ZN(n652) );
  OR2_X1 U989 ( .A1(n652), .A2(n565), .ZN(n691) );
  INV_X1 U990 ( .A(n691), .ZN(n687) );
  AOI22_X1 U991 ( .A1(n690), .A2(n730), .B1(n687), .B2(n729), .ZN(n1098) );
  AND2_X1 U992 ( .A1(n1099), .A2(n1098), .ZN(n1100) );
  NOR2_X1 U993 ( .A1(n688), .A2(n566), .ZN(n1945gat) );
  AND2_X1 U994 ( .A1(n581), .A2(n1945gat), .ZN(n372) );
  INV_X1 U995 ( .A(n568), .ZN(n1717) );
  OAI22_X1 U996 ( .A1(n691), .A2(n680gat), .B1(n693), .B2(n659gat), .ZN(n569)
         );
  INV_X1 U997 ( .A(n569), .ZN(n743) );
  NOR2_X1 U998 ( .A1(n3091gat), .A2(n3092gat), .ZN(n423) );
  NAND3_X1 U999 ( .A1(n419), .A2(n3085gat), .A3(n570), .ZN(n601) );
  NOR2_X1 U1000 ( .A1(n601), .A2(n667), .ZN(n558) );
  INV_X1 U1001 ( .A(n558), .ZN(n571) );
  NOR2_X1 U1002 ( .A1(n423), .A2(n571), .ZN(n559) );
  INV_X1 U1003 ( .A(n1151), .ZN(n577) );
  INV_X2 U1004 ( .A(n690), .ZN(n692) );
  OAI222_X1 U1005 ( .A1(n692), .A2(n919gat), .B1(n691), .B2(n626gat), .C1(n693), .C2(n1226gat), .ZN(n573) );
  AND2_X1 U1006 ( .A1(n577), .A2(n573), .ZN(n1221) );
  OAI222_X1 U1007 ( .A1(n692), .A2(n275gat), .B1(n691), .B2(n614gat), .C1(n693), .C2(n931gat), .ZN(n575) );
  AND2_X1 U1008 ( .A1(n577), .A2(n575), .ZN(n1189) );
  OAI222_X1 U1009 ( .A1(n692), .A2(n283gat), .B1(n691), .B2(n834gat), .C1(n693), .C2(n1035gat), .ZN(n576) );
  AND2_X1 U1010 ( .A1(n577), .A2(n576), .ZN(n1165) );
  NAND2_X1 U1011 ( .A1(n722gat), .A2(n1945gat), .ZN(n856) );
  INV_X1 U1012 ( .A(n856), .ZN(n374) );
  INV_X1 U1013 ( .A(n156gat), .ZN(n600) );
  NAND2_X1 U1014 ( .A1(n600), .A2(n372), .ZN(n598) );
  INV_X1 U1015 ( .A(n598), .ZN(n597) );
  INV_X1 U1016 ( .A(n152gat), .ZN(n615) );
  NAND2_X1 U1017 ( .A1(n597), .A2(n615), .ZN(n618) );
  INV_X1 U1018 ( .A(n148gat), .ZN(n619) );
  AND2_X1 U1019 ( .A1(n618), .A2(n619), .ZN(n650) );
  INV_X1 U1020 ( .A(n388gat), .ZN(n855) );
  INV_X1 U1021 ( .A(n327gat), .ZN(n578) );
  AOI221_X1 U1022 ( .B1(n331gat), .B2(n855), .C1(n578), .C2(n855), .A(n856), 
        .ZN(n609) );
  AND2_X1 U1023 ( .A1(n609), .A2(n463gat), .ZN(n604) );
  OAI211_X1 U1024 ( .C1(n581), .C2(n688), .A(n703gat), .B(n579), .ZN(n385) );
  NAND2_X1 U1025 ( .A1(n739), .A2(n385), .ZN(n1836gat) );
  NOR2_X1 U1026 ( .A1(n626), .A2(n582), .ZN(n434) );
  NOR2_X1 U1027 ( .A1(n2266gat), .A2(n583), .ZN(n454) );
  NOR3_X1 U1028 ( .A1(n2061gat), .A2(n2143gat), .A3(n839), .ZN(n584) );
  NOR2_X1 U1029 ( .A1(n1850gat), .A2(n584), .ZN(n461) );
  NOR2_X1 U1030 ( .A1(n2143gat), .A2(n781), .ZN(n487) );
  AOI21_X1 U1031 ( .B1(n1899gat), .B2(n2139gat), .A(n585), .ZN(n3044gat) );
  NAND2_X1 U1032 ( .A1(n2450gat), .A2(n2446gat), .ZN(n3147gat) );
  INV_X1 U1033 ( .A(n3100gat), .ZN(n586) );
  NAND2_X1 U1034 ( .A1(n586), .A2(n3147gat), .ZN(n830) );
  NAND2_X1 U1035 ( .A1(n2117gat), .A2(n830), .ZN(n587) );
  NOR2_X1 U1036 ( .A1(n2125gat), .A2(n587), .ZN(n3052gat) );
  AOI21_X1 U1037 ( .B1(n589), .B2(n588), .A(n1899gat), .ZN(n590) );
  XNOR2_X1 U1038 ( .A(n590), .B(n1975gat), .ZN(n543) );
  AOI221_X1 U1039 ( .B1(n2403gat), .B2(n594), .C1(n847), .C2(n594), .A(
        n2440gat), .ZN(n595) );
  XNOR2_X1 U1040 ( .A(n2644gat), .B(n595), .ZN(n550) );
  NOR2_X1 U1041 ( .A1(n554), .A2(n559), .ZN(n622) );
  INV_X1 U1042 ( .A(n3067gat), .ZN(n799) );
  NOR2_X1 U1043 ( .A1(n622), .A2(n799), .ZN(n561) );
  OAI21_X1 U1044 ( .B1(n597), .B2(n615), .A(n618), .ZN(n567) );
  OAI21_X1 U1045 ( .B1(n372), .B2(n600), .A(n598), .ZN(n572) );
  INV_X1 U1046 ( .A(n3068gat), .ZN(n817) );
  NOR2_X1 U1047 ( .A1(n622), .A2(n817), .ZN(n574) );
  NOR2_X1 U1048 ( .A1(n423), .A2(n601), .ZN(n623) );
  NAND2_X1 U1049 ( .A1(n416), .A2(n623), .ZN(n792) );
  INV_X1 U1050 ( .A(n792), .ZN(n606) );
  NOR2_X1 U1051 ( .A1(n606), .A2(n554), .ZN(n580) );
  INV_X1 U1052 ( .A(n3080gat), .ZN(n816) );
  NAND2_X1 U1053 ( .A1(n374), .A2(n855), .ZN(n602) );
  NOR3_X1 U1054 ( .A1(n331gat), .A2(n388gat), .A3(n856), .ZN(n611) );
  AOI21_X1 U1055 ( .B1(n331gat), .B2(n602), .A(n611), .ZN(n605) );
  AOI22_X1 U1056 ( .A1(n3071gat), .A2(n606), .B1(n580), .B2(n605), .ZN(n608)
         );
  OAI21_X1 U1057 ( .B1(n816), .B2(n791), .A(n608), .ZN(n3057gat) );
  INV_X1 U1058 ( .A(n3081gat), .ZN(n783) );
  NOR2_X1 U1059 ( .A1(n783), .A2(n791), .ZN(n591) );
  NOR2_X1 U1060 ( .A1(n374), .A2(n388gat), .ZN(n592) );
  INV_X1 U1061 ( .A(n3072gat), .ZN(n801) );
  NOR2_X1 U1062 ( .A1(n801), .A2(n792), .ZN(n596) );
  INV_X1 U1063 ( .A(n3082gat), .ZN(n812) );
  NOR2_X1 U1064 ( .A1(n812), .A2(n791), .ZN(n599) );
  NOR2_X1 U1065 ( .A1(n609), .A2(n463gat), .ZN(n603) );
  INV_X1 U1066 ( .A(n3073gat), .ZN(n814) );
  NOR2_X1 U1067 ( .A1(n814), .A2(n792), .ZN(n607) );
  INV_X1 U1068 ( .A(n3079gat), .ZN(n784) );
  NOR2_X1 U1069 ( .A1(n784), .A2(n791), .ZN(n610) );
  AND2_X1 U1070 ( .A1(n611), .A2(n327gat), .ZN(n613) );
  NOR2_X1 U1071 ( .A1(n611), .A2(n327gat), .ZN(n614) );
  INV_X1 U1072 ( .A(n3070gat), .ZN(n802) );
  NOR2_X1 U1073 ( .A1(n802), .A2(n792), .ZN(n617) );
  INV_X1 U1074 ( .A(n3078gat), .ZN(n785) );
  NOR2_X1 U1075 ( .A1(n785), .A2(n791), .ZN(n620) );
  NOR2_X1 U1076 ( .A1(n611), .A2(n384gat), .ZN(n624) );
  AOI21_X1 U1077 ( .B1(n327gat), .B2(n384gat), .A(n614), .ZN(n612) );
  OAI21_X1 U1078 ( .B1(n327gat), .B2(n384gat), .A(n612), .ZN(n625) );
  INV_X1 U1079 ( .A(n3069gat), .ZN(n810) );
  NOR2_X1 U1080 ( .A1(n810), .A2(n792), .ZN(n628) );
  OAI221_X1 U1081 ( .B1(n156gat), .B2(n256gat), .C1(n156gat), .C2(n615), .A(
        n372), .ZN(n616) );
  XNOR2_X1 U1082 ( .A(n470gat), .B(n616), .ZN(n636) );
  NOR2_X1 U1083 ( .A1(n622), .A2(n814), .ZN(n638) );
  XNOR2_X1 U1084 ( .A(n256gat), .B(n618), .ZN(n643) );
  INV_X1 U1085 ( .A(n3066gat), .ZN(n800) );
  NOR2_X1 U1086 ( .A1(n622), .A2(n800), .ZN(n645) );
  NOR2_X1 U1087 ( .A1(n256gat), .A2(n618), .ZN(n621) );
  AOI22_X1 U1088 ( .A1(n148gat), .A2(n621), .B1(n256gat), .B2(n619), .ZN(n651)
         );
  INV_X1 U1089 ( .A(n3065gat), .ZN(n798) );
  NOR2_X1 U1090 ( .A1(n622), .A2(n798), .ZN(n654) );
  NOR4_X1 U1091 ( .A1(n2139gat), .A2(n834), .A3(n841), .A4(n838), .ZN(n1632gat) );
  AND2_X1 U1092 ( .A1(n623), .A2(n660), .ZN(n671) );
  AND3_X1 U1093 ( .A1(n670), .A2(n626), .A3(n796), .ZN(n674) );
  INV_X1 U1094 ( .A(n1871gat), .ZN(n704) );
  AOI21_X1 U1095 ( .B1(n1775gat), .B2(n1771gat), .A(n704), .ZN(n3107gat) );
  NOR2_X1 U1096 ( .A1(n2347gat), .A2(n629), .ZN(n627) );
  XOR2_X1 U1097 ( .A(n2407gat), .B(n627), .Z(n525) );
  NAND2_X1 U1098 ( .A1(n1035gat), .A2(n525), .ZN(n3108gat) );
  OAI21_X1 U1099 ( .B1(n630), .B2(n848), .A(n629), .ZN(n516) );
  NAND2_X1 U1100 ( .A1(n1121gat), .A2(n516), .ZN(n3110gat) );
  NAND2_X1 U1101 ( .A1(n631), .A2(n931gat), .ZN(n3111gat) );
  NAND3_X1 U1102 ( .A1(n1282gat), .A2(n2190gat), .A3(n2262gat), .ZN(n3114gat)
         );
  NOR2_X1 U1103 ( .A1(n271gat), .A2(n677), .ZN(n732) );
  NOR2_X1 U1104 ( .A1(n1068gat), .A2(n692), .ZN(n735) );
  NOR2_X1 U1105 ( .A1(n584gat), .A2(n691), .ZN(n887) );
  NOR2_X1 U1106 ( .A1(n865gat), .A2(n692), .ZN(n888) );
  OAI22_X1 U1107 ( .A1(n677), .A2(n341gat), .B1(n693), .B2(n322gat), .ZN(n632)
         );
  NOR3_X1 U1108 ( .A1(n888), .A2(n887), .A3(n632), .ZN(n893) );
  INV_X1 U1109 ( .A(n632), .ZN(n892) );
  XOR2_X1 U1110 ( .A(n491gat), .B(n618gat), .Z(n634) );
  XNOR2_X1 U1111 ( .A(n626gat), .B(n622gat), .ZN(n633) );
  XNOR2_X1 U1112 ( .A(n634), .B(n633), .ZN(n635) );
  XOR2_X1 U1113 ( .A(n635), .B(n830gat), .Z(n639) );
  XNOR2_X1 U1114 ( .A(n838gat), .B(n834gat), .ZN(n637) );
  XNOR2_X1 U1115 ( .A(n639), .B(n637), .ZN(n641) );
  XNOR2_X1 U1116 ( .A(n707gat), .B(n614gat), .ZN(n640) );
  XNOR2_X1 U1117 ( .A(n641), .B(n640), .ZN(n504gat_EXTRA) );
  NOR2_X1 U1118 ( .A1(n318gat), .A2(n693), .ZN(n644) );
  OAI22_X1 U1119 ( .A1(n684gat), .A2(n691), .B1(n1080gat), .B2(n692), .ZN(n642) );
  AOI211_X1 U1120 ( .C1(n689), .C2(n646), .A(n644), .B(n642), .ZN(n684) );
  BUF_X1 U1121 ( .A(n684), .Z(n648) );
  INV_X1 U1122 ( .A(n751), .ZN(n647) );
  OAI21_X1 U1123 ( .B1(n648), .B2(n647), .A(n504gat_EXTRA), .ZN(n3122gat) );
  NAND2_X1 U1124 ( .A1(n657), .A2(n656), .ZN(n649) );
  NOR2_X1 U1125 ( .A1(n673gat), .A2(n649), .ZN(n1103) );
  NOR2_X1 U1126 ( .A1(n655), .A2(n653), .ZN(n1112) );
  AND3_X1 U1127 ( .A1(n673gat), .A2(n657), .A3(n656), .ZN(n1110) );
  NOR2_X1 U1128 ( .A1(n1110), .A2(n1112), .ZN(n1113) );
  OAI22_X1 U1129 ( .A1(n1241gat), .A2(n692), .B1(n842gat), .B2(n677), .ZN(n659) );
  OAI22_X1 U1130 ( .A1(n706), .A2(n693), .B1(n820gat), .B2(n691), .ZN(n658) );
  NOR2_X1 U1131 ( .A1(n659), .A2(n658), .ZN(n1120) );
  INV_X1 U1132 ( .A(n693), .ZN(n686) );
  OAI22_X1 U1133 ( .A1(n830gat), .A2(n691), .B1(n1026gat), .B2(n692), .ZN(n663) );
  AOI21_X1 U1134 ( .B1(n686), .B2(n3116gat), .A(n663), .ZN(n664) );
  NOR2_X1 U1135 ( .A1(n1151), .A2(n664), .ZN(n1157) );
  NOR2_X1 U1136 ( .A1(n838gat), .A2(n691), .ZN(n1167) );
  NOR2_X1 U1137 ( .A1(n279gat), .A2(n692), .ZN(n1168) );
  NOR2_X1 U1138 ( .A1(n1072gat), .A2(n693), .ZN(n1170) );
  NOR2_X1 U1139 ( .A1(n668), .A2(n667), .ZN(n673) );
  INV_X1 U1140 ( .A(n669), .ZN(n672) );
  AOI22_X1 U1141 ( .A1(n673), .A2(n728), .B1(n672), .B2(n670), .ZN(n1148) );
  OAI22_X1 U1142 ( .A1(n777gat), .A2(n693), .B1(n337gat), .B2(n677), .ZN(n676)
         );
  OAI22_X1 U1143 ( .A1(n580gat), .A2(n691), .B1(n861gat), .B2(n692), .ZN(n675)
         );
  NOR2_X1 U1144 ( .A1(n676), .A2(n675), .ZN(n787) );
  NOR2_X1 U1145 ( .A1(n1148), .A2(n787), .ZN(n1173) );
  NOR2_X1 U1146 ( .A1(n707gat), .A2(n691), .ZN(n1175) );
  NOR2_X1 U1147 ( .A1(n165gat), .A2(n692), .ZN(n1176) );
  NOR2_X1 U1148 ( .A1(n1121gat), .A2(n693), .ZN(n1178) );
  OAI22_X1 U1149 ( .A1(n816gat), .A2(n691), .B1(n957gat), .B2(n692), .ZN(n679)
         );
  OAI22_X1 U1150 ( .A1(n553gat), .A2(n693), .B1(n160gat), .B2(n677), .ZN(n678)
         );
  NOR2_X1 U1151 ( .A1(n679), .A2(n678), .ZN(n840) );
  NOR2_X1 U1152 ( .A1(n1148), .A2(n840), .ZN(n1181) );
  NOR2_X1 U1153 ( .A1(n491gat), .A2(n691), .ZN(n1191) );
  NOR2_X1 U1154 ( .A1(n398gat), .A2(n692), .ZN(n1192) );
  NOR2_X1 U1155 ( .A1(n1045gat), .A2(n693), .ZN(n1194) );
  AOI22_X1 U1156 ( .A1(n687), .A2(n680), .B1(n689), .B2(n827), .ZN(n945) );
  OAI22_X1 U1157 ( .A1(n692), .A2(n1148gat), .B1(n693), .B2(n314gat), .ZN(n681) );
  INV_X1 U1158 ( .A(n681), .ZN(n944) );
  AOI21_X1 U1159 ( .B1(n945), .B2(n944), .A(n1148), .ZN(n1197) );
  OAI22_X1 U1160 ( .A1(n618gat), .A2(n691), .B1(n1135gat), .B2(n693), .ZN(n682) );
  AOI21_X1 U1161 ( .B1(n690), .B2(n683), .A(n682), .ZN(n1203) );
  NOR2_X1 U1162 ( .A1(n684), .A2(n1148), .ZN(n1205) );
  AOI22_X1 U1163 ( .A1(n687), .A2(n719), .B1(n686), .B2(n685), .ZN(n1051) );
  AOI22_X1 U1164 ( .A1(n690), .A2(n720), .B1(n689), .B2(n688), .ZN(n1050) );
  AOI21_X1 U1165 ( .B1(n1051), .B2(n1050), .A(n1148), .ZN(n1207) );
  NOR2_X1 U1166 ( .A1(n622gat), .A2(n691), .ZN(n1208) );
  NOR2_X1 U1167 ( .A1(n846gat), .A2(n692), .ZN(n1209) );
  NOR2_X1 U1168 ( .A1(n1282gat), .A2(n693), .ZN(n1211) );
  NOR2_X1 U1169 ( .A1(n1775gat), .A2(n704), .ZN(n1245) );
  NAND2_X1 U1170 ( .A1(n1825gat), .A2(n1821gat), .ZN(n1816gat_EXTRA) );
  INV_X1 U1171 ( .A(n1775gat), .ZN(n843) );
  NAND3_X1 U1172 ( .A1(n440), .A2(n3097gat), .A3(n843), .ZN(n694) );
  NOR2_X1 U1173 ( .A1(n1829gat), .A2(n1816gat_EXTRA), .ZN(n829) );
  AOI211_X1 U1174 ( .C1(n1825gat), .C2(n694), .A(n829), .B(n3098gat), .ZN(
        n1244) );
  NOR3_X1 U1175 ( .A1(n1525gat), .A2(n695), .A3(n1858gat_EXTRA), .ZN(n1249) );
  AOI21_X1 U1176 ( .B1(n1245), .B2(n1244), .A(n1249), .ZN(n1268) );
  NOR2_X1 U1177 ( .A1(n362), .A2(n1508gat), .ZN(n702) );
  NAND2_X1 U1178 ( .A1(n1394gat), .A2(n1603gat_EXTRA), .ZN(n697) );
  OAI22_X1 U1179 ( .A1(n1462gat), .A2(n697), .B1(n1258), .B2(n696), .ZN(n701)
         );
  NOR2_X1 U1180 ( .A1(n1596gat), .A2(n768), .ZN(n698) );
  MUX2_X1 U1181 ( .A(n698), .B(n1462gat), .S(n1858gat_EXTRA), .Z(n700) );
  INV_X1 U1182 ( .A(n1678gat), .ZN(n699) );
  AOI22_X1 U1183 ( .A1(n702), .A2(n701), .B1(n700), .B2(n699), .ZN(n1269) );
  NOR3_X1 U1184 ( .A1(n882), .A2(n1678gat), .A3(n1596gat), .ZN(n1234) );
  INV_X1 U1185 ( .A(n1596gat), .ZN(n703) );
  NOR3_X1 U1186 ( .A1(n1588gat), .A2(n703), .A3(n1858gat_EXTRA), .ZN(n1238) );
  AOI21_X1 U1187 ( .B1(n1234), .B2(n1235), .A(n1238), .ZN(n1271) );
  NOR3_X1 U1188 ( .A1(n2203gat), .A2(n754), .A3(n710), .ZN(n1228) );
  AOI221_X1 U1189 ( .B1(n1678gat), .B2(n362), .C1(n1508gat), .C2(
        n1858gat_EXTRA), .A(n1394gat), .ZN(n772) );
  NOR3_X1 U1190 ( .A1(n2592gat), .A2(n673gat), .A3(n704), .ZN(n771) );
  OAI21_X1 U1191 ( .B1(n706), .B2(n722gat), .A(n1228), .ZN(n705) );
  AOI211_X1 U1192 ( .C1(n706), .C2(n722gat), .A(n2207gat), .B(n705), .ZN(n718)
         );
  AOI221_X1 U1193 ( .B1(n2562gat), .B2(n659gat), .C1(n709), .C2(n777gat), .A(
        n710), .ZN(n708) );
  AOI221_X1 U1194 ( .B1(n2562gat), .B2(n553gat), .C1(n709), .C2(n322gat), .A(
        n2343gat), .ZN(n707) );
  NOR2_X1 U1195 ( .A1(n708), .A2(n707), .ZN(n716) );
  AOI221_X1 U1196 ( .B1(n2343gat), .B2(n314gat), .C1(n710), .C2(n561gat), .A(
        n709), .ZN(n712) );
  AOI221_X1 U1197 ( .B1(n2343gat), .B2(n318gat), .C1(n710), .C2(n366gat), .A(
        n2562gat), .ZN(n711) );
  NOR2_X1 U1198 ( .A1(n712), .A2(n711), .ZN(n715) );
  OR2_X1 U1199 ( .A1(n713), .A2(n2207gat), .ZN(n714) );
  AOI221_X1 U1200 ( .B1(n2399gat), .B2(n716), .C1(n754), .C2(n715), .A(n714), 
        .ZN(n717) );
  AOI21_X1 U1201 ( .B1(n2562gat), .B2(n718), .A(n717), .ZN(n769) );
  OAI221_X1 U1202 ( .B1(n759), .B2(n720), .C1(n1603gat_EXTRA), .C2(n719), .A(
        n747), .ZN(n727) );
  OAI22_X1 U1203 ( .A1(n957gat), .A2(n744), .B1(n165gat), .B2(n731), .ZN(n723)
         );
  OAI22_X1 U1204 ( .A1(n816gat), .A2(n744), .B1(n707gat), .B2(n731), .ZN(n721)
         );
  OAI221_X1 U1205 ( .B1(n759), .B2(n723), .C1(n1603gat_EXTRA), .C2(n721), .A(
        n754), .ZN(n726) );
  INV_X1 U1206 ( .A(n724), .ZN(n725) );
  AOI21_X1 U1207 ( .B1(n727), .B2(n726), .A(n725), .ZN(n766) );
  OAI21_X1 U1208 ( .B1(n882), .B2(n368), .A(n2399gat), .ZN(n738) );
  OAI221_X1 U1209 ( .B1(n759), .B2(n730), .C1(n1603gat_EXTRA), .C2(n729), .A(
        n747), .ZN(n737) );
  OAI22_X1 U1210 ( .A1(n865gat), .A2(n744), .B1(n275gat), .B2(n731), .ZN(n734)
         );
  OAI22_X1 U1211 ( .A1(n584gat), .A2(n744), .B1(n614gat), .B2(n731), .ZN(n733)
         );
  OAI221_X1 U1212 ( .B1(n759), .B2(n734), .C1(n1603gat_EXTRA), .C2(n733), .A(
        n754), .ZN(n736) );
  OAI211_X1 U1213 ( .C1(n738), .C2(n744), .A(n737), .B(n736), .ZN(n741) );
  NAND2_X1 U1214 ( .A1(n2084gat), .A2(n739), .ZN(n740) );
  AOI22_X1 U1215 ( .A1(n742), .A2(n741), .B1(n1364), .B2(n740), .ZN(n764) );
  INV_X1 U1216 ( .A(n744), .ZN(n757) );
  OAI221_X1 U1217 ( .B1(n759), .B2(n861gat), .C1(n1603gat_EXTRA), .C2(n580gat), 
        .A(n2399gat), .ZN(n746) );
  OAI221_X1 U1218 ( .B1(n759), .B2(n1080gat), .C1(n1603gat_EXTRA), .C2(n684gat), .A(n754), .ZN(n745) );
  AND3_X1 U1219 ( .A1(n757), .A2(n746), .A3(n745), .ZN(n753) );
  INV_X1 U1220 ( .A(n747), .ZN(n758) );
  AOI221_X1 U1221 ( .B1(n759), .B2(n838gat), .C1(n1603gat_EXTRA), .C2(n279gat), 
        .A(n758), .ZN(n752) );
  NOR2_X1 U1222 ( .A1(n2343gat), .A2(n2562gat), .ZN(n748) );
  OAI21_X1 U1223 ( .B1(n753), .B2(n752), .A(n748), .ZN(n763) );
  OAI221_X1 U1224 ( .B1(n759), .B2(n1068gat), .C1(n1603gat_EXTRA), .C2(n680gat), .A(n2399gat), .ZN(n756) );
  OAI221_X1 U1225 ( .B1(n759), .B2(n1148gat), .C1(n1603gat_EXTRA), .C2(n699gat), .A(n754), .ZN(n755) );
  AND3_X1 U1226 ( .A1(n757), .A2(n756), .A3(n755), .ZN(n761) );
  AOI221_X1 U1227 ( .B1(n834gat), .B2(n759), .C1(n283gat), .C2(n1603gat_EXTRA), 
        .A(n758), .ZN(n760) );
  OAI21_X1 U1228 ( .B1(n761), .B2(n760), .A(n1257), .ZN(n762) );
  NAND3_X1 U1229 ( .A1(n764), .A2(n763), .A3(n762), .ZN(n765) );
  OAI21_X1 U1230 ( .B1(n766), .B2(n765), .A(n1389gat), .ZN(n767) );
  OAI21_X1 U1231 ( .B1(n769), .B2(n768), .A(n767), .ZN(n770) );
  AOI211_X1 U1232 ( .C1(n772), .C2(n1603gat_EXTRA), .A(n771), .B(n770), .ZN(
        n1426) );
  NAND2_X1 U1233 ( .A1(n1434), .A2(n1435), .ZN(n774) );
  INV_X1 U1234 ( .A(n1450), .ZN(n773) );
  OAI21_X1 U1235 ( .B1(n1447), .B2(n774), .A(n773), .ZN(n2613gat_EXTRA) );
  NAND2_X1 U1236 ( .A1(n1462), .A2(n1461), .ZN(n776) );
  INV_X1 U1237 ( .A(n1477), .ZN(n775) );
  OAI21_X1 U1238 ( .B1(n1474), .B2(n776), .A(n775), .ZN(n2579gat_EXTRA) );
  NAND4_X1 U1239 ( .A1(n2169gat), .A2(n2110gat), .A3(n2033gat), .A4(n2176gat), 
        .ZN(n777) );
  AOI211_X1 U1240 ( .C1(n1871gat), .C2(n1480), .A(n778), .B(n777), .ZN(
        n3146gat) );
  AOI22_X1 U1241 ( .A1(n2061gat), .A2(n781), .B1(n839), .B2(n780), .ZN(n494)
         );
  OAI21_X1 U1242 ( .B1(n2454gat), .B2(n337gat), .A(n494), .ZN(n3150gat) );
  OAI22_X1 U1243 ( .A1(n786), .A2(n783), .B1(n782), .B2(n801), .ZN(n2897gat)
         );
  INV_X1 U1244 ( .A(n3074gat), .ZN(n788) );
  OAI22_X1 U1245 ( .A1(n786), .A2(n788), .B1(n782), .B2(n798), .ZN(n2914gat)
         );
  INV_X1 U1246 ( .A(n3076gat), .ZN(n789) );
  OAI22_X1 U1247 ( .A1(n786), .A2(n789), .B1(n782), .B2(n799), .ZN(n2928gat)
         );
  INV_X1 U1248 ( .A(n3075gat), .ZN(n790) );
  OAI22_X1 U1249 ( .A1(n786), .A2(n790), .B1(n782), .B2(n800), .ZN(n2927gat)
         );
  INV_X1 U1250 ( .A(n3071gat), .ZN(n815) );
  OAI22_X1 U1251 ( .A1(n786), .A2(n816), .B1(n782), .B2(n815), .ZN(n2896gat)
         );
  OAI22_X1 U1252 ( .A1(n786), .A2(n812), .B1(n782), .B2(n814), .ZN(n2922gat)
         );
  INV_X1 U1253 ( .A(n3077gat), .ZN(n819) );
  OAI22_X1 U1254 ( .A1(n786), .A2(n819), .B1(n782), .B2(n817), .ZN(n2894gat)
         );
  OAI22_X1 U1255 ( .A1(n786), .A2(n784), .B1(n782), .B2(n802), .ZN(n2921gat)
         );
  OAI22_X1 U1256 ( .A1(n786), .A2(n785), .B1(n782), .B2(n810), .ZN(n2895gat)
         );
  OAI22_X1 U1257 ( .A1(n788), .A2(n791), .B1(n798), .B2(n792), .ZN(n2913gat)
         );
  OAI22_X1 U1258 ( .A1(n789), .A2(n791), .B1(n799), .B2(n792), .ZN(n2920gat)
         );
  OAI22_X1 U1259 ( .A1(n790), .A2(n791), .B1(n800), .B2(n792), .ZN(n2905gat)
         );
  OAI22_X1 U1260 ( .A1(n817), .A2(n792), .B1(n819), .B2(n791), .ZN(n2898gat)
         );
  NOR3_X1 U1261 ( .A1(n423), .A2(n794), .A3(n793), .ZN(n797) );
  AOI22_X1 U1262 ( .A1(n419), .A2(n797), .B1(n796), .B2(n795), .ZN(n811) );
  NOR2_X1 U1263 ( .A1(n811), .A2(n798), .ZN(n1540) );
  NOR2_X1 U1264 ( .A1(n811), .A2(n799), .ZN(n1557) );
  NOR2_X1 U1265 ( .A1(n811), .A2(n800), .ZN(n1559) );
  NOR2_X1 U1266 ( .A1(n811), .A2(n815), .ZN(n1561) );
  NOR2_X1 U1267 ( .A1(n811), .A2(n801), .ZN(n1563) );
  NOR2_X1 U1268 ( .A1(n811), .A2(n817), .ZN(n1565) );
  NOR2_X1 U1269 ( .A1(n811), .A2(n802), .ZN(n1567) );
  NOR2_X1 U1270 ( .A1(n2207gat), .A2(n803), .ZN(n1554) );
  INV_X1 U1271 ( .A(n2155gat), .ZN(n804) );
  OAI33_X1 U1272 ( .A1(n2543gat), .A2(n2155gat), .A3(n807), .B1(n806), .B2(
        n805), .B3(n804), .ZN(n808) );
  NAND2_X1 U1273 ( .A1(n2630gat), .A2(n808), .ZN(n1551) );
  NOR2_X1 U1274 ( .A1(n1230), .A2(n1551), .ZN(n1552) );
  NAND3_X1 U1275 ( .A1(n1554), .A2(n1552), .A3(n809), .ZN(n813) );
  OAI21_X1 U1276 ( .B1(n811), .B2(n810), .A(n813), .ZN(n2909gat) );
  OAI21_X1 U1277 ( .B1(n811), .B2(n814), .A(n813), .ZN(n2908gat) );
  NAND2_X1 U1278 ( .A1(n813), .A2(n3095gat), .ZN(n820) );
  NOR2_X1 U1279 ( .A1(n820), .A2(n812), .ZN(n1574) );
  NAND2_X1 U1280 ( .A1(n813), .A2(n3093gat), .ZN(n818) );
  NOR2_X1 U1281 ( .A1(n818), .A2(n814), .ZN(n1576) );
  INV_X1 U1282 ( .A(n820), .ZN(n822) );
  INV_X1 U1283 ( .A(n818), .ZN(n821) );
  AOI22_X1 U1284 ( .A1(n822), .A2(n3074gat), .B1(n821), .B2(n3065gat), .ZN(
        n1581) );
  AOI22_X1 U1285 ( .A1(n822), .A2(n3076gat), .B1(n821), .B2(n3067gat), .ZN(
        n1585) );
  AOI22_X1 U1286 ( .A1(n822), .A2(n3075gat), .B1(n821), .B2(n3066gat), .ZN(
        n1589) );
  NOR2_X1 U1287 ( .A1(n818), .A2(n815), .ZN(n1591) );
  NOR2_X1 U1288 ( .A1(n820), .A2(n816), .ZN(n1592) );
  AOI22_X1 U1289 ( .A1(n822), .A2(n3081gat), .B1(n821), .B2(n3072gat), .ZN(
        n1597) );
  NOR2_X1 U1290 ( .A1(n818), .A2(n817), .ZN(n1599) );
  NOR2_X1 U1291 ( .A1(n820), .A2(n819), .ZN(n1600) );
  AOI22_X1 U1292 ( .A1(n822), .A2(n3079gat), .B1(n821), .B2(n3070gat), .ZN(
        n1605) );
  AOI22_X1 U1293 ( .A1(n822), .A2(n3078gat), .B1(n821), .B2(n3069gat), .ZN(
        n1609) );
  INV_X1 U1294 ( .A(n2468gat), .ZN(n824) );
  NAND4_X1 U1295 ( .A1(n2526gat), .A2(n2518gat), .A3(n2599gat), .A4(n2522gat), 
        .ZN(n823) );
  NOR3_X1 U1296 ( .A1(n3090gat), .A2(n824), .A3(n823), .ZN(n825) );
  NAND3_X1 U1297 ( .A1(n2464gat), .A2(n2476gat), .A3(n825), .ZN(n3016gat) );
  NOR2_X1 U1298 ( .A1(n482), .A2(n2179gat), .ZN(n1620) );
  NOR3_X1 U1299 ( .A1(n482), .A2(n2182gat), .A3(n511), .ZN(n1624) );
  NOR2_X1 U1300 ( .A1(n827), .A2(n826), .ZN(n1620gat) );
  INV_X1 U1301 ( .A(n2319gat), .ZN(n828) );
  NOR2_X1 U1302 ( .A1(n3099gat), .A2(n828), .ZN(n1827gat) );
  INV_X1 U1303 ( .A(n829), .ZN(n831) );
  NAND3_X1 U1304 ( .A1(n2472gat), .A2(n831), .A3(n830), .ZN(n846) );
  INV_X1 U1305 ( .A(n1606gat_EXTRA), .ZN(n833) );
  NOR2_X1 U1306 ( .A1(n846), .A2(n833), .ZN(n1610gat) );
  OR2_X1 U1307 ( .A1(n847), .A2(n2407gat), .ZN(n836) );
  NAND3_X1 U1308 ( .A1(n1850gat), .A2(n475), .A3(n834), .ZN(n853) );
  NOR4_X1 U1309 ( .A1(n848), .A2(n836), .A3(n835), .A4(n853), .ZN(n1516gat) );
  INV_X1 U1310 ( .A(n1638), .ZN(n837) );
  NOR4_X1 U1311 ( .A1(n841), .A2(n839), .A3(n838), .A4(n837), .ZN(n1565gat) );
  INV_X1 U1312 ( .A(n392), .ZN(n842) );
  NOR2_X1 U1313 ( .A1(n846), .A2(n842), .ZN(n1696gat) );
  NOR2_X1 U1314 ( .A1(n1312gat), .A2(n843), .ZN(n1654) );
  NOR2_X1 U1315 ( .A1(n443), .A2(n440), .ZN(n1723) );
  INV_X1 U1316 ( .A(n1721), .ZN(n844) );
  INV_X1 U1317 ( .A(n1312gat), .ZN(n854) );
  NOR4_X1 U1318 ( .A1(n443), .A2(n2169gat), .A3(n844), .A4(n854), .ZN(n2163gat) );
  NOR3_X1 U1319 ( .A1(n1775gat), .A2(n1316gat), .A3(n2040gat), .ZN(n2015gat)
         );
  INV_X1 U1320 ( .A(n390), .ZN(n845) );
  NOR2_X1 U1321 ( .A1(n846), .A2(n845), .ZN(n1613gat) );
  INV_X1 U1322 ( .A(n460), .ZN(n850) );
  NAND4_X1 U1323 ( .A1(n2407gat), .A2(n849), .A3(n848), .A4(n847), .ZN(n851)
         );
  NOR2_X1 U1324 ( .A1(n850), .A2(n851), .ZN(n1915gat) );
  NOR2_X1 U1325 ( .A1(n852), .A2(n851), .ZN(n1800gat) );
  NOR2_X1 U1326 ( .A1(n854), .A2(n853), .ZN(n1593gat) );
  NOR2_X1 U1327 ( .A1(n2207gat), .A2(n2562gat), .ZN(n1229) );
  NOR2_X1 U1328 ( .A1(n856), .A2(n855), .ZN(n593) );
  AND2_X1 U1329 ( .A1(n856), .A2(n385), .ZN(n387) );
  LOGIC0_X1 FTL_TIE0 ( .Z(ftl_const0) );
  FTL_FUNC_08549_FFFFFFEF FTL_PATCH_O0 ( .A(n364), .B(n368), .C(n383), .D(n386), .E(n388), .Y(n1781gat) );
  FTL_FUNC_94537_FFFF0080 FTL_PATCH_O1 ( .A(n412), .B(n415), .C(n416), .D(n419), .E(n430), .Y(n827gat) );
  FTL_FUNC_08930_000B0000 FTL_PATCH_O2 ( .A(n433), .B(n434), .C(n437), .D(n439), .E(n440), .Y(n3031gat) );
  FTL_FUNC_08634_10101000 FTL_PATCH_O3 ( .A(n437), .B(n439), .C(n440), .D(n445), .E(n446), .Y(n3035gat) );
  FTL_FUNC_08549_FFFFFFEF FTL_PATCH_O4 ( .A(n437), .B(n439), .C(n440), .D(n449), .E(n450), .Y(n3036gat) );
  FTL_FUNC_08586_44400000 FTL_PATCH_O5 ( .A(n439), .B(n441), .C(n456), .D(n457), .E(n478), .Y(n3037gat) );
  FTL_FUNC_21770_88888880 FTL_PATCH_O6 ( .A(n442), .B(n478), .C(n482), .D(n483), .E(n484), .Y(n3041gat) );
  FTL_FUNC_09080_00004C00 FTL_PATCH_O7 ( .A(n401), .B(n442), .C(n460), .D(n477), .E(n490), .Y(n3042gat) );
  FTL_FUNC_09080_00004C00 FTL_PATCH_O8 ( .A(n401), .B(n442), .C(n460), .D(n477), .E(n495), .Y(n3044gat) );
  FTL_FUNC_08926_0000008C FTL_PATCH_O9 ( .A(n358), .B(n442), .C(n500), .D(n506), .E(n512), .Y(n3048gat) );
  FTL_FUNC_08926_0000008C FTL_PATCH_O10 ( .A(n358), .B(n442), .C(n500), .D(n506), .E(n515), .Y(n3049gat) );
  FTL_FUNC_21770_88888880 FTL_PATCH_O11 ( .A(n442), .B(n507), .C(n524), .D(n525), .E(n526), .Y(n3051gat) );
  FTL_FUNC_08512_EFFFFFFF FTL_PATCH_O12 ( .A(n437), .B(n439), .C(n440), .D(n478), .E(n539), .Y(n3053gat) );
  FTL_FUNC_08512_EFFFFFFF FTL_PATCH_O13 ( .A(n437), .B(n439), .C(n440), .D(n507), .E(n546), .Y(n3054gat) );
  FTL_FUNC_91583_FF00FF23 FTL_PATCH_O14 ( .A(n419), .B(n550), .C(n554), .D(n557), .E(n563), .Y(n3055gat) );
  FTL_FUNC_91585_FFFF0023 FTL_PATCH_O15 ( .A(n419), .B(n550), .C(n554), .D(n568), .E(n570), .Y(n3056gat) );
  FTL_FUNC_11614_FFFFEAEE FTL_PATCH_O16 ( .A(n575), .B(n576), .C(n580), .D(n581), .E(n584), .Y(n3057gat) );
  FTL_FUNC_12122_FFFFEEEC FTL_PATCH_O17 ( .A(n576), .B(n587), .C(n588), .D(n589), .E(n592), .Y(n3058gat) );
  FTL_FUNC_12122_FFFFEEEC FTL_PATCH_O18 ( .A(n576), .B(n595), .C(n599), .D(n600), .E(n603), .Y(n3059gat) );
  FTL_FUNC_12122_FFFFEEEC FTL_PATCH_O19 ( .A(n576), .B(n606), .C(n609), .D(n610), .E(n613), .Y(n3060gat) );
  FTL_FUNC_11615_FFFFECEE FTL_PATCH_O20 ( .A(n576), .B(n616), .C(n620), .D(n621), .E(n624), .Y(n3061gat) );
  FTL_FUNC_91585_FFFF0023 FTL_PATCH_O21 ( .A(n419), .B(n550), .C(n554), .D(n632), .E(n634), .Y(n3062gat) );
  FTL_FUNC_91585_FFFF0023 FTL_PATCH_O22 ( .A(n419), .B(n550), .C(n554), .D(n639), .E(n641), .Y(n3063gat) );
  FTL_FUNC_91567_FFFF1011 FTL_PATCH_O23 ( .A(n550), .B(n555), .C(n646), .D(n647), .E(n650), .Y(n3064gat) );
  FTL_FUNC_09030_FFFFFDFC FTL_PATCH_O24 ( .A(n419), .B(n456), .C(n457), .D(n658), .E(n662), .Y(n3104gat) );
  FTL_FUNC_08553_FFFFFFFE FTL_PATCH_O25 ( .A(n482), .B(n483), .C(n484), .D(n667), .E(n670), .Y(n3105gat) );
  FTL_FUNC_48144_FFFFEF00 FTL_PATCH_O26 ( .A(n728), .B(n731), .C(n739), .D(n747), .E(n775), .Y(n3117gat) );
  FTL_FUNC_92689_FFFF00E0 FTL_PATCH_O27 ( .A(n718), .B(n724), .C(n745), .D(n783), .E(n828), .Y(n3118gat) );
  FTL_FUNC_92689_FFFF00E0 FTL_PATCH_O28 ( .A(n718), .B(n724), .C(n745), .D(n836), .E(n881), .Y(n3119gat) );
  FTL_FUNC_92689_FFFF00E0 FTL_PATCH_O29 ( .A(n718), .B(n724), .C(n745), .D(n889), .E(n934), .Y(n3120gat) );
  FTL_FUNC_91217_FFFF0222 FTL_PATCH_O30 ( .A(n745), .B(n746), .C(n940), .D(n941), .E(n987), .Y(n3121gat) );
  FTL_FUNC_91217_FFFF0222 FTL_PATCH_O31 ( .A(n745), .B(n746), .C(n993), .D(n994), .E(n1040), .Y(n3122gat) );
  FTL_FUNC_91217_FFFF0222 FTL_PATCH_O32 ( .A(n745), .B(n746), .C(n1046), .D(n1047), .E(n1088), .Y(n3123gat) );
  FTL_FUNC_92021_FFFF2202 FTL_PATCH_O33 ( .A(n745), .B(n746), .C(n1096), .D(n1099), .E(n1104), .Y(n3124gat) );
  FTL_FUNC_48129_FFFFA8AA FTL_PATCH_O34 ( .A(n747), .B(n1106), .C(n1108), .D(n1116), .E(n1128), .Y(n3125gat) );
  FTL_FUNC_47904_FFFF00EF FTL_PATCH_O35 ( .A(n1106), .B(n1108), .C(n1116), .D(n1144), .E(n1153), .Y(n3129gat) );
  FTL_FUNC_47904_FFFF00EF FTL_PATCH_O36 ( .A(n728), .B(n731), .C(n739), .D(n1144), .E(n1161), .Y(n3130gat) );
  FTL_FUNC_48243_FFFF5554 FTL_PATCH_O37 ( .A(n1147), .B(n1163), .C(n1164), .D(n1166), .E(n1169), .Y(n3131gat) );
  FTL_FUNC_48243_FFFF5554 FTL_PATCH_O38 ( .A(n1147), .B(n1171), .C(n1172), .D(n1174), .E(n1177), .Y(n3132gat) );
  FTL_FUNC_47904_FFFF00EF FTL_PATCH_O39 ( .A(n883), .B(n884), .C(n888), .D(n1144), .E(n1185), .Y(n3133gat) );
  FTL_FUNC_48243_FFFF5554 FTL_PATCH_O40 ( .A(n1147), .B(n1187), .C(n1188), .D(n1190), .E(n1193), .Y(n3134gat) );
  FTL_FUNC_79181_FFFF00F2 FTL_PATCH_O41 ( .A(n745), .B(n746), .C(n1146), .D(n1199), .E(n1201), .Y(n3135gat) );
  FTL_FUNC_48231_DDDDDDDC FTL_PATCH_O42 ( .A(n1147), .B(n1203), .C(n1204), .D(n1205), .E(n1207), .Y(n3136gat) );
  FTL_FUNC_47445_FFFF00F7 FTL_PATCH_O43 ( .A(n1094), .B(n1095), .C(n1099), .D(n1144), .E(n1217), .Y(n3137gat) );
  FTL_FUNC_08563_E0000000 FTL_PATCH_O44 ( .A(n368), .B(n370), .C(n1222), .D(n1224), .E(n1225), .Y(n3138gat) );
  FTL_FUNC_09113_F8FFFFFF FTL_PATCH_O45 ( .A(n1240), .B(n1241), .C(n1245), .D(n1265), .E(n1267), .Y(n3139gat) );
  FTL_FUNC_09113_F8FFFFFF FTL_PATCH_O46 ( .A(n1230), .B(n1231), .C(n1234), .D(n1264), .E(n1265), .Y(n3140gat) );
  FTL_FUNC_47314_5555FF7F FTL_PATCH_O47 ( .A(n1422), .B(n1430), .C(n1431), .D(n1443), .E(n1446), .Y(n3143gat) );
  FTL_FUNC_47314_5555FF7F FTL_PATCH_O48 ( .A(n1422), .B(n1457), .C(n1458), .D(n1470), .E(n1473), .Y(n3144gat) );
  FTL_FUNC_08543_00000100 FTL_PATCH_O49 ( .A(n364), .B(n368), .C(n370), .D(n381), .E(n1476), .Y(n3145gat) );
  FTL_FUNC_09157_FFFFFBBB FTL_PATCH_O50 ( .A(n493), .B(n494), .C(n656), .D(n657), .E(n661), .Y(n3151gat) );
  FTL_FUNC_91369_F7F0F0F0 FTL_PATCH_O51 ( .A(n1252), .B(n1253), .C(n1536), .D(n1548), .E(n1550), .Y(n2918gat) );
  FTL_FUNC_91368_FFFF7000 FTL_PATCH_O52 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1553), .Y(n2952gat) );
  FTL_FUNC_91368_FFFF7000 FTL_PATCH_O53 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1555), .Y(n2919gat) );
  FTL_FUNC_91368_FFFF7000 FTL_PATCH_O54 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1557), .Y(n2910gat) );
  FTL_FUNC_94348_FFFF0100 FTL_PATCH_O55 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1559), .Y(n2907gat) );
  FTL_FUNC_94348_FFFF0100 FTL_PATCH_O56 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1561), .Y(n2911gat) );
  FTL_FUNC_94348_FFFF0100 FTL_PATCH_O57 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1563), .Y(n2912gat) );
  FTL_FUNC_22327_FFFFFF40 FTL_PATCH_O58 ( .A(n1254), .B(n1548), .C(n1550), .D(n1570), .E(n1572), .Y(n2904gat) );
  FTL_FUNC_91308_7000FFFF FTL_PATCH_O59 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1577), .Y(n2891gat) );
  FTL_FUNC_91308_7000FFFF FTL_PATCH_O60 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1581), .Y(n2903gat) );
  FTL_FUNC_91308_7000FFFF FTL_PATCH_O61 ( .A(n1252), .B(n1253), .C(n1548), .D(n1550), .E(n1585), .Y(n2915gat) );
  FTL_FUNC_22327_FFFFFF40 FTL_PATCH_O62 ( .A(n1254), .B(n1548), .C(n1550), .D(n1587), .E(n1588), .Y(n2901gat) );
  FTL_FUNC_94308_0100FFFF FTL_PATCH_O63 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1593), .Y(n2890gat) );
  FTL_FUNC_22327_FFFFFF40 FTL_PATCH_O64 ( .A(n1254), .B(n1548), .C(n1550), .D(n1595), .E(n1596), .Y(n2888gat) );
  FTL_FUNC_94308_0100FFFF FTL_PATCH_O65 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1601), .Y(n2887gat) );
  FTL_FUNC_94308_0100FFFF FTL_PATCH_O66 ( .A(n1226), .B(n1254), .C(n1547), .D(n1550), .E(n1605), .Y(n2886gat) );
  FTL_FUNC_92808_FFFFE000 FTL_PATCH_O67 ( .A(n501), .B(n506), .C(n1615), .D(n1616), .E(n1620), .Y(n2983gat) );
  FTL_FUNC_47256_FF400000 FTL_PATCH_O68 ( .A(n358), .B(n471), .C(n472), .D(n1629), .E(n1634), .Y(n1793gat) );
  FTL_FUNC_08502_10000000 FTL_PATCH_O69 ( .A(n1650), .B(n1713), .C(n1714), .D(n1716), .E(n1719), .Y(n2009gat) );
  FTL_FUNC_08793_45000000 FTL_PATCH_O70 ( .A(n436), .B(n1653), .C(n1712), .D(n1714), .E(n1716), .Y(n2017gat) );
  FTL_FUNC_08727_8A000000 FTL_PATCH_O71 ( .A(n467), .B(n1653), .C(n1712), .D(n1714), .E(n1716), .Y(n1927gat) );
  FTL_FUNC_09066_04440000 FTL_PATCH_O72 ( .A(n358), .B(n473), .C(n498), .D(n499), .E(n1717), .Y(n1564gat) );
  FTL_FUNC_00973_A800A800 FTL_PATCH_I0 ( .A(n2102gat), .B(n1880gat), .C(n1763gat), .D(n1394gat), .E(n1394gat), .Y(n1231) );
  FTL_FUNC_07873_01FF01FF FTL_PATCH_I1 ( .A(n3083gat), .B(n3084gat), .C(n3085gat), .D(n3095gat), .E(n3095gat), .Y(n745) );
  FTL_FUNC_08490_80000000 FTL_PATCH_I2 ( .A(n2399gat), .B(n2343gat), .C(n2203gat), .D(n2562gat), .E(n2207gat), .Y(n1360) );
  FTL_FUNC_08490_80000000 FTL_PATCH_I3 ( .A(n2510gat), .B(n2588gat), .C(n2658gat), .D(n2502gat), .E(n2506gat), .Y(n411) );
endmodule

