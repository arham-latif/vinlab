import '../../generated/assets.dart';

class CarYear {
  String year;
  String imagePath;

  CarYear({required this.year, required this.imagePath});
}

class CarModel {
  String brandName;
  List<CarYear> brandModelYears;

  CarModel({required this.brandName, required this.brandModelYears});
}

List<CarModel> learningSlots = [
  CarModel(brandName: 'Buick', brandModelYears: [
    CarYear(year: 'Buick Enclave 2018 to 2023', imagePath: Assets.buickEnclave1823),
    CarYear(year: 'Buick Enocre 2017 to 2022', imagePath: Assets.buickEncore1722),
    CarYear(year: 'Buick Enocre 2023', imagePath: Assets.buickEncore23),
    CarYear(year: 'Buick Lacross 2010 to 2013', imagePath: Assets.buickLacross1013),
    CarYear(year: 'Buick Lacross 2014 to 2016', imagePath: Assets.buickLacross1416),
    CarYear(year: 'Buick Lacross 2017 to 2019', imagePath: Assets.buickLacross1719),
    CarYear(year: 'Buick regal 2013 to 2017', imagePath: Assets.buickRegal1317),
    CarYear(year: 'Buick regal 2018 to 2020', imagePath: Assets.buickRegal1820),
    CarYear(year: 'Buick Verano 2012 to 2017', imagePath: Assets.buickVerano1217),
    CarYear(year: 'Buick Envision 2017 to 2020', imagePath: Assets.buickEnvision1720),
    CarYear(year: 'Buick Envision 2021 to 2023', imagePath: Assets.buickEnvision2123),
  ]),
  CarModel(brandName: 'Cadillac', brandModelYears: [
    CarYear(year: 'Cadillac ats 2013 to 2019', imagePath: Assets.cadillacAts1319),
    CarYear(year: 'Cadillac ct4 2020 to 2022', imagePath: Assets.cadillacCt42022),
    CarYear(year: 'Cadillac ct5 2020 to 2022', imagePath: Assets.cadillacCt52022),
    CarYear(year: 'Cadillac ct6 2016 to 2018', imagePath: Assets.cadillacCt61618),
    CarYear(year: 'Cadillac ct6 2019 & 2020', imagePath: Assets.cadillacCt61920),
    CarYear(year: 'Cadillac cts 2008 to 2014', imagePath: Assets.cadillacCts0814),
    CarYear(year: 'Cadillac cts 2015 to 2019', imagePath: Assets.cadillacCts1519),
    CarYear(year: 'Cadillac escalade 2015 to 2019', imagePath: Assets.cadillacEscalade1519),
    CarYear(year: 'Cadillac srx 2010 to 2014', imagePath: Assets.cadillacSrx1014),
    CarYear(year: 'Cadillac srx 2015 to 2016', imagePath: Assets.cadillacSrx1516),
    CarYear(year: 'Cadillac sts 2005 to 2007', imagePath: Assets.cadillacSts0507),
    CarYear(year: 'Cadillac xlr 2004 to 2007', imagePath: Assets.cadillacXlr0407),
    CarYear(year: 'Cadillac xt4 2019 to 2021', imagePath: Assets.cadillacXt41921),
    CarYear(year: 'Cadillac xt5 2017 to 2021', imagePath: Assets.cadillacXt51721),
    CarYear(year: 'Cadillac xt6 2017 to 2021', imagePath: Assets.cadillacXt61721),
    CarYear(year: 'Cadillac xts 2013 to 2019', imagePath: Assets.cadillacXts1319),
  ]),
  CarModel(brandName: 'Chevy', brandModelYears: [
    CarYear(year: 'Chevy Camaro 2016 to 2023', imagePath: Assets.chevyCamaro1623),
    CarYear(year: 'Chevy Corvette 2005 to 2007', imagePath: Assets.chevyCorvette0507),
    CarYear(year: 'Chevy Corvette 2008 to 2013', imagePath: Assets.chevyCorvette0813),
    CarYear(year: 'Chevy Corvette 2014 to 2019', imagePath: Assets.chevyCorvette1419),
    CarYear(year: 'Chevy Corvette 2020 to 2023', imagePath: Assets.chevyCorvette2023),
    CarYear(year: 'Chevy Cruze 2011 to 2016', imagePath: Assets.chevyCruze1116),
    CarYear(year: 'Chevy Cruze 2017 to 2020', imagePath: Assets.chevyCruze1720),
    CarYear(year: 'Chevy Equinox 2018 to 2021', imagePath: Assets.chevyEquinox1821),
    CarYear(year: 'Chevy Impala 2014 to 2019', imagePath: Assets.chevyImpala1419),
    CarYear(year: 'Chevy Malibu 2017 to 2021', imagePath: Assets.chevyMalibu1721),
    CarYear(year: 'Chevy Silverado 2019 to 2021', imagePath: Assets.chevySilverado1921),
    CarYear(year: 'Chevy Silverado 2022 & 2023', imagePath: Assets.chevySilverado2223),
    CarYear(year: 'Chevy Sonic 2017 to 2020', imagePath: Assets.chevySonic1720),
    CarYear(year: 'Chevy Spark 2016 to 2020', imagePath: Assets.chevySpark1620),
    CarYear(year: 'Chevy Suburban 2015 to 2020', imagePath: Assets.chevySuburban1520),
    CarYear(year: 'Chevy Suburban 2021 to 2023', imagePath: Assets.chevySuburban2123),
    CarYear(year: 'Chevy Tahoe 2015', imagePath: Assets.chevyTahoe15),
    CarYear(year: 'Chevy Traverse 2018 to 2021', imagePath: Assets.chevyTraverse1821),
    CarYear(year: 'Chevy Trax 2017 to 2022', imagePath: Assets.chevyTrax1722),
    CarYear(year: 'Chevy Bolt 2017 to 2022', imagePath: Assets.chevyBolt1722),
    CarYear(year: 'Chevy Trailblazer 2021 to 2022', imagePath: Assets.chevyTrailblazer2122),
    CarYear(year: 'Chevy Volt 2016 to 2019', imagePath: Assets.chevyVolt1619),
  ]),
  CarModel(brandName: 'Ford', brandModelYears: [
    CarYear(year: 'Ford Bronco 2021', imagePath: Assets.fordBronco21),
    CarYear(year: 'Ford Bronco 2022 & 2023', imagePath: Assets.fordBronco2223),
    CarYear(year: 'Ford Eco Sport 2018 & 2022', imagePath: Assets.fordEcosport1822),
    CarYear(year: 'Ford Edge 2012 to 2014', imagePath: Assets.fordEdge1214),
    CarYear(year: 'Ford Edge 2015 to 2020', imagePath: Assets.fordEdge1520),
    CarYear(year: 'Ford Edge 2021 to 2023', imagePath: Assets.fordEdge2123),
    CarYear(year: 'Ford Escape 2017 to 2019', imagePath: Assets.fordEscape1719),
    CarYear(year: 'Ford Escape 2020 to 2022', imagePath: Assets.fordEscape2022),
    CarYear(year: 'Ford Expendition 2018 to 2023', imagePath: Assets.fordExpedition1823),
    CarYear(year: 'Ford Explorer 2011 to 2023', imagePath: Assets.fordExplorer1123),
    CarYear(year: 'Ford F150 2018 to 2023', imagePath: Assets.fordF1501823),
    CarYear(year: 'Ford F250, F350, F450 and F550 2017 to 2023', imagePath: Assets.fordF250F350F450F5501723),
    CarYear(year: 'Ford Fusion 2017 to 2023', imagePath: Assets.fordFusion1723),
    CarYear(year: 'Ford Mustang 2018 to 2022', imagePath: Assets.fordMustang1822),
  ]),
  CarModel(brandName: 'Lincoln', brandModelYears: [
    CarYear(year: 'Lincoln Continental 2017 to 2020', imagePath: Assets.lincolnContinental1720),
    CarYear(year: 'Lincoln MKC 2017 to 2019', imagePath: Assets.lincolnMkc1719),
    CarYear(year: 'Lincoln MKX 2017 to 2019', imagePath: Assets.lincolnMkx1719),
    CarYear(year: 'Lincoln MKZ 2017 to 2020', imagePath: Assets.lincolnMkz1720),
    CarYear(year: 'Lincoln Navigator 2018 to 2020', imagePath: Assets.lincolnNavigator1820),
  ]),
  CarModel(brandName: 'GMC', brandModelYears: [
    CarYear(year: 'GMC Acadia 2017 to 2020', imagePath: Assets.gmcAcadia1720),
    CarYear(year: 'GMC Sierra 2019 to 2022', imagePath: Assets.gmcSierra1922),
    CarYear(year: 'GMC Sierra 2023', imagePath: Assets.gmcSierra23),
    CarYear(year: 'GMC Terrain 2018 to 2023', imagePath: Assets.gmcTerrain1823),
    CarYear(year: 'GMC Yukon 2015 to 2020', imagePath: Assets.gmcYukon1520),
    CarYear(year: 'GMC Yukon 2021 to 2023', imagePath: Assets.gmcYukon2123),
  ]),
];
