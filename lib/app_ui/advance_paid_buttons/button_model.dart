class ImageDescModel {
  final String imagePath;
  final String imageDesc;

  ImageDescModel({required this.imagePath, required this.imageDesc});
}

class ButtonModel {
  final String btnName;
  final List<ImageDescModel> imagesDescriptions;

  ButtonModel({required this.btnName, required this.imagesDescriptions});
}

class MercedesBenzChassisChartModel {
  final String chassisNumber;
  final String years;
  final String modelNumber;
  final String engineNumber;

  MercedesBenzChassisChartModel(
      {required this.chassisNumber,
      required this.years,
      required this.modelNumber,
      required this.engineNumber});
}

List<MercedesBenzChassisChartModel> mercedesBenzData = [
  MercedesBenzChassisChartModel(
      chassisNumber: "A-CLASS (W169)",
      years: "2004 – 2012",
      modelNumber: "A 150 (169.031, 169.331)",
      engineNumber: "70 KW / 95 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "A-CLASS (W169)",
      years: "2009 – 2012",
      modelNumber: "A 160 (169.031, 169.331)",
      engineNumber: "70 KW / 95 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "A-CLASS (W169)",
      years: "2004 – 2012",
      modelNumber: "A 170 (169.032, 169.332)",
      engineNumber: "85 KW / 116 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "A-CLASS (W169)",
      years: "2004 – 2012",
      modelNumber: "A 200 (169.033, 169.333)",
      engineNumber: "100 KW / 136 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "A-CLASS (W169)",
      years: "2005 – 2012",
      modelNumber: "A 200 TURBO (169.034, 169.33",
      engineNumber: "142 KW / 193 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "B-CLASS (W245)",
      years: "2005 – 2011",
      modelNumber: "B 150 (245.231)",
      engineNumber: "70 KW / 95 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "B-CLASS (W245)",
      years: "2005 – 2011",
      modelNumber: "B 170 (245.232)",
      engineNumber: "85 KW / 116 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "B-CLASS (W245)",
      years: "2005 – 2011",
      modelNumber: "B 200 (245.233)",
      engineNumber: "100 KW / 136 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "B-CLASS (W245)",
      years: "2005 – 2011",
      modelNumber: "B 200 TURBO (245.234)",
      engineNumber: "142 KW / 193 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W202)",
      years: "1997 – 2000",
      modelNumber: "C 240 (202.026)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W202)",
      years: "1997 – 2000",
      modelNumber: "C 280 (202.029)",
      engineNumber: "145 KW / 197 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W202)",
      years: "1997 – 2000",
      modelNumber: "C 43 AMG (202.033)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2000 – 2007",
      modelNumber: "C 240 (203.061)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2002 – 2007",
      modelNumber: "C 240 4-matic (203.081)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2001 – 2007",
      modelNumber: "C 32 AMG Kompressor (203.06",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2000 – 2007",
      modelNumber: "C 320 (203.064)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2002 – 2007",
      modelNumber: "C 320 4-matic (203.084)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS (W203)",
      years: "2004 – 2007",
      modelNumber: "C 55 AMG (203.076)",
      engineNumber: "270 KW / 367 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS Coupe (CL203)",
      years: "2002 – 2008",
      modelNumber: "C 320 (203.764)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS Estate (S202)",
      years: "1997 – 2000",
      modelNumber: "C 240 T (202.086)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS Estate (S202)",
      years: "2000 – 2001",
      modelNumber: "C 240 T (202.088)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS Estate (S202)",
      years: "1997 – 2001",
      modelNumber: "C 280 T (202.089)",
      engineNumber: "145 KW / 197 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS Estate (S202)",
      years: "1997 – 2001",
      modelNumber: "C 43 AMG (202.093)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS T-Model (S203)",
      years: "2001 – 2007",
      modelNumber: "C 240 (203.261)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS T-Model (S203)",
      years: "2002 – 2007",
      modelNumber: "C 240 4-matic (203.281)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS T-Model (S203)",
      years: "2001 – 2007",
      modelNumber: "C 32 AMG Kompressor (203.26",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS T-Model (S203)",
      years: "2001 – 2007",
      modelNumber: "C 320 (203.264)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "C-CLASS T-Model (S203)",
      years: "2002 – 2007",
      modelNumber: "C 320 4-matic (203.284)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C208)",
      years: "1997 – 2002",
      modelNumber: "CLK 320 (208.365)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C208)",
      years: "1998 – 2002",
      modelNumber: "CLK430 (208.370)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C208)",
      years: "1999 – 2002",
      modelNumber: "CLK 55 AMG (208.374)",
      engineNumber: "255 KW / 347 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C209)",
      years: "2002 – 2009",
      modelNumber: "CLK 240 (209.361)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C209)",
      years: "2002 – 2009",
      modelNumber: "CLK 320 (209.365)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C209)",
      years: "2002 – 2009",
      modelNumber: "CLK 500 (209.375)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK (C209)",
      years: "2002 – 2009",
      modelNumber: "CLK 55 AMG (209.376)",
      engineNumber: "270 KW / 367 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A208)",
      years: "1998 – 2002",
      modelNumber: "CLK 320 (208.465)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A208)",
      years: "1998 – 2002",
      modelNumber: "CLK 430 (208.470)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A209)",
      years: "2003 – 2010",
      modelNumber: "CLK 240 (209.461)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A209)",
      years: "2003 – 2010",
      modelNumber: "CLK 320 (209.465)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A209)",
      years: "2003 – 2010",
      modelNumber: "CLK 500 (209.475)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "CLK Convertible (A209)",
      years: "2003 – 2010",
      modelNumber: "CLK 55 AMG (209.476)",
      engineNumber: "270 KW / 367 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1997 – 2000",
      modelNumber: "E 240 (210.061)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "2000 – 2002",
      modelNumber: "E 240 (210.062)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1996 – 2002",
      modelNumber: "E 280 (210.063)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1996 – 2002",
      modelNumber: "E 280 4-matic (210.081)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1997 – 2002",
      modelNumber: "E 320 (210.065)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1997 – 2002",
      modelNumber: "E 320 4-matic (210.082)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1997 – 2002",
      modelNumber: "E 430 (210.070)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1999 – 2002",
      modelNumber: "E 430 4-matic (210.083)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W210)",
      years: "1997 – 2002",
      modelNumber: "E 55 AMG (210.074)",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2002 – 2008",
      modelNumber: "E 240 (211.061)",
      engineNumber: "130 KW / 177 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2003 – 2008",
      modelNumber: "E 240 4-matic (211.080)",
      engineNumber: "130 KW / 177 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2002 – 2008",
      modelNumber: "E 320 (211.065)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2003 – 2008",
      modelNumber: "E 320 4-matic (211.082)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2002 – 2008",
      modelNumber: "E 500 (211.070)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2003 – 2008",
      modelNumber: "E 500 4-matic (211.083)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS (W211)",
      years: "2002 – 2008",
      modelNumber: "E 55 AMG Kompressor (211.07",
      engineNumber: "350 KW / 476 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1997 – 2003",
      modelNumber: "E 240 T (210.261)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "2000 – 2003",
      modelNumber: "E 240 T (210.262)",
      engineNumber: "125 KW / 170 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1996 – 2003",
      modelNumber: "E 280 T (210.263)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1996 – 2003",
      modelNumber: "E 280 T 4-matic (210.281)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1996 – 2003",
      modelNumber: "E 320 T (210.265)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1996 – 2003",
      modelNumber: "E 320 T 4-matic (210.282)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1997 – 2003",
      modelNumber: "E 430 T (210.270)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1999 – 2003",
      modelNumber: "E 430 T 4-matic (210.283)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS Estate (S210)",
      years: "1997 – 2003",
      modelNumber: "E 55 T AMG (210.274)",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S211)",
      years: "2003 – 2009",
      modelNumber: "E 240 T (211.261)",
      engineNumber: "130 KW / 177 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S211)",
      years: "2003 – 2009",
      modelNumber: "E 240 T 4-matic (211.280)",
      engineNumber: "130 KW / 177 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S211)",
      years: "2003 – 2009",
      modelNumber: "E 320 T (211.265)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S211)",
      years: "2003 – 2009",
      modelNumber: "E 320 T 4-matic (211.282)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S",
      years: "2003 – 2009",
      modelNumber: "E 500 T (211.270)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S",
      years: "2003 – 2009",
      modelNumber: "E 500 T 4-matic (211.283)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "E-CLASS T-Model (S211)",
      years: "2003 – 2009",
      modelNumber: "E 55 T AMG Kompressor (211.",
      engineNumber: "350 KW / 476 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS (W463)",
      years: "1997 – 2015",
      modelNumber: "G 320 (463.232, 463,233, 463,2",
      engineNumber: "158 KW / 215 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS (W463)",
      years: "1998 – 2015",
      modelNumber: "G 500 (463.247, 463,248, 463,2",
      engineNumber: "218 KW / 296 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS (W463)",
      years: "1999 – 2015",
      modelNumber: "G 55 AMG (463.243, 463.246)",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS (W463)",
      years: "2004 – 2015",
      modelNumber: "G 55 AMG (463.270, 463.271)",
      engineNumber: "350 KW / 476 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS Cabrio (W463)",
      years: "1997 – 2015",
      modelNumber: "G 320 (463.209)",
      engineNumber: "158 KW / 215 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-CLASS Cabrio (W463)",
      years: "1998 – 2015",
      modelNumber: "G 500 (463)",
      engineNumber: "218 KW / 296 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "1998 – 2002",
      modelNumber: "ML 320 (163.154)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "2003 – 2005",
      modelNumber: "ML 350",
      engineNumber: "173 KW / 235 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "2002 – 2005",
      modelNumber: "ML 350 (163.157)",
      engineNumber: "180 KW / 245 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "1998 – 2005",
      modelNumber: "ML 430 (163.172)",
      engineNumber: "200 KW / 272 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "2001 – 2005",
      modelNumber: "ML 500 (163.175)",
      engineNumber: "215 KW / 292 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W163)",
      years: "2000 – 2005",
      modelNumber: "ML 55 AMG (163.174)",
      engineNumber: "255 KW / 347 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "M-CLASS (W164)",
      years: "2005 – 2015",
      modelNumber: "ML 500 4-matic (164.175)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "R-CLASS (W251, V25",
      years: "2006 – 2015",
      modelNumber: "R 500 4-matic (251.075, 251.17",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "1998 – 2005",
      modelNumber: "S 280 (220.063, 220.163)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "1998 – 2005",
      modelNumber: "S 320 (220.065, 220.165)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "2002 – 2005",
      modelNumber: "S 350 (220.067, 220.167)",
      engineNumber: "180 KW / 245 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "2003 – 2005",
      modelNumber: "S 350 4-matic (220.087, 220.18",
      engineNumber: "180 KW / 245 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "1998 – 2005",
      modelNumber: "430 S (220.070, 220.170)",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "2002 – 2005",
      modelNumber: "S 430 4-matic (220.083, 220.18",
      engineNumber: "205 KW / 279 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "1998 – 2005",
      modelNumber: "S 500 (220.075, 220,175, 220.8",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "2002 – 2005",
      modelNumber: "S 500 4-matic (220.084, 220.18",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "1999 – 2005",
      modelNumber: "S 55 AMG (220.073, 220.173)",
      engineNumber: "265 KW / 360 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS (W220)",
      years: "2002 – 2005",
      modelNumber: "S 55 AMG Kompressor (220.07",
      engineNumber: "368 KW / 500 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS Coupe (C21",
      years: "1999 – 2006",
      modelNumber: "CL 500 (215.375)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS Coupe (C21",
      years: "1999 – 2006",
      modelNumber: "CL 55 AMG (215.373)",
      engineNumber: "265 KW / 360 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "S-CLASS Coupe (C21",
      years: "2002 – 2006",
      modelNumber: "CL 55 AMG Kompressor (215.3",
      engineNumber: "368 KW / 500 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R129)",
      years: "1998 – 2001",
      modelNumber: "280 (129.059)",
      engineNumber: "150 KW / 204 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R129)",
      years: "1998 – 2001",
      modelNumber: "320 (129.064)",
      engineNumber: "165 KW / 224 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R129)",
      years: "1998 – 2001",
      modelNumber: "500 (129.068)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R230)",
      years: "2003 – 2012",
      modelNumber: "350 (230.467)",
      engineNumber: "180 KW / 245 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R230)",
      years: "2001 – 2012",
      modelNumber: "500 (230.475)",
      engineNumber: "225 KW / 306 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R230)",
      years: "2006 – 2012",
      modelNumber: "55 AMG",
      engineNumber: "380 KW / 517 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R230)",
      years: "2001 – 2002",
      modelNumber: "55 AMG (230.474)",
      engineNumber: "350 KW / 476 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SL (R230)",
      years: "2002 – 2012",
      modelNumber: "55 AMG Kompressor (230.474)",
      engineNumber: "368 KW / 500 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLK (R170)",
      years: "2001 – 2004",
      modelNumber: "32 AMG Kompressor (170.466)",
      engineNumber: "260 KW / 354 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLK (R170)",
      years: "2000 – 2004",
      modelNumber: "320 (170.465)",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLK (R171)",
      years: "2004 – 2011",
      modelNumber: "55 AMG (171.473)",
      engineNumber: "265 KW / 360 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLR (R199)",
      years: "2004 – 2015",
      modelNumber: "5.4 (199.376)",
      engineNumber: "460 KW / 626 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLR (R199)",
      years: "2006 – 2015",
      modelNumber: "Edition 5.4 722",
      engineNumber: "478 KW / 650 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLR ROADSTER (R199)",
      years: "2007 – 2015",
      modelNumber: "5.4",
      engineNumber: "460 KW / 626 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "SLR ROADSTER (R199)",
      years: "2006 – 2015",
      modelNumber: "5.4",
      engineNumber: "478 KW / 650 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VIANO (W639)",
      years: "2003 – 2015",
      modelNumber: "3",
      engineNumber: "140 KW / 190 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VIANO (W639)",
      years: "2003 – 2015",
      modelNumber: "3.2",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VIANO (W639)",
      years: "2004 – 2015",
      modelNumber: "3.7",
      engineNumber: "170 KW / 231 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VITO / mixto Box (W639)",
      years: "2003 – 2015",
      modelNumber: "119",
      engineNumber: "140 KW / 190 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VITO / mixto Box (W639)",
      years: "2003 – 2015",
      modelNumber: "122",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VITO Bus (W639)",
      years: "2003 – 2015",
      modelNumber: "119",
      engineNumber: "140 KW / 190 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VITO Bus (W639)",
      years: "2003 – 2015",
      modelNumber: "122",
      engineNumber: "160 KW / 218 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "VITO Bus (W639)",
      years: "2004 – 2015",
      modelNumber: "123",
      engineNumber: "170 KW / 231 HP"),
  MercedesBenzChassisChartModel(
      chassisNumber: "G-MODELL (W 463)",
      years: "1999 – 2015",
      modelNumber: "G 55 AMG",
      engineNumber: "260 KW / 354 HP"),
];

ButtonModel audiQ2014 =
    ButtonModel(btnName: 'Audi Q7 2014', imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/1.jpg",
      imageDesc: "Use lishi to get cuts and cut a key or by key code"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/2.jpg",
      imageDesc:
          "Contact a third party calculator and ask him what info you need to read for this vehicle"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/3.jpg",
      imageDesc: "You will need cag ignition on force tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/4.jpg",
      imageDesc: "Connect it with vvdi2 and turn it on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/5.jpg",
      imageDesc: "Open vvdi2 and press audi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/6.jpg",
      imageDesc: "Press engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/7.jpg",
      imageDesc: "Press customer requests"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/8.jpg",
      imageDesc:
          "Input the data that you received from third party and press send"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/9.jpg",
      imageDesc: "You will see translated data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/10.jpg",
      imageDesc: "Input the remaining data and press send"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/11.jpg",
      imageDesc: "Press save"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/12.jpg",
      imageDesc: "Create a file and name it  the vin number"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/13.jpg",
      imageDesc: "Save the file as engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/14.jpg",
      imageDesc: "Send the file to third party"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/15.jpg",
      imageDesc: "Third party will send you a file back, save it as immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/16.jpg",
      imageDesc: "Open vvdi2 and press audi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/17.jpg",
      imageDesc: "Press key learn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/18.jpg",
      imageDesc: "Press audi a6/q7"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/19.jpg",
      imageDesc: "Press j518 eeprom prepare key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/20.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/21.jpg",
      imageDesc: "Open the immo data file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/22.jpg",
      imageDesc: "Input transponder in the vvdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/23.jpg",
      imageDesc: "Put a 8e chip in the key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/24.jpg",
      imageDesc: "Put key in vvdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/25.jpg",
      imageDesc: "Now you have prepared a dealer key, press learn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/26.jpg",
      imageDesc: "Press get pin czs from ezs"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/27.jpg",
      imageDesc: "Press load j518 eeprom dump file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/28.jpg",
      imageDesc: "Load the immo data file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/29.jpg",
      imageDesc: "Load success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/30.jpg",
      imageDesc: "Press next"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/31.jpg",
      imageDesc: "Follow instructions and than press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/32.jpg",
      imageDesc: "Insert key in ignition and turn on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/audiQ2014/33.jpg",
      imageDesc:
          "You will see 0/1 turn to 1/1. You are done you can start the car!"),
]);

ButtonModel bmw525KeyProgram =
    ButtonModel(btnName: "BMW 525 2006 Key Program", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/1.jpg",
      imageDesc: "Open vvdi2 and press bmw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/2.jpg",
      imageDesc: "Press key learn and then cas key learn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/3.jpg",
      imageDesc: "Press connect"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/4.jpg",
      imageDesc: "Press get key info"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/5.jpg",
      imageDesc: "Choose all keys lost and press next"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/6.jpg",
      imageDesc: "Press ok and save the info if you want"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/7.jpg",
      imageDesc:
          "Choose a free key slot and press prepare dealer key with programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/8.jpg",
      imageDesc: "Press ok after you put key in programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/9.jpg",
      imageDesc: "Put key in programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/10.jpg",
      imageDesc: "Press no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/11.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw525KeyProgram/12.jpg",
      imageDesc: "You are done start the car!"),
]);

ButtonModel bmw528i2014 =
    ButtonModel(btnName: "BMW 528i 2014 (cas4)", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/1.jpg",
      imageDesc: "You will need to read isn number first so Remove this cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/2.jpg",
      imageDesc: "This is an n20 dme"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/3.jpg",
      imageDesc: "Remove these 3 connectors"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/4.jpg",
      imageDesc: "You will need this n20 adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/5.jpg",
      imageDesc: "Connect these 2 cables together"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/6.jpg",
      imageDesc: "Connect this side to the adaptor and connect it to the dme"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/7.jpg",
      imageDesc: "Connect other side of the cable to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/8.jpg",
      imageDesc: "Connect the autel vci to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/9.jpg",
      imageDesc: "Connect 12v cable to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/10.jpg",
      imageDesc: "Start up autel and press immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/11.jpg",
      imageDesc: "Press BMW"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/12.jpg",
      imageDesc: "Press Manual Selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/13.jpg",
      imageDesc: "Press 5 series"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/14.jpg",
      imageDesc: "Press f07"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/15.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/16.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/17.jpg",
      imageDesc: "Press engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/18.jpg",
      imageDesc: "Press direct"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/19.jpg",
      imageDesc:
          "You will need wifi for this, I recommend third party and not a phone hotstop"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/20.jpg",
      imageDesc: "Press bench"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/21.jpg",
      imageDesc: "Press f chassis"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/22.jpg",
      imageDesc: "Press bosch"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/23.jpg",
      imageDesc: "Press read/write isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/24.jpg",
      imageDesc: "Press mevd17.2.9"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/25.jpg",
      imageDesc:
          "You will see a diagram for use if you don’t have the adaptor, if you have adaptor press ok to continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/26.jpg",
      imageDesc: "Connect usb to autel and other side to vci"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/27.jpg",
      imageDesc: "Disable BT"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/28.jpg",
      imageDesc: "It will start downloading the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/29.jpg",
      imageDesc: "It will connect to network"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/30.jpg",
      imageDesc: "It will download file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/31.jpg",
      imageDesc: "Communicating please wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/32.jpg",
      imageDesc: "It will start reading the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/33.jpg",
      imageDesc: "Save the data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/34.jpg",
      imageDesc: "It will show the isn, Take a photo of the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/35.jpg",
      imageDesc: "Connect these back in place"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/36.jpg",
      imageDesc: "Connect vci to obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/37.jpg",
      imageDesc: "Press BMW"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/38.jpg",
      imageDesc: "Press manual selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/39.jpg",
      imageDesc: "Press 5 series"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/40.jpg",
      imageDesc: "Press f07"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/41.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/42.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/43.jpg",
      imageDesc: "Press cas4"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/44.jpg",
      imageDesc: "Press key operation"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/45.jpg",
      imageDesc: "Press key learning"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/46.jpg",
      imageDesc: "Press learning via obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/47.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/48.jpg",
      imageDesc: "Press obd read sk"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/49.jpg",
      imageDesc: "Read, follow instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/50.jpg",
      imageDesc: "Read, follow instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/51.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/52.jpg", imageDesc: "Wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/53.jpg",
      imageDesc: "Preparing"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/54.jpg",
      imageDesc: "It will start the program, read"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/55.jpg",
      imageDesc: "Wait..."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/56.jpg",
      imageDesc: "Wait..."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/57.jpg",
      imageDesc: "Choose yes or no, in this case no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/58.jpg",
      imageDesc: "Take a photo of this info and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/59.jpg",
      imageDesc: "Enter the dme isn number that you got the first time"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/60.jpg",
      imageDesc: "This is isn that we got in th beginning"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/61.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/62.jpg",
      imageDesc: "Choose a free slot and press write key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/63.jpg",
      imageDesc: "Read and follow instructions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/64.jpg",
      imageDesc: "Place a blank key on the coil"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/65.jpg",
      imageDesc: "Success, follow instructions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/66.jpg",
      imageDesc: "Leave the key on coil and hold the start button"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw528i2014/67.jpg",
      imageDesc: "And start the car you are done!"),
]);

ButtonModel bmw740KeyProgram2013 =
    ButtonModel(btnName: "BMW 740 2013 Key Program", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/1.jpg",
      imageDesc: "The ecu is located here"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/2.jpg",
      imageDesc: "Remove the 3 connectors on the left"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/3.jpg",
      imageDesc: "You will need this adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/4.jpg",
      imageDesc: "Connect these 2 cables together"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/5.jpg",
      imageDesc: "Connect one side to the adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/6.jpg",
      imageDesc: "Connect the adaptor to the ecu"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/7.jpg",
      imageDesc: "Connect other side of the cable to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/8.jpg",
      imageDesc: "Make sure you have wifi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/9.jpg",
      imageDesc: "Connect 12 v to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/10.jpg",
      imageDesc: "Connect the vci to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/11.jpg",
      imageDesc: "Connect a usb cable from the autel to the vci"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/12.jpg",
      imageDesc: "Turn off bluetooth"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/13.jpg",
      imageDesc: "Press immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/14.jpg",
      imageDesc: "Press accept"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/15.jpg",
      imageDesc: "Press bmw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/16.jpg",
      imageDesc: "Press manual selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/17.jpg",
      imageDesc: "Press 7 series"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/18.jpg",
      imageDesc: "Press f04"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/19.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/20.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/21.jpg",
      imageDesc: "Press engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/22.jpg",
      imageDesc: "Press direct"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/23.jpg",
      imageDesc: "Press bench"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/24.jpg",
      imageDesc: "Press f chassis"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/25.jpg",
      imageDesc: "Press bosch"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/26.jpg",
      imageDesc: "Press read/write isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/27.jpg",
      imageDesc: "Press mevd17.2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/28.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/29.jpg",
      imageDesc: "Press read isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/30.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/31.jpg",
      imageDesc: "It will start communicating"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/32.jpg",
      imageDesc: "It will download file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/33.jpg",
      imageDesc: "It will start reading the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/34.jpg",
      imageDesc: "You can save the file if you want or press no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/35.jpg",
      imageDesc: "Take a photo of the isn and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/36.jpg",
      imageDesc: "Remove the adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/37.jpg",
      imageDesc: "Connect the 3 connectors back to the ecu"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/38.jpg",
      imageDesc: "Connect the vci to the obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/39.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/40.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/41.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/42.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/43.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/44.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/45.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/46.jpg",
      imageDesc: "Press esc"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/47.jpg",
      imageDesc: "Press cas4"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/48.jpg",
      imageDesc: "Press key operation"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/49.jpg",
      imageDesc: "Press key learning"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/50.jpg",
      imageDesc: "Press learning via obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/51.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/52.jpg",
      imageDesc: "Communicating"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/53.jpg",
      imageDesc: "Press obd read sk"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/54.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/55.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/56.jpg",
      imageDesc: "It will download file, press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/57.jpg",
      imageDesc: "It will backup coding, please wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/58.jpg",
      imageDesc: "Preparing"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/59.jpg",
      imageDesc: "It will start the program"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/60.jpg",
      imageDesc: "Wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/61.jpg",
      imageDesc: "It will restore coding,wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/62.jpg",
      imageDesc: "Choose yes or no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/63.jpg",
      imageDesc: "Take a photo and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/64.jpg",
      imageDesc: "Enter the isn code that we read in the first part"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/65.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/66.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/67.jpg",
      imageDesc: "Choose a free position and press write key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/68.jpg",
      imageDesc: "Follow instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/69.jpg",
      imageDesc: "PLace a blank key on the coil"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/70.jpg",
      imageDesc: "Success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmw740keyProgram2013/71.jpg",
      imageDesc: "Start the car you are done! smile"),
]);

ButtonModel bmwReadISN_N55 =
    ButtonModel(btnName: "BMW ISN Read N55 (1)", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/1.jpg",
      imageDesc: "The ecu is located here"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/2.jpg",
      imageDesc: "Remove the 3 connectors on the left"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/3.jpg",
      imageDesc: "You will need this adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/4.jpg",
      imageDesc: "Connect these 2 cables together"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/5.jpg",
      imageDesc: "Connect one side to the adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/6.jpg",
      imageDesc: "Connect the adaptor to the ecu"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/7.jpg",
      imageDesc: "Connect other side of the cable to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/8.jpg",
      imageDesc: "Make sure you have wifi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/9.jpg",
      imageDesc: "Connect 12 v to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/10.jpg",
      imageDesc: "Connect the vci to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/11.jpg",
      imageDesc: "Connect a usb cable from the autel to the vci"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/12.jpg",
      imageDesc: "Turn off bluetooth"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/13.jpg",
      imageDesc: "Press immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/14.jpg",
      imageDesc: "Press accept"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/15.jpg",
      imageDesc: "Press bmw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/16.jpg",
      imageDesc: "Press manual selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/17.jpg",
      imageDesc: "Press 7 series"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/18.jpg",
      imageDesc: "Press f04"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/19.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/20.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/21.jpg",
      imageDesc: "Press engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/22.jpg",
      imageDesc: "Press direct"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/23.jpg",
      imageDesc: "Press bench"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/24.jpg",
      imageDesc: "Press f chassis"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/25.jpg",
      imageDesc: "Press bosch"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/26.jpg",
      imageDesc: "Press read/write isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/27.jpg",
      imageDesc: "Press mevd17.2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/28.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/29.jpg",
      imageDesc: "Press read isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/30.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/31.jpg",
      imageDesc: "It will start communicating"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/32.jpg",
      imageDesc: "It will download file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/33.jpg",
      imageDesc: "It will start reading the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/34.jpg",
      imageDesc: "You can save the file if you want or press no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/35.jpg",
      imageDesc: "Take a photo of the isn and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/36.jpg",
      imageDesc: "Remove the adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/bmwReadN55/37.jpg",
      imageDesc: "Connect the 3 connectors back to the ecu"),
]);

ButtonModel bmw328i2017 = ButtonModel(
  btnName: "BMW 328i 2017",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/0.png",
        imageDesc: "Follow up"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/1.jpg",
        imageDesc: "You will need to remove these plastic covers"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/2.jpg",
        imageDesc: "Remove covers"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/3.jpg",
        imageDesc: "Remove this screw"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/4.jpg",
        imageDesc: "Remove this screw"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/5.jpg",
        imageDesc: "Take a photo to remember connections and disconnect all the cables"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/6.jpg",
        imageDesc: "Remove the fem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/7.jpg",
        imageDesc: "Take a photo of the fuses and remove them"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/8.jpg",
        imageDesc: "Open the fem and remove the board"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/9.jpg",
        imageDesc: "You will need the acdp"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/10.jpg",
        imageDesc: "Connect these 2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/11.jpg",
        imageDesc: "Install this adaptor on the fem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/12.jpg",
        imageDesc: "Install the red wire"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/13.jpg",
        imageDesc:
        "Install this cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/14.jpg",
        imageDesc: "Install this on the 8 leg chip"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/15.jpg",
        imageDesc: "Connect 12 volt"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/16.jpg",
        imageDesc: "Load the acdp app and press bmw"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/17.jpg",
        imageDesc: "Press fem/bdc"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/18.jpg",
        imageDesc: "Press immo"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/19.jpg",
        imageDesc: "Press fem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/20.jpg",
        imageDesc: "Press mode 2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/21.jpg",
        imageDesc: "Press fem initial programming"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/22.jpg",
        imageDesc: "Press method 1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/23.jpg",
        imageDesc: "Wait"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/24.jpg",
        imageDesc: "Wait for a while"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/25.jpg",
        imageDesc: "Take a screenshot and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/26.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/27.jpg",
        imageDesc: "Press ok again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/28.jpg",
        imageDesc: "Press ok again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/29.jpg",
        imageDesc: "Press ok again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/30.jpg",
        imageDesc: "It will start the program, wait about 15 minutes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/31.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/32.jpg",
        imageDesc: "Press ok once again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/33.jpg",
        imageDesc: "Press the back arrow on top left"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/34.jpg",
        imageDesc: "Press program key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/35.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/36.jpg",
        imageDesc: "Read and then press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/37.jpg",
        imageDesc: "Input the isn number"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/38.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/39.jpg",
        imageDesc: "Press ok once again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/40.jpg",
        imageDesc: "Press ok once again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/41.jpg",
        imageDesc: "Wait for a while"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/42.jpg",
        imageDesc: "It will show the key data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/43.jpg",
        imageDesc: "Choose a fresh slot"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/44.jpg",
        imageDesc: "Input a blank key in coil and press learn"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/45.jpg",
        imageDesc: "Wait for a while"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/46.jpg",
        imageDesc: "Success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/47.jpg",
        imageDesc: "You will see the new key data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/48.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/49.jpg",
        imageDesc: "Press ok once again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/50.jpg",
        imageDesc: "Close the fem and install the fuses"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/bmw328i2017/51.jpg",
        imageDesc: "Reinstall the fem and you're done, start the car now"),
  ],
);


ButtonModel chryslerCrossfireKeyProgram =
    ButtonModel(btnName: "Chrysler CrossFire Key Program", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/1.jpg",
      imageDesc:
          "You will need to remove thue door lock,open the lock,read wafers and cut a hu64 key."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/2.jpg",
      imageDesc:
          "Move the rubber and the hole to unlock the lock screw will be revealed"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/3.jpg",
      imageDesc: "Remove the covers to remove the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/4.jpg",
      imageDesc: "Pull the immobilizer out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/5.jpg",
      imageDesc: "Disconnect the wires and remove it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/6.jpg",
      imageDesc: "Open the board and remove this chip with a heat gun"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/7.jpg",
      imageDesc: "You will need this adaptor and to put solder on it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/8.jpg",
      imageDesc: "Place the chip and use a heat gun and solder "),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/9.jpg",
      imageDesc: "Place the adaptor on the vvdi prog"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/10.jpg",
      imageDesc: "Go to mcu/Motorola-mc68hc(7)05/mc68hc05x32(1d69j)"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/11.jpg",
      imageDesc:
          "Press read and after you can also press verify to make sure read is good"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/12.jpg",
      imageDesc: "Verify"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/13.jpg",
      imageDesc: "Press file and save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/14.jpg",
      imageDesc: "Create a crossfire file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/15.jpg",
      imageDesc: "Name the file as you want and save as eep1"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/16.jpg",
      imageDesc:
          "Connect tango and you will need to purchase crossfire module license online"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/17.jpg",
      imageDesc: "Press car models"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/18.jpg",
      imageDesc: "Go to Chrysler/crossfire/mc68..."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/19.jpg",
      imageDesc: "Press open file and load the eep1 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/20.jpg",
      imageDesc: "You will see the key data, choose an open slot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/21.jpg",
      imageDesc: "Put a 44 chip inside the tango"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/22.jpg",
      imageDesc: "Press write key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/23.jpg",
      imageDesc:
          "The data will be written on the chip, no need to write the new data on the immo chip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/24.jpg",
      imageDesc: "Remove the chip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/chryslerCrossfireKeyProgram/25.jpg",
      imageDesc:
          "Solder back the chip on the board, install it back and start the car!"),
]);

ButtonModel gmKeyProgramBasicSubscription =
    ButtonModel(btnName: "Chevy Impala 2012", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/1.jpg",
      imageDesc: "You will need an a1 kit tool for this job"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/2.jpg",
      imageDesc: "Car main key Lock"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/3.jpg",
      imageDesc: "Take off top cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/4.jpg",
      imageDesc: "Take off ignition cap"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/5.jpg",
      imageDesc: "Insert tension tool into the ignition side bar hole"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/6.jpg",
      imageDesc: "Take 1 pick tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/7.jpg",
      imageDesc:
          "Insert the pick tool and pick both sides several times till ignition is picked"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/8.jpg",
      imageDesc: "When ignition is picked it will turn to on position"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/9.jpg",
      imageDesc:
          "Insert a screw driver to turn the ignition to crank position"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/10.jpg",
      imageDesc:
          "Insert a tool into the pin hole to press the pin and release the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/11.jpg",
      imageDesc: "Ignition will pop out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/12.jpg",
      imageDesc: "This is the code on the ignition g1727"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/13.jpg",
      imageDesc: "Go to key database and choose chevrolet"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/14.jpg",
      imageDesc: "Input the code"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/15.jpg",
      imageDesc: "Cut a key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/16.jpg",
      imageDesc: "Reinstall ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/17.jpg",
      imageDesc: "Close the covers"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/18.jpg",
      imageDesc: "Hook up AutoPropad and choose gm"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/19.jpg",
      imageDesc: "Choose immobilizer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/20.jpg",
      imageDesc: "Choose by vehicle"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/21.jpg",
      imageDesc: "Choose Chevrolet"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/22.jpg",
      imageDesc: "Choose usa"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/23.jpg",
      imageDesc: "Choose impala"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/24.jpg",
      imageDesc: "Choose 2006-2013"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/25.jpg",
      imageDesc: "Choose all keys lost"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/gmKeyProgram-basicSubscription/26.jpg",
      imageDesc:
          "Wait 12 minutes, follow instructions on screen and your done."),
]);

ButtonModel jetta2013AllKeyLost =
    ButtonModel(btnName: "Jetta 2013 All Key Lost", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/1.jpg",
      imageDesc: "Take off this part"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/2.jpg",
      imageDesc: "Take off cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/3.jpg",
      imageDesc: "Release these 2 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/4.jpg",
      imageDesc: "Release the connector and take out the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/5.jpg",
      imageDesc: "Open these 4 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/6.jpg",
      imageDesc: "Take out the board"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/7.jpg",
      imageDesc: "Take these out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/8.jpg",
      imageDesc: "Take these also out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/9.jpg",
      imageDesc: "Take those out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/10.jpg",
      imageDesc: "Connect this to the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/11.jpg",
      imageDesc: "Open the cluster gently"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/12.jpg",
      imageDesc: "Your focus is on this chip 24c64"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/13.jpg",
      imageDesc: "Connect abrites and programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/14.jpg",
      imageDesc: "Connect this to abrites, connect 12 volt and turn on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/15.jpg",
      imageDesc: "The cluster lights will come on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/16.jpg",
      imageDesc: "Open abrites software and go to vw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/17.jpg",
      imageDesc: "Press vw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/18.jpg",
      imageDesc: "Press special functions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/19.jpg",
      imageDesc: "Press instrument can"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/20.jpg",
      imageDesc: "Press enter service mode by obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/21.jpg",
      imageDesc: "Press no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/22.jpg",
      imageDesc: "You will see this message, don’t press anything yet"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/23.jpg",
      imageDesc: "Connect vvdi prog and clip adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/24.jpg",
      imageDesc: "Go to eeprom-st-m24c64 "),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/25.jpg",
      imageDesc: "Connect clip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/26.jpg",
      imageDesc: "Press read"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/27.jpg",
      imageDesc: "Make sure 12 volt is connected"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/28.jpg",
      imageDesc: "Operation success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/29.jpg",
      imageDesc: "Save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/30.jpg",
      imageDesc: "Create a vw file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/31.jpg",
      imageDesc: "Create new folder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/32.jpg",
      imageDesc: "Name folder last 6 digits of vin and save file name eep1"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/33.jpg",
      imageDesc: "Go back to abrites and press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/34.jpg",
      imageDesc: "Upload the eep1 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/35.jpg",
      imageDesc: "Read this and select yes or no"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/36.jpg",
      imageDesc: "It will generate a new file, save it as eep 2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/37.jpg",
      imageDesc: "You will see this message, don’t press anything yet"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/38.jpg",
      imageDesc: "Go back to vvdi prog and press open"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/39.jpg",
      imageDesc: "Open eep2 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/40.jpg",
      imageDesc: "Press write"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/41.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/42.jpg",
      imageDesc: "Operation success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/43.jpg",
      imageDesc: "Reconnect the 12w volt and turn back on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/44.jpg",
      imageDesc: "Lights will come on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/45.jpg",
      imageDesc: "Now press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/46.jpg",
      imageDesc:
          "On the bottom left it will try to reflash and cluster turns off it is normal"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/47.jpg",
      imageDesc:
          "Service mode ok and cluster comes back on and than press read immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/48.jpg",
      imageDesc: "It will show immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/49.jpg",
      imageDesc: "Put a key in programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/50.jpg",
      imageDesc: "Press add key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/51.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/52.jpg",
      imageDesc: "Choose position and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/53.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/54.jpg",
      imageDesc: "Success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/55.jpg",
      imageDesc: "Press update immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/jetta2013AllKeyLost/56.jpg",
      imageDesc:
          "Press read immo data and make sure it shows the new key info. You are done, install back the cluster and start the car!"),
]);

ButtonModel landRoverKeyProgram =
    ButtonModel(btnName: "Land Rover Velar 2018", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/1.jpg",
      imageDesc: "Land rover velar 2018"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/2.jpg",
      imageDesc:
          "Trunk cant open so you need to crawl into the back and kvm module is on the right side, remove this cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/3.jpg",
      imageDesc: "Here is the kvm module at the bottom, remove 2 10mm screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/4.jpg",
      imageDesc: "Remove the kvm"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/5.jpg",
      imageDesc: "Open the kvm ,take out the board and position it this way"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/6.jpg",
      imageDesc: "Open vvdi prog, go to other, landrover, rfa unsecured 256"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/7.jpg",
      imageDesc: "Press connection diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/8.jpg",
      imageDesc: "This is the diagram and it tells you which cable to use"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/9.jpg",
      imageDesc: "Make the diagram bigger so you can see better"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/10.jpg",
      imageDesc: "Put solder on these 4 points"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/11.jpg",
      imageDesc: "Use this cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/12.jpg",
      imageDesc: "Solder these 4 wires"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/13.jpg",
      imageDesc: "Connect the cable to the prog and 12 volt cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/14.jpg",
      imageDesc: "On d flash tab press read"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/15.jpg",
      imageDesc: "It will initialize"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/16.jpg",
      imageDesc: "It will show operation success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/17.jpg",
      imageDesc: "Press save to and Create a land rover file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/18.jpg",
      imageDesc: "Create new folder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/19.jpg",
      imageDesc: "Input last 6 or 8 digits of the vin number"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/20.jpg",
      imageDesc: "Save as d flash"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/21.jpg",
      imageDesc: "Go to eee tab and press read"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/22.jpg",
      imageDesc: "Operation success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/23.jpg",
      imageDesc: "Go to save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/24.jpg",
      imageDesc: "Save as eee"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/25.jpg",
      imageDesc: "Connect vvdi 2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/26.jpg",
      imageDesc: "Press transponder program"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/27.jpg",
      imageDesc: "Press immobilizer data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/28.jpg",
      imageDesc: "Go to euro, rover, rover jaguar 2015-"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/29.jpg",
      imageDesc: "Press load rfa d flash"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/30.jpg",
      imageDesc: "Load d flash"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/31.jpg",
      imageDesc: "Press load rfa eeprom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/32.jpg",
      imageDesc: "Load eee file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/33.jpg",
      imageDesc:
          "Choose an empty slot and press make dealer key after you input a blank key in the vvdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/34.jpg",
      imageDesc:
          "Tool will show success and will create a new d flash file and new eee file and will be saved automatically"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/35.jpg",
      imageDesc: "Go back to vvdi prog in dflash tab press open file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/36.jpg",
      imageDesc: "Load the new d flash file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/37.jpg",
      imageDesc: "Press write and than yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/38.jpg",
      imageDesc: "Go to eee tab and press open"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/39.jpg",
      imageDesc: "Load new eee file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/40.jpg",
      imageDesc: "Press write and than yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/LandRoverKeyProgram/41.jpg",
      imageDesc: "Operation success, install back the kvm and start the car!"),
]);

ButtonModel mercedesC2502014 =
    ButtonModel(btnName: "Mercedes C250 2014", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/1.jpg",
      imageDesc: "Connect vvdi mb to vehicle obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/2.jpg",
      imageDesc: "Open vvdi mb software and press eis tools"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/3.jpg",
      imageDesc: "Press read eis data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/4.jpg",
      imageDesc: "Copy the vin number and than press save eis data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/5.jpg",
      imageDesc: "Create a folder with the vin number that you copied"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/6.jpg",
      imageDesc: "Save the eis data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/7.jpg",
      imageDesc: "Press ok to save this file also"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/8.jpg",
      imageDesc: "Press save"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/9.jpg",
      imageDesc:
          "Press password calculation and mark the tab on top right 'select this if lost all working key'"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/10.jpg",
      imageDesc: "Select w172, 204, 207"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/11.jpg",
      imageDesc: "You will need to remove the bottom cover of the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/12.jpg",
      imageDesc: "Make some space through here"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/13.jpg",
      imageDesc: "Remove the cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/14.jpg",
      imageDesc: "Remove this cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/15.jpg",
      imageDesc:
          "Remove the two connectors from the ignition if you have small hands, or you can remove the ignition, this method saves me time."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/16.jpg",
      imageDesc: "You will need this cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/17.jpg",
      imageDesc: "Connect the 2 wires to the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/18.jpg",
      imageDesc: "Connect the vvdi mb obd cable to the wire"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/19.jpg",
      imageDesc: "You will need this adaptor for fast 18 minutes calculation."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/20.jpg",
      imageDesc: "Connect the adaptor to the vvdi mb and the obd cable to it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/21.jpg",
      imageDesc: "Take an extension cord and 12 volt cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/22.jpg",
      imageDesc: "Connect 12 volt to the adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/23.jpg",
      imageDesc: "Press data acquisition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/24.jpg",
      imageDesc: "Read instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/25.jpg",
      imageDesc: "Read instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/26.jpg",
      imageDesc: "Read instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/27.jpg",
      imageDesc: "insert ir cable to the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/28.jpg",
      imageDesc: "Read instructions on the bottom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/29.jpg",
      imageDesc: "Reinsert the ir cable to the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/30.jpg",
      imageDesc: "It will start calculating the password for 18 minutes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/31.jpg",
      imageDesc:
          "Make sure laptop is connected to wifi, I recommend third party and not phone hotspot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/32.jpg",
      imageDesc: "Calculation is done, save the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/33.jpg",
      imageDesc: "Read instructions and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/34.jpg",
      imageDesc: "Press upload data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/35.jpg",
      imageDesc: "Open the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/36.jpg",
      imageDesc: "Upload success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/37.jpg",
      imageDesc: "Select auto refresh"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/38.jpg",
      imageDesc: "Wait 50 seconds and than press read query results"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/39.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/40.jpg",
      imageDesc: "You will see the password, copy it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/41.jpg",
      imageDesc: "Press prepare key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/42.jpg",
      imageDesc: "Press load eis file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/43.jpg",
      imageDesc: "Open the vvdi mb file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/44.jpg",
      imageDesc: "Paste the password"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/45.jpg",
      imageDesc: "Press prepare key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/46.jpg",
      imageDesc: "It will connect to server to calculate the keys information"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/47.jpg",
      imageDesc: "Wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/48.jpg",
      imageDesc: "It will start preparing the key files"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/49.jpg",
      imageDesc: "Calculation completed"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/50.jpg",
      imageDesc: "Press read write key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/51.jpg",
      imageDesc: "Insert a blank key to the vvdi mb"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/52.jpg",
      imageDesc: "Press identification key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/53.jpg",
      imageDesc: "Press load key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/54.jpg",
      imageDesc: "Choose one of the unused key files and pick number 051 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/55.jpg",
      imageDesc: "Press write"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/56.jpg",
      imageDesc: "Press identification key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/57.jpg",
      imageDesc: "Make sure data is all good and written on the key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/58.jpg",
      imageDesc:
          "Remove the 2 cable wires from the ignition and reconnect the original cables back to the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/59.jpg",
      imageDesc:
          "Insert the key to the ignition for 5 seconds remove and reinsert"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/60.jpg",
      imageDesc: "Start the car! Smile! 😉"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/61.jpg",
      imageDesc: "Close this cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesC2502014/62.jpg",
      imageDesc: "Reinstall this cover and your all done!"),
]);

ButtonModel mercedesCLK2502007 =
    ButtonModel(btnName: "Mercedes CLK250 2007", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/1.jpg",
      imageDesc: "You will need a thin metal tool similar to this"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/2.jpg",
      imageDesc:
          "Insert the metal tool into the hole in the cluster to release the cluster and same on right side"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/3.jpg",
      imageDesc: "Remove the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/4.jpg",
      imageDesc: "You will need this tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/5.jpg",
      imageDesc: "Drill a hole here"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/6.jpg",
      imageDesc:
          "It will reveal metal piece that holds the ignition with a screw on it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/7.jpg",
      imageDesc: "Remove the 10 mm screw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/8.jpg",
      imageDesc: "Pull the piece towards you"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/9.jpg",
      imageDesc: "Remove the bottom cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/10.jpg",
      imageDesc: "Pull out the metal ignition holder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/11.jpg",
      imageDesc: "This is how it looks"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/12.jpg",
      imageDesc: "Insert screw driver to open ignition ring"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/13.jpg",
      imageDesc: "Take out the ring"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/14.jpg",
      imageDesc: "Pull out the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/15.jpg",
      imageDesc:
          "Disconnect al the wires from the ignition and remove it, make note this is w209"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/16.jpg",
      imageDesc: "Open these 2 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/17.jpg",
      imageDesc: "Open the ignition and make note that this is w209 zgw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/18.jpg",
      imageDesc:
          "I recommend using this tool or you can solder wires on the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/19.jpg",
      imageDesc: "Use this adaptor 209 zgw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/20.jpg",
      imageDesc: "Connect ezs cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/21.jpg",
      imageDesc: "Place the ignition on it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/22.jpg",
      imageDesc: "Connect ezs cable to vvdi prog"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/23.jpg",
      imageDesc: "Connect usb and 12v to vvdi prog"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/24.jpg",
      imageDesc: "Go to immobilizer/benz/w209 st 12"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/25.jpg",
      imageDesc: "Press read"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/26.jpg",
      imageDesc: "Press save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/27.jpg",
      imageDesc: "Save the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/28.jpg",
      imageDesc: "Press prepare key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/29.jpg",
      imageDesc: "Press load eis file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/30.jpg",
      imageDesc:
          "Open the file you saved and you will see the data including the password"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/31.jpg",
      imageDesc: "Press prepare key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/32.jpg",
      imageDesc: "It will connect to server, make sure you have wifi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/33.jpg",
      imageDesc: "It will start calculating"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/34.jpg",
      imageDesc: "It will start preparing key files"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/35.jpg",
      imageDesc: "Completed"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/36.jpg",
      imageDesc: "Press read write key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/37.jpg",
      imageDesc: "Place a blank key in the vvdi"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/38.jpg",
      imageDesc: "Press identification key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/39.jpg",
      imageDesc: "Read successfully"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/40.jpg",
      imageDesc: "Press load key file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/41.jpg",
      imageDesc: "Load an unused key file number 051"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/42.jpg",
      imageDesc: "Press write"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/43.jpg",
      imageDesc: "Write successfully"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/44.jpg",
      imageDesc:
          "Reinstall the ignition and stick in the key for 5 seconds and remove it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/45.jpg",
      imageDesc: "Stick the key in again and now you can turn it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/46.jpg",
      imageDesc: "Reinstall ignition and ring"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/47.jpg",
      imageDesc: "Reinstall the cluster"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesCLK2502007/48.jpg",
      imageDesc: "Start the car and smile!"),
]);

ButtonModel mercedesSprinter2018 =
    ButtonModel(btnName: "Mercedes Sprinter 2018", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/1.jpg",
      imageDesc:
          "Remove driver side door lock,open the lock, read the wafers and cut a hu64 key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/2.jpg",
      imageDesc:
          "To remove the lock open this cover and release the screw inside"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/3.jpg",
      imageDesc:
          "Remove ignition ring with a flathead screw driver or there is a special tool for this, check online"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/4.jpg",
      imageDesc: "Ring out"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/5.jpg",
      imageDesc: "Go down here"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/6.jpg",
      imageDesc: "Pull out the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/7.jpg",
      imageDesc: "Disconnect the wires from the ignition"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/8.jpg",
      imageDesc: "Make note that this ignition is a  906"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/9.jpg",
      imageDesc: "Open these 2 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/10.jpg",
      imageDesc: "Open the ignition and place it down on bench"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/11.jpg",
      imageDesc: "Open vvdi prog software and go to immobilizer-benz-w906\256"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/12.jpg",
      imageDesc: "Press connection diagram and this will open"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/13.jpg",
      imageDesc: "Press w906 and you will see the diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/14.jpg",
      imageDesc: "Make it full screen and zoom in to see better"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/15.jpg",
      imageDesc: "Take out your solder wire"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/16.jpg",
      imageDesc: "Put solder on the proper points based on the diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/17.jpg",
      imageDesc: "Take this cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/18.jpg",
      imageDesc: "Solder the wires based on diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/19.jpg",
      imageDesc: "Connect the wire to vvdi prog and connect 12 volt cable"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/20.jpg",
      imageDesc: "Press read, if it fails check your soldering"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/21.jpg",
      imageDesc: "Operation success"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/22.jpg",
      imageDesc: "Press save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/23.jpg",
      imageDesc: "Create a merz file and create inside a new folder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/24.jpg",
      imageDesc: "Name the file last 6 or 8 digits of vin for later"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/25.jpg",
      imageDesc: "Save file as eep1"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/26.jpg",
      imageDesc: "Open vvdi2 and press transponder program"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/27.jpg",
      imageDesc: "Press immobilizer data tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/28.jpg",
      imageDesc:
          "Go to usa-dodge-sprinter-2006 9s12 and press load eeprom dump"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/29.jpg",
      imageDesc: "Choose the eep1 file that you saved"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/30.jpg",
      imageDesc:
          "It will show the key data, it might show all keys not in use, that is normal, choose a slot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/31.jpg",
      imageDesc: "Put a 46 chip in the vvdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/32.jpg",
      imageDesc: "Press make dealer key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/33.jpg",
      imageDesc: "Choose pcf 7936"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/34.jpg",
      imageDesc: "It will generate a new key file, save it as eep2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/35.jpg",
      imageDesc:
          "Go back to vvdi prog, now we have to write the new key data on the ignition, go to open"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/36.jpg",
      imageDesc: "Load the new eep2 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/37.jpg",
      imageDesc: "Press write"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/38.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/mercedesSprinter2018/39.jpg",
      imageDesc:
          "Operation success, remove the  solder from the ignition, close ignition cover, install it back and start the car!"),
]);

ButtonModel porscheKeyProgram =
    ButtonModel(btnName: "Porsche Cayenne 2014", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/1.jpg",
      imageDesc: "Back Car view..."),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/2.jpg",
      imageDesc: "Release 1 screw to remove cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/3.jpg",
      imageDesc: "Remove cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/4.jpg",
      imageDesc: "Release this wire"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/5.jpg",
      imageDesc: "BCM is on the right side"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/6.jpg",
      imageDesc: "Remove the BCM 2 clips hold it, release them"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/7.jpg",
      imageDesc: "Pull out the BCM"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/8.jpg",
      imageDesc: "Unscrew these 4 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/9.jpg",
      imageDesc: "Open the BCM"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/10.jpg",
      imageDesc: "Take note of the chip type, this one is 5m 48h"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/11.jpg",
      imageDesc:
          "You will need third party mobile hotspot for this, with phone it won't work"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/12.jpg",
      imageDesc: "You will need acdp"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/13.jpg",
      imageDesc: "You will need acdp porche module and activate it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/14.jpg",
      imageDesc: "Connect these and power supply"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/15.jpg",
      imageDesc: "Take out the 3 screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/16.jpg",
      imageDesc: "Install small screw on the bottom and long screw on the top"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/17.jpg",
      imageDesc: "Open acdp, press porsche and new porsche key add"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/18.jpg",
      imageDesc: "Press icp immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/19.jpg",
      imageDesc: "Choose 5m48h"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/20.jpg",
      imageDesc:
          "Connect this adaptor and make sure you are on the right pin points"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/21.jpg",
      imageDesc: "Check if you have ceramic or metal oscillator"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/22.jpg",
      imageDesc: "Install adaptor end adjust the pink clip on the proper exit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/23.jpg",
      imageDesc: "Press it down"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/24.jpg",
      imageDesc: "Put third screw on the top"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/25.jpg",
      imageDesc: "Connect this wire"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/26.jpg",
      imageDesc: "Press add key auato mode"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/27.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/28.jpg",
      imageDesc: "The device will start loading"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/29.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/30.jpg",
      imageDesc: "Put the pink clip on the right exit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/31.jpg",
      imageDesc: "The device will check the pins"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/32.jpg",
      imageDesc: "If all pins are green continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/33.jpg",
      imageDesc: "Press continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/34.jpg",
      imageDesc: "Confirm chip type and continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/35.jpg",
      imageDesc: "It will read the pflash"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/36.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/37.jpg",
      imageDesc: "It will read the eeprom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/38.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/39.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/40.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/41.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/42.jpg",
      imageDesc:
          "It will show you the key list, take a screen shot and continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/43.jpg",
      imageDesc: "Follow instruction"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/44.jpg",
      imageDesc: "Connect baw tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/45.jpg",
      imageDesc: "Insert blank key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/46.jpg",
      imageDesc: "It will read the key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/47.jpg",
      imageDesc: "Choose an empty slot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/48.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/49.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/50.jpg",
      imageDesc: "Follow instructions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/51.jpg",
      imageDesc: "Connect once again the obp ibp adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/52.jpg",
      imageDesc: "It will check the pins again, continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/53.jpg",
      imageDesc: "It will show new key info in the slot, continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/54.jpg",
      imageDesc: "It will decrypt the chip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/55.jpg",
      imageDesc: "It will write the new key eeprom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/56.jpg",
      imageDesc: "Your done, install everything back and start the car!"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/porscheKeyProgram/57.JPG",
      imageDesc: "The same method applies for all of these models"),
]);

ButtonModel rangeRover2007 =
    ButtonModel(btnName: "Range Rover 2007", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/1.jpg",
      imageDesc:
          "Open glove box and release all connectors from the cem, front and back"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/2.jpg",
      imageDesc: "Remove 2 10 mm screws from the bottom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/3.jpg",
      imageDesc: "Pull out the cem"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/4.jpg",
      imageDesc: "On autel press immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/5.jpg",
      imageDesc: "Press land rover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/6.jpg",
      imageDesc: "Press manual selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/7.jpg",
      imageDesc: "Press 2006-2009"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/8.jpg",
      imageDesc: "Press blade key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/9.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/10.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/11.jpg",
      imageDesc: "Press start key writing"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/12.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/13.jpg",
      imageDesc: "Press the orange button"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/14.jpg",
      imageDesc: "Press the expand button"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/15.jpg",
      imageDesc: "Here you have guided instructions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/16.jpg",
      imageDesc: "Scroll down to diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/17.jpg",
      imageDesc:
          "Here is the diagram, make note that you need to remove one resistor and connect a 10k connector between 2 wires"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/18.jpg",
      imageDesc: "This is an example of how to solder the 10k connector"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/19.jpg",
      imageDesc:
          "Take out these wires from autel case and cut of one end to reveal wires in order to solder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/20.jpg",
      imageDesc:
          "Solder the wires based on the diagram and connect the wires to the xp400 based on diagram"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/21.jpg",
      imageDesc: "Press read mcu data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/22.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/23.jpg",
      imageDesc: "Press eeprom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/24.jpg",
      imageDesc: "Data read success press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/25.jpg",
      imageDesc: "Save the file in a folder that you will remember"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/26.jpg",
      imageDesc: "Saving success press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/27.jpg",
      imageDesc: "Press make start key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/28.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/29.jpg",
      imageDesc: "Select the eeprom file that you saved"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/30.jpg",
      imageDesc: "Select the folder"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/31.jpg",
      imageDesc: "Select the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/32.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/33.jpg",
      imageDesc: "Choose a key position"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/34.jpg",
      imageDesc: "Put in the programmer a 46 chip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/35.jpg",
      imageDesc:
          "Chip has been generated and a new file with new key info has been saved so look where it has saved it"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/36.jpg",
      imageDesc: "Press write mcu data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/37.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/38.jpg",
      imageDesc: "Press eeprom"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/39.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/40.jpg",
      imageDesc: "Select the new key file that was saved"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/41.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRover2007/42.jpg",
      imageDesc:
          "Writing successful. You are done, install back the cem and start the car, you can add now a remote key by obd"),
]);

ButtonModel rangeRoverSport2014 =
    ButtonModel(btnName: "Range Rover Sport 2014", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/1.jpg",
      imageDesc: "Turn on AutoPropad and press key programming"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/2.jpg",
      imageDesc: "Press land rover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/3.jpg",
      imageDesc: "Press range rover (Evoque)"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/4.jpg",
      imageDesc: "Press range rover sport"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/5.jpg",
      imageDesc: "Press 2015"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/6.jpg",
      imageDesc: "It should recognize the system, press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/7.jpg",
      imageDesc: "Press add smart key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/8.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/9.jpg",
      imageDesc: "ignition will light on"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/10.jpg",
      imageDesc: "It will show numvber of keys programmed, press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/11.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/12.jpg",
      imageDesc:
          "Press the unlock on the key and the car should beep and that's a sign that the key was accepted"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/13.jpg",
      imageDesc: "Press the unlock button again and car should beep again"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/14.jpg",
      imageDesc: "It will show the new key in the system"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/rangeRoverSport2014/15.jpg",
      imageDesc: "Your done, start car!"),
]);

ButtonModel readisnN20 =
    ButtonModel(btnName: "Read ISN N20", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/1.jpg",
      imageDesc: "Remove this cover"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/2.jpg",
      imageDesc: "This is an N20 dme"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/3.jpg",
      imageDesc: "Remove these three(3) connectors"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/4.jpg",
      imageDesc: "You will need this N20 adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/5.jpg",
      imageDesc: "Connect these 2 cables together"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/6.jpg",
      imageDesc:
          "Connect these sides to the adaptor and connect it to the dme"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/7.jpg",
      imageDesc: "Connect other side of the cable to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/8.jpg",
      imageDesc: "Connect the autel vci to the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/9.jpg",
      imageDesc: "Connect 12v cable to  the gbox"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/10.jpg",
      imageDesc: "Start up autel and press immo"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/11.jpg",
      imageDesc: "Press BMW"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/12.jpg",
      imageDesc: "Press manual selection"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/13.jpg",
      imageDesc: "Press 5 series"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/14.jpg",
      imageDesc: "Press f07"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/15.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/16.jpg",
      imageDesc: "Press control unit"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/17.jpg",
      imageDesc: "Press engine"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/18.jpg",
      imageDesc: "Press direct"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/19.jpg",
      imageDesc:
          "You will need wifi for this , I recommend third party and not phone hotspot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/20.jpg",
      imageDesc: "Press bench"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/21.jpg",
      imageDesc: "Press f chassis"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/22.jpg",
      imageDesc: "Press bosch"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/23.jpg",
      imageDesc: "Press read / write isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/24.jpg",
      imageDesc: "Press mevd 17.2.9"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/25.jpg",
      imageDesc:
          "You will see a diagram for use if you don't have the adaptor, if you have adaptor press ok to continue"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/26.jpg",
      imageDesc: "Connect USB to autel and other side to vci"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/27.jpg",
      imageDesc: "Disable BT"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/28.jpg",
      imageDesc: "It will start downloading the file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/29.jpg",
      imageDesc: "It will connect to network"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/30.jpg",
      imageDesc: "It will download file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/31.jpg",
      imageDesc: "Communicating please wait"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/32.jpg",
      imageDesc: "It will start reading the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/33.jpg",
      imageDesc: "Save the data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/34.jpg",
      imageDesc: "It will show the isn, Take a photo of the isn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/readisnN20/35.jpg",
      imageDesc: "Connect these back n place"),
]);

ButtonModel saabKeyProgram =
    ButtonModel(btnName: "Saab 9-5 2005", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/1.jpg",
      imageDesc: "Remove these three(3) screws"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/2.jpg",
      imageDesc: "Remove these three(3) screws on the back side"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/3.jpg",
      imageDesc:
          "Remove the board, I recommend to remove just the back cover to avoid demage"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/4.jpg",
      imageDesc: "Connect wdi prog connect 12 volt and clip adaptor"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/5.jpg",
      imageDesc: "Go to eeprom and flash / Microchip clip / 93c66a clip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/6.jpg",
      imageDesc:
          "Connect the pin on the clip, the dot on the clip pointed at the dot on the chip"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/7.jpg",
      imageDesc:
          "Press read after success you can also press verify to make sure the read is good"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/8.jpg",
      imageDesc: "Press file and save to"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/9.jpg",
      imageDesc: "Create a saab folder and save as eepl"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/10.jpg",
      imageDesc: "Connect wdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/11.jpg",
      imageDesc: "Go to transponder programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/12.jpg",
      imageDesc: "Press immobilizer data tool"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/13.jpg",
      imageDesc:
          "Go to euro / saab / 9-5 / 2003 936cc,  Than press load eeprom dump "),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/14.jpg",
      imageDesc: "Load the eep1 file"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/15.jpg",
      imageDesc: "You will see the key data, choose a not used slot"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/16.jpg",
      imageDesc: "Put a blank key in the wdi2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/17.jpg",
      imageDesc: "Press make dealer key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/18.jpg",
      imageDesc: "Choose pcf7936"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/19.jpg",
      imageDesc: "Read the message, a new key file will be created"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/20.jpg",
      imageDesc: "Save the new file as eep2"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/21.jpg",
      imageDesc: "Go back to wdi prog and press open"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/22.jpg",
      imageDesc: "Load the eep2 file and press write"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/23.jpg",
      imageDesc: "Press yes"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/saabKeyProgram/24.jpg",
      imageDesc:
          "Operation success, you can also press verify to make sure the write data is good. You are done, install back the cim and start the car"),
]);

ButtonModel vwJetta2002 =
    ButtonModel(btnName: "VW Jetta 2002", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/1.jpg",
      imageDesc: "Use AutoPropad and press key programming"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/2.jpg",
      imageDesc: "Press volkswagon"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/3.jpg",
      imageDesc: "Press select type from immobilizer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/4.jpg",
      imageDesc: "Press 2/3th immobilizer system"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/5.jpg",
      imageDesc: "Press read security code"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/6.jpg",
      imageDesc: "Press vw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/7.jpg",
      imageDesc: "Press 17 dashboard"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/8.jpg",
      imageDesc: "You will see the pin code, take a photo of it just in case"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/9.jpg",
      imageDesc: "Go back here and press program keys"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/10.jpg",
      imageDesc: "Press 17 dashboard"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/11.jpg",
      imageDesc: "Enter the pin code"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/12.jpg",
      imageDesc: "Login successful"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/13.jpg",
      imageDesc: "Enter the number of keys you wish to program"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2002/14.jpg",
      imageDesc: "Follow these instructions and you are done!"),
]);

ButtonModel vwJetta2010 =
    ButtonModel(btnName: "VW Jetta 2010 Key Program", imagesDescriptions: [
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/1.jpg",
      imageDesc: "Use hu66 direct reader to get the cuts and than cut a key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/2.jpg",
      imageDesc: "Open Abrites and press vw"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/3.jpg",
      imageDesc: "Press offline"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/4.jpg",
      imageDesc: "Press special functions"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/5.jpg",
      imageDesc: "Press instrument"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/6.jpg",
      imageDesc: "Press the option by obd"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/7.jpg",
      imageDesc: "Press read immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/8.jpg",
      imageDesc: "you will see the immo data press add key"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/9.jpg",
      imageDesc: "Read and press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/10.jpg",
      imageDesc: "Put the key in the programmer"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/11.jpg",
      imageDesc: "Press ok"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/12.jpg",
      imageDesc: "Press update immo data"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/13.jpg",
      imageDesc: "You can start the car!"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/14.jpg",
      imageDesc: "To program the buttons press remote control"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/15.jpg",
      imageDesc: "Press learn"),
  ImageDescModel(
      imagePath: "assets/advanceBtnDesc/vwJetta2010/16.jpg",
      imageDesc:
          "Turn ignition to off and press the unlock button, than you are done!"),
]);

ButtonModel audiA42010 = ButtonModel(
  btnName: "Audi A4 2010",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/1.jpg",
        imageDesc: "Load vvdi2 and press audi"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/2.jpg",
        imageDesc: "Press key learn"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/3.jpg",
        imageDesc: "Press 5th immobilizer system"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/4.jpg",
        imageDesc: "Press read bcm2 data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/5.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/6.jpg",
        imageDesc: "Turn on the headlight and press the brake"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/7.jpg",
        imageDesc: "Read and go to the trunk to disconnect the bcm"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/8.jpg",
        imageDesc:
            "On the right side of the trunk you will see the bcm, disconnect all the wires for 5 seconds and than reconnect, go back to laptop and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/9.jpg",
        imageDesc: "After you press ok it will generate an immo file, save it"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/10.jpg",
        imageDesc: "Press make dealer key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/11.jpg",
        imageDesc: "Press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/12.jpg",
        imageDesc: "Choose prepare normal dealer key and Press next"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/13.jpg",
        imageDesc: "Choose the first option and press next"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/14.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/15.jpg",
        imageDesc: "Load the immo file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/16.jpg",
        imageDesc: "Read and Press ok afterwards"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/17.jpg",
        imageDesc: "Put key in programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/18.jpg",
        imageDesc: "It will start writing the key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/19.jpg",
        imageDesc: "Success, press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/20.jpg",
        imageDesc: "Press key learning"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/21.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/22.jpg",
        imageDesc: "Load the immo file again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/23.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/24.jpg",
        imageDesc: "Insert the key in the slot"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/25.jpg",
        imageDesc: "You will see 0/1 turn to 1/1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiA42010/26.jpg",
        imageDesc: "Success, start the car!"),
  ],
);

ButtonModel audiQ52016 = ButtonModel(
  btnName: "Audi Q5 2016",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/1.jpg",
        imageDesc: "Open this cover on the right side of the trunk"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/2.jpg",
        imageDesc: "Release clips on top and bottom to remove the bcm"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/3.jpg",
        imageDesc: "Take out the bcm"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/4.jpg",
        imageDesc: "Open the cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/5.jpg",
        imageDesc: "You will need this kit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/6.jpg",
        imageDesc:
            "Open vvdi prog and go to immobilizer/audi/lock_bcm2-1 adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/7.jpg",
        imageDesc: "This is the diagram for how to place the adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/8.jpg",
        imageDesc: "Use this adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/9.jpg",
        imageDesc: "Connect these 2 pieces on the left side"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/10.jpg",
        imageDesc:
            "Place the adaptor and align points d1 and d2 according to the diagram and the rest will be in place"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/11.jpg",
        imageDesc: "Use this clips on right and left side to lock the adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/12.jpg",
        imageDesc: "Same on left side"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/13.jpg",
        imageDesc: "Connect these cables together"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/14.jpg",
        imageDesc: "Connect one side to the adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/15.jpg",
        imageDesc: "Connect the other side to the prog"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/16.jpg",
        imageDesc: "Connect 12 volt to it"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/17.jpg",
        imageDesc: "Press read on data 1tab"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/18.jpg",
        imageDesc: "Success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/19.jpg",
        imageDesc: "Press save to"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/20.jpg",
        imageDesc: "Create an audi folder"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/21.jpg",
        imageDesc: "Save as data1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/22.jpg",
        imageDesc: "Connect vvdi2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/23.jpg",
        imageDesc: "Press audi"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/24.jpg",
        imageDesc:
            "Go to key learn/ 5th immobilizer system/ locked bcm2 version"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/25.jpg",
        imageDesc: "Make sure you have wifi"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/26.jpg",
        imageDesc: "Press step1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/27.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/28.jpg",
        imageDesc: "Load data 1 file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/29.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/30.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/31.jpg",
        imageDesc: "Go back to vvdi prog and press data2 tab"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/32.jpg",
        imageDesc: "Press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/33.jpg",
        imageDesc: "Press save to"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/34.jpg",
        imageDesc: "Save as data2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/35.jpg",
        imageDesc: "Go back to vvdi2 and press step2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/36.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/37.jpg",
        imageDesc: "Load the data2 file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/38.jpg",
        imageDesc: "Server will start calculating"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/39.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/40.jpg",
        imageDesc: "Save the bcm immo file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/41.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/42.jpg",
        imageDesc: "Save the service file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/43.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/44.jpg",
        imageDesc: "Go back to vvdi prog and press service data tab"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/45.jpg",
        imageDesc: "Press open"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/46.jpg",
        imageDesc: "Load the service file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/47.jpg",
        imageDesc: "Press write"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/48.jpg",
        imageDesc: "Press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/49.jpg",
        imageDesc: "Success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/50.jpg",
        imageDesc: "Remove the adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/51.jpg",
        imageDesc: "Install the cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/52.jpg",
        imageDesc: "Reconnect and install the bcm"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/53.jpg",
        imageDesc: "Connect the vvdi2 to the obd"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/54.jpg",
        imageDesc: "Go to key learn/5th immobilizer system"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/55.jpg",
        imageDesc: "Press make dealer key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/56.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/57.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/58.jpg",
        imageDesc: "You will see the info"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/59.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/60.jpg",
        imageDesc: "Choose prepare normal dealer key and Press next"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/61.jpg",
        imageDesc: "Choose the first option and press next"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/62.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/63.jpg",
        imageDesc: "Load the bcm2 immo data file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/64.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/65.jpg",
        imageDesc: "Put key in programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/66.jpg",
        imageDesc: "It will start writing the key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/67.jpg",
        imageDesc: "Success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/68.jpg",
        imageDesc: "Press key learning"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/69.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/70.jpg",
        imageDesc: "Load the immo file again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/71.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/72.jpg",
        imageDesc: "Insert the key into the slot"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/73.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/74.jpg",
        imageDesc: "You will see on the dashboard 0/1 turns to 1/1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/75.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/76.jpg",
        imageDesc: "Success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/audiQ52016/77.jpg",
        imageDesc: "Start the car and smile 😊"),
  ],
);

ButtonModel volvoXC602016 = ButtonModel(
  btnName: "Volvo XC60 2016",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/1.jpg",
        imageDesc: "Remove 2 screws on right and left side"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/2.jpg",
        imageDesc: "Remove the cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/3.jpg",
        imageDesc: "Remove 2 bolts on right and left side"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/4.jpg",
        imageDesc: "Remove 6 screws from the glove box"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/5.jpg",
        imageDesc: "Remove glove box"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/6.jpg",
        imageDesc: "Remove all the connectors from the cem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/7.jpg",
        imageDesc: "Remove the cem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/8.jpg",
        imageDesc: "Open the cem"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/9.jpg",
        imageDesc: "Turn on autel and press immo"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/10.jpg",
        imageDesc: "Press volvo"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/11.jpg",
        imageDesc: "Press manual selection"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/12.jpg",
        imageDesc: "Press xc60"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/13.jpg",
        imageDesc: "Press 2010-2018"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/14.jpg",
        imageDesc: "Press semi smart key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/15.jpg",
        imageDesc: "Press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/16.jpg",
        imageDesc: "Press control unit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/17.jpg",
        imageDesc: "Press semi smart key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/18.jpg",
        imageDesc: "Press read cem security data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/19.jpg",
        imageDesc: "Read instructions and press orange button"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/20.jpg",
        imageDesc: "You will see the diagram for cem type 1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/21.jpg",
        imageDesc: "There is also a second type of cem "),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/22.jpg",
        imageDesc: "Connect the xp400"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/23.jpg",
        imageDesc: "Make full size screen with the proper diagram"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/24.jpg",
        imageDesc: "Put solder on the solder points"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/25.jpg",
        imageDesc: "Solder the wires based on the diagram"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/26.jpg",
        imageDesc:
            "This is the diagram for how to connect the wires to the xp400"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/27.jpg",
        imageDesc: "Connect the wires to the xp400"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/28.jpg",
        imageDesc: "Press cem type 1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/29.jpg",
        imageDesc: "Read, connect 12 volt and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/30.jpg",
        imageDesc: "Connect 12 volts"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/31.jpg",
        imageDesc: "Establishing communication"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/32.jpg",
        imageDesc: "Data being read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/33.jpg",
        imageDesc: "Success, press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/34.jpg",
        imageDesc:
            "Save the file, I recommend opening a new file and naming it last 6 digits of the vin"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/35.jpg",
        imageDesc: "New folder"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/36.jpg",
        imageDesc: "Press save"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/37.jpg",
        imageDesc: "Desolder the wires"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/38.jpg",
        imageDesc: "Reinstall the cem board"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/39.jpg",
        imageDesc: "Reinstall the cem and connect all adaptors"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/40.jpg",
        imageDesc: "Reinstall glove box"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/41.jpg",
        imageDesc: "Connect vci to the obd"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/42.jpg",
        imageDesc: "Press esc"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/43.jpg",
        imageDesc: "Press add semi smart key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/44.jpg",
        imageDesc: "Read instructions"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/45.jpg",
        imageDesc: "Connect usb"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/46.jpg",
        imageDesc: "Press the house shape button"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/47.jpg",
        imageDesc: "Press the left arrow"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/48.jpg",
        imageDesc: "Press system settings"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/49.jpg",
        imageDesc: "Turn off BT"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/50.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/51.jpg",
        imageDesc: "Follow instructions"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/52.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/53.jpg",
        imageDesc: "Load the file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/54.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/55.jpg",
        imageDesc: "Load success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/56.jpg",
        imageDesc: "Read and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/57.jpg",
        imageDesc: "Follow instructions and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/58.jpg",
        imageDesc: "Press learning and insert a key in the slot"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/59.jpg",
        imageDesc:
            "Follow instructions and press ok and than put key in the slot again"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/60.jpg",
        imageDesc: "Key is learned successfully"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/volvoXC602016/61.jpg",
        imageDesc: "Start the car!"),
  ],
);

ButtonModel maseratiGhibli2019 = ButtonModel(
  btnName: "Maserati Ghibli 2019",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/1.jpg",
        imageDesc:
            "On passenger floor there is a cover,open it and connect the bypass cable and connect 12v to the propad"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/2.jpg",
        imageDesc: "On autopropad press Maserati"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/3.jpg",
        imageDesc: "Press 2016-"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/4.jpg",
        imageDesc: "Press Ghibli"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/5.jpg",
        imageDesc: "Press smart key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/6.jpg",
        imageDesc: "Press read security code"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/7.jpg",
        imageDesc: "Press backup antitheft data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/8.jpg",
        imageDesc: "It will read data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/9.jpg",
        imageDesc: "Press ok and save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/10.jpg",
        imageDesc: "Press get pin from backup data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/11.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/12.jpg",
        imageDesc: "Load the file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/13.jpg",
        imageDesc: "It will show the code"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/14.jpg",
        imageDesc: "Press add smart key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/15.jpg",
        imageDesc: "Follow instructions and press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/16.jpg",
        imageDesc: "Input the code"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/17.jpg",
        imageDesc:
            "Press unlock button near the start button until it programs"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/maseratiGhibli2019/18.jpg",
        imageDesc: "Start the car!"),
  ],
);

ButtonModel mercedesCLK4302004 = ButtonModel(
  btnName: "Mercedes CLK430 2004",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/1.jpg",
        imageDesc: "Remove the ignition ring"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/2.jpg",
        imageDesc: "Remove bottom cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/3.jpg",
        imageDesc: "Pull out the ignition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/4.jpg",
        imageDesc: "Take out the ignition and make note that this is w210"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/5.jpg",
        imageDesc: "Load vvdimb and press password calculation"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/6.jpg",
        imageDesc: "Select lost all working key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/7.jpg",
        imageDesc: "Choose w202,208,210(fast)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/8.jpg",
        imageDesc: "Press data acquisition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/9.jpg",
        imageDesc: "This is your diagram, press next"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/10.jpg",
        imageDesc: "You will need this 210 cable and turn on line to line 1"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/11.jpg",
        imageDesc: "Connect it to the vvdi obd cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/12.jpg",
        imageDesc: "Connect the other side to the ignition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/13.jpg",
        imageDesc:
            "Connect the fast calculation adaptor and connect to it 12v"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/14.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/15.jpg",
        imageDesc: "Read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/16.jpg",
        imageDesc: "Connect their adaptor to the ignition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/17.jpg",
        imageDesc: "It will start reading"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/18.jpg",
        imageDesc: "Now wait 18 minutes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/19.jpg",
        imageDesc: "Save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/20.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/21.jpg",
        imageDesc: "Press upload data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/22.jpg",
        imageDesc: "Open the file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/23.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/24.jpg",
        imageDesc: "Wait 50 seconds and than press auto refresh"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/25.jpg",
        imageDesc: "Press query results"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/26.jpg",
        imageDesc: "Press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/27.jpg",
        imageDesc: "You wil get the password, press copy"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/28.jpg",
        imageDesc: "Press eis tools"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/29.jpg",
        imageDesc: "Connect the 12v cable to the 210 cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/30.jpg",
        imageDesc: "Press ir"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/31.jpg",
        imageDesc: "Press w202, 208, 210"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/32.jpg",
        imageDesc: "Insert their to the ignition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/33.jpg",
        imageDesc: "Press read eis data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/34.jpg",
        imageDesc: "You will see the data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/35.jpg",
        imageDesc: "Press paste and it will paste the password"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/36.jpg",
        imageDesc: "Press save eis data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/37.jpg",
        imageDesc: "Save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/38.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/39.jpg",
        imageDesc: "Save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/40.jpg",
        imageDesc: "Press prepare key file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/41.jpg",
        imageDesc: "Press load eis file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/42.jpg",
        imageDesc: "Load the vvdimb file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/43.jpg",
        imageDesc: "You will see all the data, press prepare key file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/44.jpg",
        imageDesc: "Please wait"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/45.jpg",
        imageDesc: "Completed"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/46.jpg",
        imageDesc: "Press read write key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/47.jpg",
        imageDesc: "Put a blank key in the programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/48.jpg",
        imageDesc: "Press identification key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/49.jpg",
        imageDesc: "Press load key file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/50.jpg",
        imageDesc: "Choose an unused file (number 051)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/51.jpg",
        imageDesc: "Press write"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/52.jpg",
        imageDesc: "Press identification key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/53.jpg",
        imageDesc: "Make sure you see all this data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/54.jpg",
        imageDesc: "Reconnect the ignition"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/55.jpg",
        imageDesc: "Insert key for 5 seconds and take it out"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/56.jpg",
        imageDesc: "Reinsert the key and now it can turn and start the car"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/MercedesCLK4302004/57.jpg",
        imageDesc: "Put everything back in place and start the car!"),
  ],
);

ButtonModel porscheCayenne2008 = ButtonModel(
  btnName: "Porsche Cayenne 2008",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/1.jpg",
        imageDesc: "Open the bottom cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/2.jpg",
        imageDesc: "Remove the air filter"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/3.jpg",
        imageDesc: "Remove the kessy"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/4.jpg",
        imageDesc: "This is the kessy"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/5.jpg",
        imageDesc: "Open the kessy"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/6.jpg",
        imageDesc: "This is the target chip"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/7.jpg",
        imageDesc: "Connect vvdi prog and the clip adaptor"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/8.jpg",
        imageDesc: "Connect the clip to the chip"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/9.jpg",
        imageDesc: "Connect 12v to the vvdi prog"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/10.jpg",
        imageDesc: "Go to eeprom/ microchip/ 93c86a(clip)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/11.jpg",
        imageDesc: "Press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/12.jpg",
        imageDesc: "Read success press verify"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/13.jpg",
        imageDesc: "Verify success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/14.jpg",
        imageDesc: "Save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/15.jpg",
        imageDesc: "Load vvdi2 and press transponder programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/16.jpg",
        imageDesc:
            "Go to euro/Porsche/kessy/hitag 93c86 and press load eeprom dump"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/17.jpg",
        imageDesc: "Load the file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/18.jpg",
        imageDesc: "You will see the key data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/19.jpg",
        imageDesc: "Put a blank key in the programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/20.jpg",
        imageDesc: "Press make dealer key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/21.jpg",
        imageDesc: "Press pcf7936"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/22.jpg",
        imageDesc: "Press ok to save the new file with the new key data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/23.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/24.jpg",
        imageDesc: "Save the new file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/25.jpg",
        imageDesc: "Go back to vvdi prog and press open"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/26.jpg",
        imageDesc: "Load the new key file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/27.jpg",
        imageDesc: "Press write"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/28.jpg",
        imageDesc: "Write is success, press verify"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/29.jpg",
        imageDesc:
            "Use lishi to get key bitting or cut any key combination (cut by hu66 extra cut)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/30.jpg",
        imageDesc: "Rinstall the kessy"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/31.jpg",
        imageDesc:
            "Insert key in the ignition ,turn on than off than remove key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/PorscheCayenne2008/32.jpg",
        imageDesc: "Start the car!"),
  ],
);

ButtonModel jaguarFpace2017 = ButtonModel(
  btnName: "Jaguar F Pace 2017",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/1.png",
        imageDesc:
            "Here is the kvm module in the  rear right trunk, remove these and pull back"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/2.jpg",
        imageDesc: "Here is the kvm, remove it"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/3.jpg",
        imageDesc: "Place the kvm on bench"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/4.jpg",
        imageDesc: "Open the kvm, take out the board and position it this way"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/5.jpg",
        imageDesc: "Open vvdi prog, go to other, landrover, rfa unsecured 256"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/6.jpg",
        imageDesc: "Press connection diagram"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/7.jpg",
        imageDesc: "This is the diagram and it tells you which cable to use"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/8.jpg",
        imageDesc: "Make the diagram bigger so you can see better"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/9.jpg",
        imageDesc: "Put soldier on these 4 points"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/10.jpg",
        imageDesc: "Use this cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/11.jpg",
        imageDesc: "Solder these 4 wires"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/12.jpg",
        imageDesc: "Connect the cable to the prog and 12 volt cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/13.jpg",
        imageDesc: "On d flash tab press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/14.jpg",
        imageDesc: "It will initialize"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/15.jpg",
        imageDesc: "It will show operation success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/16.jpg",
        imageDesc: "Save the file as dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/17.jpg",
        imageDesc: "Go to eee tab and press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/18.jpg",
        imageDesc: "Operation success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/19.jpg",
        imageDesc: "Go to save to"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/20.jpg",
        imageDesc: "Save as eee"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/21.jpg",
        imageDesc: "Connect vvdi 2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/22.jpg",
        imageDesc: "Press transponder program"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/23.jpg",
        imageDesc: "Press immobilizer data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/24.jpg",
        imageDesc: "Go to euro, rover jaguar 2015"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/25.jpg",
        imageDesc: "Press load rfa dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/26.jpg",
        imageDesc: "Load dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/27.jpg",
        imageDesc: "Press load rfa eeprom"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/28.jpg",
        imageDesc: "Load eee file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/29.jpg",
        imageDesc:
            "Choose an empty slot and press make dealer key after you input a blank key in the vvdi2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/30.jpg",
        imageDesc:
            "Tool will show success and will create a new dflash file and new eee file and will be saved automatically"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/31.jpg",
        imageDesc: "Go back to vvdi prog in dflash tab press open file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/32.jpg",
        imageDesc: "Load the new dflash file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/33.jpg",
        imageDesc: "Press write and than yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/34.jpg",
        imageDesc: "Go to eee tab and press open"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/35.jpg",
        imageDesc: "Load new eee file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/36.jpg",
        imageDesc: "Press write and than yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarFpace2017/37.jpg",
        imageDesc:
            "Operation success, install back the kvm and start the car!"),
  ],
);

ButtonModel jaguarXF2016 = ButtonModel(
  btnName: "Jaguar XF 2016",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/1.jpg",
        imageDesc:
            "Here is the kvm module behind the rear left seat, remove 2 10mm screws"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/2.jpg",
        imageDesc: "Remove the kvm"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/3.jpg",
        imageDesc: "Open the kvm, take out the board and position it this way"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/4.jpg",
        imageDesc: "Open vvdi prog, go to other, landrover, rfa unsecured 256"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/5.jpg",
        imageDesc: "press connection diagram"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/6.jpg",
        imageDesc: "This is the diagram and it tells you which cable to use"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/7.jpg",
        imageDesc: "Make the diagram bigger so you can see better"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/8.jpg",
        imageDesc: "Put soldier on these 4 points"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/9.jpg",
        imageDesc: "Use this cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/10.jpg",
        imageDesc: "Solder these 4 wires"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/11.jpg",
        imageDesc: "Connect the cable to the prog and 12 volt cable"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/12.jpg",
        imageDesc: "On d flash tab press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/13.jpg",
        imageDesc: "It will initialize"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/14.jpg",
        imageDesc: "It will show operation success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/15.jpg",
        imageDesc: "Save the file as dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/16.jpg",
        imageDesc: "Go to eee tab and press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/17.jpg",
        imageDesc: "Operation success"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/18.jpg",
        imageDesc: "Go to save to"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/19.jpg",
        imageDesc: "Save as eee"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/20.jpg",
        imageDesc: "Connect vvdi 2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/21.jpg",
        imageDesc: "Press transponder program"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/22.jpg",
        imageDesc: "Press immobilizer data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/23.jpg",
        imageDesc: "Go to euro, rover jaguar 2015"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/24.jpg",
        imageDesc: "Press load rfa dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/25.jpg",
        imageDesc: "Load dflash"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/26.jpg",
        imageDesc: "Press load rfa eeprom"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/27.jpg",
        imageDesc: "Load eee file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/28.jpg",
        imageDesc:
            "Choose an empty slot and press make dealer key after you input a blank key in the vvdi2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/29.jpg",
        imageDesc:
            "Tool will show success and will create a new dflash file and new eee file and will be saved automatically"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/30.jpg",
        imageDesc: "Go back to vvdi prog in dflash tab press open file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/31.jpg",
        imageDesc: "Load the new dflash file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/32.jpg",
        imageDesc: "Press write and than yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/33.jpg",
        imageDesc: "Go to eee tab and press open"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/34.jpg",
        imageDesc: "Load new eee file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/35.jpg",
        imageDesc: "Press write and than yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/jaguarXF2016/36.jpg",
        imageDesc:
            "Operation success, install back the kvm and start the car!"),
  ],
);

ButtonModel vwcc2013 = ButtonModel(
  btnName: "VW CC 2013",
  imagesDescriptions: [
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/1.jpg",
        imageDesc: "Remove glove compartment (7 screws total)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/2.jpg",
        imageDesc: "Remove the immobilizer unit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/3.jpg",
        imageDesc: "Remove bottom cover"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/4.jpg",
        imageDesc: "Disconnect the wires"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/5.jpg",
        imageDesc: "Open the unit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/6.jpg",
        imageDesc: "Take out the board and place on bench"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/7.jpg",
        imageDesc: "This is the target chip 95320"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/8.jpg",
        imageDesc:
            "Load vvdi prog and go to eeprom and flash/st(clip)/m95320(clip)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/9.jpg",
        imageDesc: "Connect vvdi prog and connect the clips to the chip"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/10.jpg",
        imageDesc: "Press read"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/11.jpg",
        imageDesc: "Save the file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/12.jpg",
        imageDesc: "Laod vvdi2 and press transponder programmer"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/13.jpg",
        imageDesc:
            "Press immobilizer data tool and go to euro/vw/passat/comfort id48 95320, than press load eeprom dump"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/14.jpg",
        imageDesc: "Load the file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/15.jpg",
        imageDesc: "You will see the key data"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/16.jpg",
        imageDesc: "Press make dealer key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/17.jpg",
        imageDesc: "Choose megamos 48"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/18.jpg",
        imageDesc: "Insert a blank key to the vvdi2"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/19.jpg",
        imageDesc: "Press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/20.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/21.jpg",
        imageDesc: "Save the new key file"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/22.jpg",
        imageDesc: "Go back to vvdi prog and press open"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/23.jpg",
        imageDesc: "Open the new file that you saved"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/24.jpg",
        imageDesc: "Press write"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/25.jpg",
        imageDesc: "Press yes"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/26.jpg",
        imageDesc: "Reinstall the immo unit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/27.jpg",
        imageDesc: "Reinstall the glove box"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/28.jpg",
        imageDesc: "Press the key in the slot"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/29.jpg",
        imageDesc: "Press the brake and start the car!"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/30.jpg",
        imageDesc: "Now to program the buttons load the autopropad"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/31.jpg",
        imageDesc: "Press volkswagon"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/32.jpg",
        imageDesc: "Select by type"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/33.jpg",
        imageDesc: "Remote control function"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/34.jpg",
        imageDesc: "Read and press ok"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/35.jpg",
        imageDesc: "Select 46 central comfort module (canbus)"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/36.jpg",
        imageDesc: "Select program remote"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/37.jpg",
        imageDesc: "Read and follow the instructions"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/38.jpg",
        imageDesc: "Press the key so it will pop out a bit"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/39.jpg",
        imageDesc: "Press any button on the key"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/40.jpg",
        imageDesc: "Check if the buttons work"),
    ImageDescModel(
        imagePath: "assets/advanceBtnDesc/vwcc2013/41.jpg",
        imageDesc: "Press ok and you are done!"),
  ],
);
