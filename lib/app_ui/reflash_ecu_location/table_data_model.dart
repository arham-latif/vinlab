class CarAttributes {
  String model;
  String year;
  String ecu_location;

  CarAttributes({
    required this.model,
    required this.year,
    required this.ecu_location,
  });
}

class TableDataModel {
  String carMaker;
  List<CarAttributes> modelList = [];

  TableDataModel({required this.carMaker, required this.modelList});
}

List<TableDataModel> reflashEcuLocation = [
  TableDataModel(carMaker: 'Acura', modelList: [
    CarAttributes(
        model: 'NSX',
        year: "1997-2004",
        ecu_location: "Attached to Steering Column"),
    CarAttributes(
        model: 'RL',
        year: '1997-2002',
        ecu_location: 'Attached to Steering Column'),
  ]),
  TableDataModel(carMaker: 'Honda', modelList: [
    CarAttributes(
        model: 'Prelude',
        year: '1996-2004',
        ecu_location: 'Attached to Steering Column'),
  ]),
  TableDataModel(carMaker: 'Lexus', modelList: [
    CarAttributes(
        model: 'ES300', year: '1998-2003', ecu_location: 'Behind Glove Box'),
    CarAttributes(
        model: 'ES330', year: '2004', ecu_location: 'Behind Glove Box'),
    CarAttributes(
        model: 'GS300',
        year: '1998-2004',
        ecu_location: "Under Hood (Driver's Side)"),
    CarAttributes(
        model: 'GS400',
        year: '1998-2000',
        ecu_location: "Under Hood (Driver's Side)"),
    CarAttributes(
        model: 'GS430',
        year: '2001-2003',
        ecu_location: "Under Hood (Driver's Side)"),
    CarAttributes(
        model: 'GX470',
        year: '2003-2004',
        ecu_location: "Behind Instrument Cluster"),
    CarAttributes(
        model: 'IS300',
        year: '2001-2003',
        ecu_location: "Under Hood (Driver's Side)"),
    CarAttributes(
        model: 'LS1997', year: '1997', ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: 'LS400', year: "1998-2000", ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: "LS430",
        year: '2001-2004',
        ecu_location: "Above Navigation System"),
    CarAttributes(
        model: 'LX470', year: '1998-2004', ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: 'RX300', year: '1999-2003', ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: 'RX330', year: '2004', ecu_location: "Above Center Dash"),
    CarAttributes(
        model: "SC300",
        year: "1998-2000",
        ecu_location: "Below Glove Box (Under Carpet)"),
    CarAttributes(
        model: "SC400",
        year: "1998-2000",
        ecu_location: "Below Glove Box (Under Carpet)"),
    CarAttributes(
        model: "SC430",
        year: "2002-2003",
        ecu_location: "Behind Instrument Cluster"),
  ]),
  TableDataModel(carMaker: 'Saab', modelList: [
    CarAttributes(
        model: '93', year: "2003-2009", ecu_location: "Behind Glove Box"),
  ]),
  TableDataModel(carMaker: "Toyota", modelList: [
    CarAttributes(
        model: '4-Runner', year: "1998-2004", ecu_location: "Behind GLove Box"),
    CarAttributes(
        model: 'Avalon', year: "1998-2003", ecu_location: "Bahind Glove Box"),
    CarAttributes(
        model: 'Camry', year: "1998-2009", ecu_location: "Behind Glove Box"),
    CarAttributes(model: 'FJ Cruiser', year: '', ecu_location: ''),
    CarAttributes(
        model: 'Highlander',
        year: "2001-2003",
        ecu_location: "Behind GLove Box"),
    CarAttributes(
        model: 'Landcruiser',
        year: "1998-2004",
        ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: 'MR2', year: '2001-2003', ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: 'Prius',
        year: "2001-2004",
        ecu_location: "Under Dashboard (Above Column)"),
    CarAttributes(
        model: 'RAV4', year: "2002-2003", ecu_location: "Behind Glove Box"),
    CarAttributes(
        model: "Sequoia",
        year: "2001+",
        ecu_location: "Behind Glove Box, Behind Cluster (03+)"),
    CarAttributes(
        model: 'Sienna',
        year: "1998-2004",
        ecu_location: "Behind Glove Box, Above Center Dash (04+)"),
    CarAttributes(
        model: 'Solara', year: "1998-2004", ecu_location: "Behind Glove Box"),
  ])
];
