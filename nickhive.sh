hive -e '
ADD JAR localjars/h2o-genmodel.jar;
ADD JAR target/ScoreData-1.0-SNAPSHOT.jar;
DROP TABLE predictions;
CREATE TEMPORARY FUNCTION fn AS "ai.h2o.hive.udf.ScoreDataUDF";
set hive.execution.engine=mr;
set mapreduce.job.reduces=1;
set mapreduce.map.memory.mb=10480;
set mapreduce.reduce.memory.mb=10480;
set mapreduce.map.java.opts=-DAMYWANG_MAP=1 -Xmx8G -XX:PermSize=512m -XX:MaxPermSize=512m -XX:+PrintGCDetails -XX:+PrintGCTimeStamps;
set mapreduce.reduce.java.opts=-DAMYWANG_REDUCE=1 -Xmx8G -XX:PermSize=512m -XX:MaxPermSize=512m -XX:+PrintGCDetails -XX:+PrintGCTimeStamps;
CREATE TABLE predictions AS SELECT fn(C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31,C32,C33,C34,C35,C36,C37,C38,C39,C40,C41,C42,C43,C44,C45,C46,C47,C48,C49,C50,C51,C52,C53,C54,C55,C56,C57,C58,C59,C60,C61,C62,C63,C64,C65,C66,C67,C68,C69,C70,C71,C72,C73,C74,C75,C76,C77,C78,C79,C80,C81,C82,C83,C84,C85,C86,C87,C88,C89,C90,C91,C92,C93,C94,C95,C96,C97,C98,C99,C100,C101,C102,C103,C104,C105,C106,C107,C108,C109,C110,C111,C112,C113,C114,C115,C116,C117,C118,C119,C120,C121,C122,C123,C124,C125,C126,C127,C128,C129,C130,C131,C132,C133,C134,C135,C136,C137,C138,C139,C140,C141,C142,C143,C144,C145,C146,C147,C148,C149,C150,C151,C152,C153,C154,C155,C156,C157,C158,C159,C160,C161,C162,C163,C164,C165,C166,C167,C168,C169,C170,C171,C172,C173,C174,C175,C176,C177,C178,C179,C180,C181,C182,C183,C184,C185,C186,C187,C188,C189,C190,C191,C192,C193,C194,C195,C196,C197,C198,C199,C200,C201,C202,C203,C204,C205,C206,C207,C208,C209,C210,C211,C212,C213,C214,C215,C216,C217,C218,C219,C220,C221,C222,C223,C224,C225,C226,C227,C228,C229,C230,C231,C232,C233,C234,C235,C236,C237,C238,C239,C240,C241,C242,C243,C244,C245,C246,C247,C248,C249,C250,C251,C252,C253,C254,C255,C256,C257,C258,C259,C260,C261,C262,C263,C264,C265,C266,C267,C268,C269,C270,C271,C272,C273,C274,C275,C276,C277,C278,C279,C280,C281,C282,C283,C284,C285,C286,C287,C288,C289,C290,C291,C292,C293,C294,C295,C296,C297,C298,C299,C300,C301,C302,C303,C304,C305,C306,C307,C308,C309,C310,C311,C312,C313,C314,C315,C316,C317,C318,C319,C320,C321,C322,C323,C324,C325,C326,C327,C328,C329,C330,C331,C332,C333,C334,C335,C336,C337,C338,C339,C340,C341,C342,C343,C344,C345,C346,C347,C348,C349,C350,C351,C352,C353,C354,C355,C356,C357,C358,C359,C360,C361,C362,C363,C364,C365,C366,C367,C368,C369,C370,C371,C372,C373,C374,C375,C376,C377,C378,C379,C380,C381,C382,C383,C384,C385,C386,C387,C388,C389,C390,C391,C392,C393,C394,C395,C396,C397,C398,C399,C400,C401,C402,C403,C404,C405,C406,C407,C408,C409,C410,C411,C412,C413,C414,C415,C416,C417,C418,C419,C420,C421,C422,C423,C424,C425,C426,C427,C428,C429,C430,C431,C432,C433,C434,C435,C436,C437,C438,C439,C440,C441,C442,C443,C444,C445,C446,C447,C448,C449,C450,C451,C452,C453,C454,C455,C456,C457,C458,C459,C460,C461,C462,C463,C464,C465,C466,C467,C468,C469,C470,C471,C472,C473,C474,C475,C476,C477,C478,C479,C480,C481,C482,C483,C484,C485,C486,C487,C488,C489,C490,C491,C492,C493,C494,C495,C496,C497,C498,C499,C500,C501,C502,C503,C504,C505,C506,C507,C508,C509,C510,C511,C512,C513,C514,C515,C516,C517,C518,C519,C520,C521,C522,C523,C524,C525,C526,C527,C528,C529,C530,C531,C532,C533,C534,C535,C536,C537,C538,C539,C540,C541,C542,C543,C544,C545,C546,C547,C548,C549,C550,C551,C552,C553,C554,C555,C556,C557,C558,C559,C560,C561,C562,C563,C564,C565,C566,C567,C568,C569,C570,C571,C572,C573,C574,C575,C576,C577,C578,C579,C580,C581,C582,C583,C584,C585,C586,C587,C588,C589,C590,C591,C592,C593,C594,C595,C596,C597,C598,C599,C600,C601,C602,C603,C604,C605,C606,C607,C608,C609,C610,C611,C612,C613,C614,C615,C616,C617,C618,C619,C620,C621,C622,C623,C624,C625,C626,C627,C628,C629,C630,C631,C632,C633,C634,C635,C636,C637,C638,C639,C640,C641,C642,C643,C644,C645,C646,C647,C648,C649,C650,C651,C652,C653,C654,C655,C656,C657,C658,C659,C660,C661,C662,C663,C664,C665,C666,C667,C668,C669,C670,C671,C672,C673,C674,C675,C676,C677,C678,C679,C680,C681,C682,C683,C684,C685,C686,C687,C688,C689,C690,C691,C692,C693,C694,C695,C696,C697,C698,C699,C700,C701,C702,C703,C704,C705,C706,C707,C708,C709,C710,C711,C712,C713,C714,C715,C716,C717,C718,C719,C720,C721,C722,C723,C724,C725,C726,C727,C728,C729,C730,C731,C732,C733,C734,C735,C736,C737,C738,C739,C740,C741,C742,C743,C744,C745,C746,C747,C748,C749,C750,C751,C752,C753,C754,C755,C756,C757,C758,C759,C760,C761,C762,C763,C764,C765,C766,C767,C768,C769,C770,C771,C772,C773,C774,C775,C776,C777,C778,C779,C780,C781,C782,C783,C784,C785,C786,C787,C788,C789,C790,C791,C792,C793,C794,C795,C796,C797,C798,C799,C800,C801,C802,C803,C804,C805,C806,C807,C808,C809,C810,C811,C812,C813,C814,C815,C816,C817,C818,C819,C820,C821,C822,C823,C824,C825,C826,C827,C828,C829,C830,C831,C832,C833,C834,C835,C836,C837,C838,C839,C840,C841,C842,C843,C844,C845,C846,C847,C848,C849,C850,C851,C852,C853,C854,C855,C856,C857,C858,C859,C860,C861,C862,C863,C864,C865,C866,C867,C868,C869,C870,C871,C872,C873,C874,C875,C876,C877,C878,C879,C880,C881,C882,C883,C884,C885,C886,C887,C888,C889,C890,C891,C892,C893,C894,C895,C896,C897,C898,C899,C900,C901,C902,C903,C904,C905,C906,C907,C908,C909,C910,C911,C912,C913,C914,C915,C916,C917,C918,C919,C920,C921,C922,C923,C924,C925,C926,C927,C928,C929,C930,C931,C932,C933,C934,C935,C936,C937,C938,C939,C940,C941,C942,C943,C944,C945,C946,C947,C948,C949,C950,C951,C952,C953,C954,C955,C956,C957,C958,C959,C960,C961,C962,C963,C964,C965,C966,C967,C968,C969,C970,C971,C972,C973,C974,C975,C976,C977,C978,C979,C980,C981,C982,C983,C984,C985,C986,C987,C988,C989,C990,C991,C992,C993,C994,C995,C996,C997,C998,C999,C1000,C1001,C1002,C1003,C1004,C1005,C1006,C1007,C1008,C1009,C1010,C1011,C1012,C1013,C1014,C1015,C1016,C1017,C1018,C1019,C1020,C1021,C1022,C1023,C1024,C1025,C1026,C1027,C1028,C1029,C1030,C1031,C1032,C1033,C1034,C1035,C1036,C1037,C1038,C1039,C1040,C1041,C1042,C1043,C1044,C1045,C1046,C1047,C1048,C1049,C1050,C1051,C1052,C1053,C1054,C1055,C1056,C1057,C1058,C1059,C1060,C1061,C1062,C1063,C1064,C1065,C1066,C1067,C1068,C1069,C1070,C1071,C1072,C1073,C1074,C1075,C1076,C1077,C1078,C1079,C1080,C1081,C1082,C1083,C1084,C1085,C1086,C1087,C1088,C1089,C1090,C1091,C1092,C1093,C1094,C1095,C1096,C1097,C1098,C1099,C1100,C1101,C1102,C1103,C1104,C1105,C1106,C1107,C1108,C1109,C1110,C1111,C1112,C1113,C1114,C1115,C1116,C1117,C1118,C1119,C1120,C1121,C1122,C1123,C1124,C1125,C1126,C1127,C1128,C1129,C1130,C1131,C1132,C1133,C1134,C1135,C1136,C1137,C1138,C1139,C1140,C1141,C1142,C1143,C1144,C1145,C1146,C1147,C1148,C1149,C1150,C1151,C1152,C1153,C1154,C1155,C1156,C1157,C1158,C1159,C1160,C1161,C1162,C1163,C1164,C1165,C1166,C1167,C1168,C1169,C1170,C1171,C1172,C1173,C1174,C1175,C1176,C1177,C1178,C1179,C1180,C1181,C1182,C1183,C1184,C1185,C1186,C1187,C1188,C1189,C1190,C1191,C1192,C1193,C1194,C1195,C1196,C1197,C1198,C1199,C1200,C1201,C1202,C1203,C1204,C1205,C1206,C1207,C1208,C1209,C1210,C1211,C1212,C1213,C1214,C1215,C1216,C1217,C1218,C1219,C1220,C1221,C1222,C1223,C1224,C1225,C1226,C1227,C1228,C1229,C1230,C1231,C1232,C1233,C1234,C1235,C1236,C1237,C1238,C1239,C1240,C1241,C1242,C1243,C1244,C1245,C1246,C1247,C1248,C1249,C1250,C1251,C1252,C1253,C1254,C1255,C1256,C1257,C1258,C1259,C1260,C1261,C1262,C1263,C1264,C1265,C1266,C1267,C1268,C1269,C1270,C1271,C1272,C1273,C1274,C1275,C1276,C1277,C1278,C1279,C1280,C1281,C1282,C1283,C1284,C1285,C1286,C1287,C1288,C1289,C1290,C1291,C1292,C1293,C1294,C1295,C1296,C1297,C1298,C1299,C1300,C1301,C1302,C1303,C1304,C1305,C1306,C1307,C1308,C1309,C1310,C1311,C1312,C1313,C1314,C1315,C1316,C1317,C1318,C1319,C1320,C1321,C1322,C1323,C1324,C1325,C1326,C1327,C1328,C1329,C1330,C1331,C1332,C1333,C1334,C1335,C1336,C1337,C1338,C1339,C1340,C1341,C1342,C1343,C1344,C1345,C1346,C1347,C1348,C1349,C1350,C1351,C1352,C1353,C1354,C1355,C1356,C1357,C1358,C1359,C1360,C1361,C1362,C1363,C1364,C1365,C1366,C1367,C1368,C1369,C1370,C1371,C1372,C1373,C1374,C1375,C1376,C1377,C1378,C1379,C1380,C1381,C1382,C1383,C1384,C1385,C1386,C1387,C1388,C1389,C1390,C1391,C1392,C1393,C1394,C1395,C1396,C1397,C1398,C1399,C1400,C1401,C1402,C1403,C1404,C1405,C1406,C1407,C1408,C1409,C1410,C1411,C1412,C1413,C1414,C1415,C1416,C1417,C1418,C1419,C1420,C1421,C1422,C1423,C1424,C1425,C1426,C1427,C1428,C1429,C1430,C1431,C1432,C1433,C1434,C1435,C1436,C1437,C1438,C1439,C1440,C1441,C1442,C1443,C1444,C1445,C1446,C1447,C1448,C1449,C1450,C1451,C1452,C1453,C1454,C1455,C1456,C1457,C1458,C1459,C1460,C1461,C1462,C1463,C1464,C1465,C1466,C1467,C1468,C1469,C1470,C1471,C1472,C1473,C1474,C1475,C1476,C1477,C1478,C1479,C1480,C1481,C1482,C1483,C1484,C1485,C1486,C1487,C1488,C1489,C1490,C1491,C1492,C1493,C1494,C1495,C1496,C1497,C1498,C1499,C1500,C1501,C1502,C1503,C1504,C1505,C1506,C1507,C1508,C1509,C1510,C1511,C1512,C1513,C1514,C1515,C1516,C1517,C1518,C1519,C1520,C1521,C1522,C1523,C1524,C1525,C1526,C1527,C1528,C1529,C1530,C1531,C1532,C1533,C1534,C1535,C1536,C1537,C1538,C1539,C1540,C1541,C1542,C1543,C1544,C1545,C1546,C1547,C1548,C1549,C1550,C1551,C1552,C1553,C1554,C1555,C1556,C1557,C1558,C1559,C1560,C1561,C1562,C1563,C1564,C1565,C1566,C1567,C1568,C1569,C1570,C1571,C1572,C1573,C1574,C1575,C1576,C1577,C1578,C1579,C1580,C1581,C1582,C1583,C1584,C1585,C1586,C1587,C1588,C1589,C1590,C1591,C1592,C1593,C1594,C1595,C1596,C1597,C1598,C1599,C1600,C1601,C1602,C1603,C1604,C1605,C1606,C1607,C1608,C1609,C1610,C1611,C1612,C1613,C1614,C1615,C1616,C1617,C1618,C1619,C1620,C1621,C1622,C1623,C1624,C1625,C1626,C1627,C1628,C1629,C1630,C1631,C1632,C1633,C1634,C1635,C1636,C1637,C1638,C1639,C1640,C1641,C1642,C1643,C1644,C1645,C1646,C1647,C1648,C1649,C1650,C1651,C1652,C1653,C1654,C1655,C1656,C1657,C1658,C1659,C1660,C1661,C1662,C1663,C1664,C1665,C1666,C1667,C1668,C1669,C1670,C1671,C1672,C1673,C1674,C1675,C1676,C1677,C1678,C1679,C1680,C1681,C1682,C1683,C1684,C1685,C1686,C1687,C1688,C1689,C1690,C1691,C1692,C1693,C1694,C1695,C1696,C1697,C1698,C1699,C1700,C1701,C1702,C1703,C1704,C1705,C1706,C1707,C1708,C1709,C1710,C1711,C1712,C1713,C1714,C1715,C1716,C1717,C1718,C1719,C1720,C1721,C1722,C1723,C1724,C1725,C1726,C1727,C1728,C1729,C1730,C1731,C1732,C1733,C1734,C1735,C1736,C1737,C1738,C1739,C1740,C1741,C1742,C1743,C1744,C1745,C1746,C1747,C1748,C1749,C1750,C1751,C1752,C1753,C1754,C1755,C1756,C1757,C1758,C1759,C1760,C1761,C1762,C1763,C1764,C1765,C1766,C1767,C1768,C1769,C1770,C1771,C1772,C1773,C1774,C1775,C1776,C1777,C1778,C1779,C1780,C1781,C1782,C1783,C1784,C1785,C1786,C1787,C1788,C1789,C1790,C1791,C1792,C1793,C1794,C1795,C1796,C1797,C1798,C1799,C1800,C1801,C1802,C1803,C1804,C1805,C1806,C1807,C1808,C1809,C1810,C1811,C1812,C1813,C1814,C1815,C1816,C1817,C1818,C1819,C1820,C1821,C1822,C1823,C1824,C1825,C1826,C1827,C1828,C1829,C1830,C1831,C1832,C1833,C1834,C1835,C1836,C1837,C1838,C1839,C1840,C1841,C1842,C1843,C1844,C1845,C1846,C1847,C1848,C1849,C1850,C1851,C1852,C1853,C1854,C1855,C1856,C1857,C1858,C1859,C1860,C1861,C1862,C1863,C1864,C1865,C1866,C1867,C1868,C1869,C1870,C1871,C1872,C1873,C1874,C1875,C1876,C1877,C1878,C1879,C1880,C1881,C1882,C1883,C1884,C1885,C1886,C1887,C1888,C1889,C1890,C1891,C1892,C1893,C1894,C1895,C1896,C1897,C1898,C1899,C1900,C1901,C1902,C1903,C1904,C1905,C1906,C1907,C1908,C1909,C1910,C1911,C1912,C1913,C1914,C1915,C1916,C1917,C1918,C1919,C1920,C1921,C1922,C1923,C1924,C1925,C1926,C1927,C1928,C1929,C1930,C1931,C1932,C1933,C1934,C1935,C1936,C1937,C1938,C1939,C1940,C1941,C1942,C1943,C1944,C1945,C1946,C1947,C1948,C1949,C1950,C1951,C1952,C1953,C1954,C1955,C1956,C1957,C1958,C1959,C1960,C1961,C1962,C1963,C1964,C1965,C1966,C1967,C1968,C1969,C1970,C1971,C1972,C1973,C1974,C1975,C1976,C1977,C1978,C1979,C1980,C1981,C1982,C1983,C1984,C1985,C1986,C1987,C1988,C1989,C1990,C1991,C1992,C1993,C1994,C1995,C1996,C1997,C1998,C1999,C2000,C2001,C2002,C2003,C2004,C2005,C2006,C2007,C2008,C2009,C2010,C2011,C2012,C2013,C2014,C2015,C2016,C2017,C2018,C2019,C2020,C2021,C2022,C2023,C2024,C2025,C2026,C2027,C2028,C2029,C2030,C2031,C2032,C2033,C2034,C2035,C2036,C2037,C2038,C2039,C2040,C2041,C2042,C2043,C2044,C2045,C2046,C2047,C2048,C2049,C2050,C2051,C2052,C2053,C2054,C2055,C2056,C2057,C2058,C2059,C2060,C2061,C2062,C2063,C2064,C2065,C2066,C2067,C2068,C2069,C2070,C2071,C2072,C2073,C2074,C2075,C2076,C2077,C2078,C2079,C2080,C2081,C2082,C2083,C2084,C2085,C2086,C2087,C2088,C2089,C2090,C2091,C2092,C2093,C2094,C2095,C2096,C2097,C2098,C2099,C2100,C2101,C2102,C2103,C2104,C2105,C2106,C2107,C2108,C2109,C2110,C2111,C2112,C2113,C2114,C2115,C2116,C2117,C2118,C2119,C2120,C2121,C2122,C2123,C2124,C2125,C2126,C2127,C2128,C2129,C2130,C2131,C2132,C2133,C2134,C2135,C2136,C2137,C2138,C2139,C2140,C2141,C2142,C2143,C2144,C2145,C2146,C2147,C2148,C2149,C2150,C2151,C2152,C2153,C2154,C2155,C2156,C2157,C2158,C2159,C2160,C2161,C2162,C2163,C2164,C2165,C2166,C2167,C2168,C2169,C2170,C2171,C2172,C2173,C2174,C2175,C2176,C2177,C2178,C2179,C2180,C2181,C2182,C2183,C2184,C2185,C2186,C2187,C2188,C2189,C2190,C2191,C2192,C2193,C2194,C2195,C2196,C2197,C2198,C2199,C2200,C2201,C2202,C2203,C2204,C2205,C2206,C2207,C2208,C2209,C2210,C2211,C2212,C2213,C2214,C2215,C2216,C2217,C2218,C2219,C2220,C2221,C2222,C2223,C2224,C2225,C2226,C2227,C2228,C2229,C2230,C2231,C2232,C2233,C2234,C2235,C2236,C2237,C2238,C2239,C2240,C2241,C2242,C2243,C2244,C2245,C2246,C2247,C2248,C2249,C2250,C2251,C2252,C2253,C2254,C2255,C2256,C2257,C2258,C2259,C2260,C2261,C2262,C2263,C2264,C2265,C2266,C2267,C2268,C2269,C2270,C2271,C2272,C2273,C2274,C2275,C2276,C2277,C2278,C2279,C2280,C2281,C2282,C2283,C2284,C2285,C2286,C2287,C2288,C2289,C2290,C2291,C2292,C2293,C2294,C2295,C2296,C2297,C2298,C2299,C2300,C2301,C2302,C2303,C2304,C2305,C2306,C2307,C2308,C2309,C2310,C2311,C2312,C2313,C2314,C2315,C2316,C2317,C2318,C2319,C2320,C2321,C2322,C2323,C2324,C2325,C2326,C2327,C2328,C2329,C2330,C2331,C2332,C2333,C2334,C2335,C2336,C2337,C2338,C2339,C2340,C2341,C2342,C2343,C2344,C2345,C2346,C2347,C2348,C2349,C2350,C2351,C2352,C2353,C2354,C2355,C2356,C2357,C2358,C2359,C2360,C2361,C2362,C2363,C2364,C2365,C2366,C2367,C2368,C2369,C2370,C2371,C2372,C2373,C2374,C2375,C2376,C2377,C2378,C2379,C2380,C2381,C2382,C2383,C2384,C2385,C2386,C2387,C2388,C2389,C2390,C2391,C2392,C2393,C2394,C2395,C2396,C2397,C2398,C2399,C2400,C2401,C2402,C2403,C2404,C2405,C2406,C2407,C2408,C2409,C2410,C2411,C2412,C2413,C2414,C2415,C2416,C2417,C2418,C2419,C2420,C2421,C2422,C2423,C2424,C2425,C2426,C2427,C2428,C2429,C2430,C2431,C2432,C2433,C2434,C2435,C2436,C2437,C2438,C2439,C2440,C2441,C2442,C2443,C2444,C2445,C2446,C2447,C2448,C2449,C2450,C2451,C2452,C2453,C2454,C2455,C2456,C2457,C2458,C2459,C2460,C2461,C2462,C2463,C2464,C2465,C2466,C2467,C2468,C2469,C2470,C2471,C2472,C2473,C2474,C2475,C2476,C2477,C2478,C2479,C2480,C2481,C2482,C2483,C2484,C2485,C2486,C2487,C2488,C2489,C2490,C2491,C2492,C2493,C2494,C2495,C2496,C2497,C2498,C2499,C2500,C2501,C2502,C2503,C2504,C2505,C2506,C2507,C2508,C2509,C2510,C2511,C2512,C2513,C2514,C2515,C2516,C2517,C2518,C2519,C2520,C2521,C2522,C2523,C2524,C2525,C2526,C2527,C2528,C2529,C2530,C2531,C2532,C2533,C2534,C2535,C2536,C2537,C2538,C2539,C2540,C2541,C2542,C2543,C2544,C2545,C2546,C2547,C2548,C2549,C2550,C2551,C2552,C2553,C2554,C2555,C2556,C2557,C2558,C2559,C2560,C2561,C2562,C2563,C2564,C2565,C2566,C2567,C2568,C2569,C2570,C2571,C2572,C2573,C2574,C2575,C2576,C2577,C2578,C2579,C2580,C2581,C2582,C2583,C2584,C2585,C2586,C2587,C2588,C2589,C2590,C2591,C2592,C2593,C2594,C2595,C2596,C2597,C2598,C2599,C2600,C2601,C2602,C2603,C2604,C2605,C2606,C2607,C2608,C2609,C2610,C2611,C2612,C2613,C2614,C2615,C2616,C2617,C2618,C2619,C2620,C2621,C2622,C2623,C2624,C2625,C2626,C2627,C2628,C2629,C2630,C2631,C2632,C2633,C2634,C2635,C2636,C2637,C2638,C2639,C2640,C2641,C2642,C2643,C2644,C2645,C2646,C2647,C2648,C2649,C2650,C2651,C2652,C2653,C2654,C2655,C2656,C2657,C2658,C2659,C2660,C2661,C2662,C2663,C2664,C2665,C2666,C2667,C2668,C2669,C2670,C2671,C2672,C2673,C2674,C2675,C2676,C2677,C2678,C2679,C2680,C2681,C2682,C2683,C2684,C2685,C2686,C2687,C2688,C2689,C2690,C2691,C2692,C2693,C2694,C2695,C2696,C2697,C2698,C2699,C2700,C2701,C2702,C2703,C2704,C2705,C2706,C2707,C2708,C2709,C2710,C2711,C2712,C2713,C2714,C2715,C2716,C2717,C2718,C2719,C2720,C2721,C2722,C2723,C2724,C2725,C2726,C2727,C2728,C2729,C2730,C2731,C2732,C2733,C2734,C2735,C2736,C2737,C2738,C2739,C2740,C2741,C2742,C2743,C2744,C2745,C2746,C2747,C2748,C2749,C2750,C2751,C2752,C2753,C2754,C2755,C2756,C2757,C2758,C2759,C2760,C2761,C2762,C2763,C2764,C2765,C2766,C2767,C2768,C2769,C2770,C2771,C2772,C2773,C2774,C2775,C2776,C2777,C2778,C2779,C2780,C2781,C2782,C2783,C2784,C2785,C2786,C2787,C2788,C2789,C2790,C2791,C2792,C2793,C2794,C2795,C2796,C2797,C2798,C2799,C2800,C2801,C2802,C2803,C2804,C2805,C2806,C2807,C2808,C2809,C2810,C2811,C2812,C2813,C2814,C2815,C2816,C2817,C2818,C2819,C2820,C2821,C2822,C2823,C2824,C2825,C2826,C2827,C2828,C2829,C2830,C2831,C2832,C2833,C2834,C2835,C2836,C2837,C2838,C2839,C2840,C2841,C2842,C2843,C2844,C2845,C2846,C2847,C2848,C2849,C2850,C2851,C2852,C2853,C2854,C2855,C2856,C2857,C2858,C2859,C2860,C2861,C2862,C2863,C2864,C2865,C2866,C2867,C2868,C2869,C2870,C2871,C2872,C2873,C2874,C2875,C2876,C2877,C2878,C2879,C2880,C2881,C2882,C2883,C2884,C2885,C2886,C2887,C2888,C2889,C2890,C2891,C2892,C2893,C2894,C2895,C2896,C2897,C2898,C2899,C2900,C2901,C2902,C2903,C2904,C2905,C2906,C2907,C2908,C2909,C2910,C2911,C2912,C2913,C2914,C2915,C2916,C2917,C2918,C2919,C2920,C2921,C2922,C2923,C2924,C2925,C2926,C2927,C2928,C2929,C2930,C2931,C2932,C2933,C2934,C2935,C2936,C2937,C2938,C2939,C2940,C2941,C2942,C2943,C2944,C2945,C2946,C2947,C2948,C2949,C2950,C2951,C2952,C2953,C2954,C2955,C2956,C2957,C2958,C2959,C2960,C2961,C2962,C2963,C2964,C2965,C2966,C2967,C2968,C2969,C2970,C2971,C2972,C2973,C2974,C2975,C2976,C2977,C2978,C2979,C2980,C2981,C2982,C2983,C2984,C2985,C2986,C2987,C2988,C2989,C2990,C2991,C2992,C2993,C2994,C2995,C2996,C2997,C2998,C2999,C3000,C3001,C3002,C3003,C3004,C3005,C3006,C3007,C3008,C3009,C3010,C3011,C3012,C3013,C3014,C3015,C3016,C3017,C3018,C3019,C3020,C3021,C3022,C3023,C3024,C3025,C3026,C3027,C3028,C3029,C3030,C3031,C3032,C3033,C3034,C3035,C3036,C3037,C3038,C3039,C3040,C3041,C3042,C3043,C3044,C3045,C3046,C3047,C3048,C3049,C3050,C3051,C3052,C3053,C3054,C3055,C3056,C3057,C3058,C3059,C3060,C3061,C3062,C3063,C3064,C3065,C3066,C3067,C3068,C3069,C3070,C3071,C3072,C3073,C3074,C3075,C3076,C3077,C3078,C3079,C3080,C3081,C3082,C3083,C3084,C3085,C3086,C3087,C3088,C3089,C3090,C3091,C3092,C3093,C3094,C3095,C3096,C3097,C3098,C3099,C3100,C3101,C3102,C3103,C3104,C3105,C3106,C3107,C3108,C3109,C3110,C3111,C3112,C3113,C3114,C3115,C3116,C3117,C3118,C3119,C3120,C3121,C3122,C3123,C3124,C3125,C3126,C3127,C3128,C3129,C3130,C3131,C3132,C3133,C3134,C3135,C3136,C3137,C3138,C3139,C3140,C3141,C3142,C3143,C3144,C3145,C3146,C3147,C3148,C3149,C3150,C3151,C3152,C3153,C3154,C3155,C3156,C3157,C3158,C3159,C3160,C3161,C3162,C3163,C3164,C3165,C3166,C3167,C3168,C3169,C3170,C3171,C3172,C3173,C3174,C3175,C3176,C3177,C3178,C3179,C3180,C3181,C3182,C3183,C3184,C3185,C3186,C3187,C3188,C3189,C3190,C3191,C3192,C3193,C3194,C3195,C3196,C3197,C3198,C3199,C3200,C3201,C3202,C3203,C3204,C3205,C3206,C3207,C3208,C3209,C3210,C3211,C3212,C3213,C3214,C3215,C3216,C3217,C3218,C3219,C3220,C3221,C3222,C3223,C3224,C3225,C3226,C3227,C3228,C3229,C3230,C3231,C3232,C3233,C3234,C3235,C3236,C3237,C3238,C3239,C3240,C3241,C3242,C3243,C3244,C3245,C3246,C3247,C3248,C3249,C3250,C3251,C3252,C3253,C3254,C3255,C3256,C3257,C3258,C3259,C3260,C3261,C3262,C3263,C3264,C3265,C3266,C3267,C3268,C3269,C3270,C3271,C3272,C3273,C3274,C3275,C3276,C3277,C3278,C3279,C3280,C3281,C3282,C3283,C3284,C3285,C3286,C3287,C3288,C3289,C3290,C3291,C3292,C3293,C3294,C3295,C3296,C3297,C3298,C3299,C3300,C3301,C3302,C3303,C3304,C3305,C3306,C3307,C3308,C3309,C3310,C3311,C3312,C3313,C3314,C3315,C3316,C3317,C3318,C3319,C3320,C3321,C3322,C3323,C3324,C3325,C3326,C3327,C3328,C3329,C3330,C3331,C3332,C3333,C3334,C3335,C3336,C3337,C3338,C3339,C3340,C3341,C3342,C3343,C3344,C3345,C3346,C3347,C3348,C3349,C3350,C3351,C3352,C3353,C3354,C3355,C3356,C3357,C3358,C3359,C3360,C3361,C3362,C3363,C3364,C3365,C3366,C3367,C3368,C3369,C3370,C3371,C3372,C3373,C3374,C3375,C3376,C3377,C3378,C3379,C3380,C3381,C3382,C3383,C3384,C3385,C3386,C3387,C3388,C3389,C3390,C3391,C3392,C3393,C3394,C3395,C3396,C3397,C3398,C3399,C3400,C3401,C3402,C3403,C3404,C3405,C3406,C3407,C3408,C3409,C3410,C3411,C3412,C3413,C3414,C3415,C3416,C3417,C3418,C3419,C3420,C3421,C3422,C3423,C3424,C3425,C3426,C3427,C3428,C3429,C3430,C3431,C3432,C3433,C3434,C3435,C3436,C3437,C3438,C3439,C3440,C3441,C3442,C3443,C3444,C3445,C3446,C3447,C3448,C3449,C3450,C3451,C3452,C3453,C3454,C3455,C3456,C3457,C3458,C3459,C3460,C3461,C3462,C3463,C3464,C3465,C3466,C3467,C3468,C3469,C3470,C3471,C3472,C3473,C3474,C3475,C3476,C3477,C3478,C3479,C3480,C3481,C3482,C3483,C3484,C3485,C3486,C3487,C3488,C3489,C3490,C3491,C3492,C3493,C3494,C3495,C3496,C3497,C3498,C3499,C3500,C3501,C3502,C3503,C3504,C3505,C3506,C3507,C3508,C3509,C3510,C3511,C3512,C3513,C3514,C3515,C3516,C3517,C3518,C3519,C3520,C3521,C3522,C3523,C3524,C3525,C3526,C3527,C3528,C3529,C3530,C3531,C3532,C3533,C3534,C3535,C3536,C3537,C3538,C3539,C3540,C3541,C3542,C3543,C3544,C3545,C3546,C3547,C3548,C3549,C3550,C3551,C3552,C3553,C3554,C3555,C3556,C3557,C3558,C3559,C3560,C3561,C3562,C3563,C3564,C3565,C3566,C3567,C3568,C3569,C3570,C3571,C3572,C3573,C3574,C3575,C3576,C3577,C3578,C3579,C3580,C3581,C3582,C3583,C3584,C3585,C3586,C3587,C3588,C3589,C3590,C3591,C3592,C3593,C3594,C3595,C3596,C3597,C3598,C3599,C3600,C3601,C3602,C3603,C3604,C3605,C3606,C3607,C3608,C3609,C3610,C3611,C3612,C3613,C3614,C3615,C3616,C3617,C3618,C3619,C3620,C3621,C3622,C3623,C3624,C3625,C3626,C3627,C3628,C3629,C3630,C3631,C3632,C3633,C3634,C3635,C3636,C3637,C3638,C3639,C3640,C3641,C3642,C3643,C3644,C3645,C3646,C3647,C3648,C3649,C3650,C3651,C3652,C3653,C3654,C3655,C3656,C3657,C3658,C3659,C3660,C3661,C3662,C3663,C3664,C3665,C3666,C3667,C3668,C3669,C3670,C3671,C3672,C3673,C3674,C3675,C3676,C3677,C3678,C3679,C3680,C3681,C3682,C3683,C3684,C3685,C3686,C3687,C3688,C3689,C3690,C3691,C3692,C3693,C3694,C3695,C3696,C3697,C3698,C3699,C3700,C3701,C3702,C3703,C3704,C3705,C3706,C3707,C3708,C3709,C3710,C3711,C3712,C3713,C3714,C3715,C3716,C3717,C3718,C3719,C3720,C3721,C3722,C3723,C3724,C3725,C3726,C3727,C3728,C3729,C3730,C3731,C3732,C3733,C3734,C3735,C3736,C3737,C3738,C3739,C3740,C3741,C3742,C3743,C3744,C3745,C3746,C3747,C3748,C3749,C3750,C3751,C3752,C3753,C3754,C3755,C3756,C3757,C3758,C3759,C3760,C3761,C3762,C3763,C3764,C3765,C3766,C3767,C3768,C3769,C3770,C3771,C3772,C3773,C3774,C3775,C3776,C3777,C3778,C3779,C3780,C3781,C3782,C3783,C3784,C3785,C3786,C3787,C3788,C3789,C3790,C3791,C3792,C3793,C3794,C3795,C3796,C3797,C3798,C3799,C3800,C3801,C3802,C3803,C3804,C3805,C3806,C3807,C3808,C3809,C3810,C3811,C3812,C3813,C3814,C3815,C3816,C3817,C3818,C3819,C3820,C3821,C3822,C3823,C3824,C3825,C3826,C3827,C3828,C3829,C3830,C3831,C3832,C3833,C3834,C3835,C3836,C3837,C3838,C3839,C3840,C3841,C3842,C3843,C3844,C3845,C3846,C3847,C3848,C3849,C3850,C3851,C3852,C3853,C3854,C3855,C3856,C3857,C3858,C3859,C3860,C3861,C3862,C3863,C3864,C3865,C3866,C3867,C3868,C3869,C3870,C3871,C3872,C3873,C3874,C3875,C3876,C3877,C3878,C3879,C3880,C3881,C3882,C3883,C3884,C3885,C3886,C3887,C3888,C3889,C3890,C3891,C3892,C3893,C3894,C3895,C3896,C3897,C3898,C3899,C3900,C3901,C3902,C3903,C3904,C3905,C3906,C3907,C3908,C3909,C3910,C3911,C3912,C3913,C3914,C3915,C3916,C3917,C3918,C3919,C3920,C3921,C3922,C3923,C3924,C3925,C3926,C3927,C3928,C3929,C3930,C3931,C3932,C3933,C3934,C3935,C3936,C3937,C3938,C3939,C3940,C3941,C3942,C3943,C3944,C3945,C3946,C3947,C3948,C3949,C3950,C3951,C3952,C3953,C3954,C3955,C3956,C3957,C3958,C3959,C3960,C3961,C3962,C3963,C3964,C3965,C3966,C3967,C3968,C3969,C3970,C3971,C3972,C3973,C3974,C3975,C3976,C3977,C3978,C3979,C3980,C3981,C3982,C3983,C3984,C3985,C3986,C3987,C3988,C3989,C3990,C3991,C3992,C3993,C3994,C3995,C3996,C3997,C3998,C3999,C4000,C4001,C4002,C4003,C4004,C4005,C4006,C4007,C4008,C4009,C4010,C4011,C4012,C4013,C4014,C4015,C4016,C4017,C4018,C4019,C4020,C4021,C4022,C4023,C4024,C4025,C4026,C4027,C4028,C4029,C4030,C4031,C4032,C4033,C4034,C4035,C4036,C4037,C4038,C4039,C4040,C4041,C4042,C4043,C4044,C4045,C4046,C4047,C4048,C4049,C4050,C4051,C4052,C4053,C4054,C4055,C4056,C4057,C4058,C4059,C4060,C4061,C4062,C4063,C4064,C4065,C4066,C4067,C4068,C4069,C4070,C4071,C4072,C4073,C4074,C4075,C4076,C4077,C4078,C4079,C4080,C4081,C4082,C4083,C4084,C4085,C4086,C4087,C4088,C4089,C4090,C4091,C4092,C4093,C4094,C4095,C4096,C4097,C4098,C4099,C4100,C4101,C4102,C4103,C4104,C4105,C4106,C4107,C4108,C4109,C4110,C4111,C4112,C4113,C4114,C4115,C4116,C4117,C4118,C4119,C4120,C4121,C4122,C4123,C4124,C4125,C4126,C4127,C4128,C4129,C4130,C4131,C4132,C4133,C4134,C4135,C4136,C4137,C4138,C4139,C4140,C4141,C4142,C4143,C4144,C4145,C4146,C4147,C4148,C4149,C4150,C4151,C4152,C4153,C4154,C4155,C4156,C4157,C4158,C4159,C4160,C4161,C4162,C4163,C4164,C4165,C4166,C4167,C4168,C4169,C4170,C4171,C4172,C4173,C4174,C4175,C4176,C4177,C4178,C4179,C4180,C4181,C4182,C4183,C4184,C4185,C4186,C4187,C4188,C4189,C4190,C4191,C4192,C4193,C4194,C4195,C4196,C4197,C4198,C4199,C4200,C4201,C4202,C4203,C4204,C4205,C4206,C4207,C4208,C4209,C4210,C4211,C4212,C4213,C4214,C4215,C4216,C4217,C4218,C4219,C4220,C4221,C4222,C4223,C4224,C4225,C4226,C4227,C4228,C4229,C4230,C4231,C4232,C4233,C4234,C4235,C4236,C4237,C4238,C4239,C4240,C4241,C4242,C4243,C4244,C4245,C4246,C4247,C4248,C4249,C4250,C4251,C4252,C4253,C4254,C4255,C4256,C4257,C4258,C4259,C4260,C4261,C4262,C4263,C4264,C4265,C4266,C4267,C4268,C4269,C4270,C4271,C4272,C4273,C4274,C4275,C4276,C4277,C4278,C4279,C4280,C4281,C4282,C4283,C4284,C4285,C4286,C4287,C4288,C4289,C4290,C4291,C4292,C4293,C4294,C4295,C4296,C4297,C4298,C4299,C4300,C4301,C4302,C4303,C4304,C4305,C4306,C4307,C4308,C4309,C4310,C4311,C4312,C4313,C4314,C4315,C4316,C4317,C4318,C4319,C4320,C4321,C4322,C4323,C4324,C4325,C4326,C4327,C4328,C4329,C4330,C4331,C4332,C4333,C4334,C4335,C4336,C4337,C4338,C4339,C4340,C4341,C4342,C4343,C4344,C4345,C4346,C4347,C4348,C4349,C4350,C4351,C4352,C4353,C4354,C4355,C4356,C4357,C4358,C4359,C4360,C4361,C4362,C4363,C4364,C4365,C4366,C4367,C4368,C4369,C4370,C4371,C4372,C4373,C4374,C4375,C4376,C4377,C4378,C4379,C4380,C4381,C4382,C4383,C4384,C4385,C4386,C4387,C4388,C4389,C4390,C4391,C4392,C4393,C4394,C4395,C4396,C4397,C4398,C4399,C4400,C4401,C4402,C4403,C4404,C4405,C4406,C4407,C4408,C4409,C4410,C4411,C4412,C4413,C4414,C4415,C4416,C4417,C4418,C4419,C4420,C4421,C4422,C4423,C4424,C4425,C4426,C4427,C4428,C4429,C4430,C4431,C4432,C4433,C4434,C4435,C4436,C4437,C4438,C4439,C4440,C4441,C4442,C4443,C4444,C4445,C4446,C4447,C4448,C4449,C4450,C4451,C4452,C4453,C4454,C4455,C4456,C4457,C4458,C4459,C4460,C4461,C4462,C4463,C4464,C4465,C4466,C4467,C4468,C4469,C4470,C4471,C4472,C4473,C4474,C4475,C4476,C4477,C4478,C4479,C4480,C4481,C4482,C4483,C4484,C4485,C4486,C4487,C4488,C4489,C4490,C4491,C4492,C4493,C4494,C4495,C4496,C4497,C4498,C4499,C4500,C4501) FROM data LIMIT 10000;'




