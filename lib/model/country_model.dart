class Countries {
  late NameModel? _name;
  NameModel get name => _name!;
  List<String>? _tld;
  String? _cca2;
  String? _ccn3;
  String? _cca3;
  String? _cioc;
  bool? _independent;
  String? _status;
  bool? _unMember;
  Currencies? _currencies;
  Idd? _idd;
  List<String>? _capital;
  List<String>? _altSpellings;
  String? _region;
  String? _subregion;
  Languages? _languages;
  Translations? _translations;
  List<double>? _latlng;
  bool? _landlocked;
  int? _area;
  Demonyms? _demonyms;
  late String _flag;
   String get flag => _flag;
  Maps? _maps;
  int? _population;
  String? _fifa;
  Car? _car;
  List<String>? _timezones;
  List<String>? _continents;
  late Flags? _flags;
  Flags get flags => _flags!;
  Flags? _coatOfArms;
  String? _startOfWeek;
  CapitalInfo? _capitalInfo;
  PostalCode? _postalCode;

  Countries(
      {required name,
      required tld,
      required cca2,
      required ccn3,
      required cca3,
      required cioc,
      required independent,
      required status,
      required unMember,
      required currencies,
      required idd,
      required capital,
      required altSpellings,
      required region,
      required subregion,
      required languages,
      required translations,
      required latlng,
      required landlocked,
      required area,
      required demonyms,
      required flag,
      required maps,
      required population,
      required fifa,
      required car,
      required timezones,
      required continents,
      required flags,
      required coatOfArms,
      required startOfWeek,
      required capitalInfo,
      required postalCode}) {
    this._name = name;
    this._flags = flags;
  }

  Countries.fromJson(Map<String, dynamic> json) {
    _name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    _tld = json['tld'].cast<String>();
    _cca2 = json['cca2'];
    _ccn3 = json['ccn3'];
    _cca3 = json['cca3'];
    _cioc = json['cioc'];
    _independent = json['independent'];
    _status = json['status'];
    _unMember = json['unMember'];
    _currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    _idd = json['idd'] != null ? new Idd.fromJson(json['idd']) : null;
    _capital = json['capital'].cast<String>();
    _altSpellings = json['altSpellings'].cast<String>();
    _region = json['region'];
    _subregion = json['subregion'];
    _languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
    _translations = json['translations'] != null
        ? new Translations.fromJson(json['translations'])
        : null;
    _latlng = json['latlng'].cast<double>();
    _landlocked = json['landlocked'];
    _area = json['area'];
    _demonyms = json['demonyms'] != null
        ? new Demonyms.fromJson(json['demonyms'])
        : null;
    _flag = json['flag'];
    _maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
    _population = json['population'];
    _fifa = json['fifa'];
    _car = json['car'] != null ? new Car.fromJson(json['car']) : null;
    _timezones = json['timezones'].cast<String>();
    _continents = json['continents'].cast<String>();
    _flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    _coatOfArms = json['coatOfArms'] != null
        ? new Flags.fromJson(json['coatOfArms'])
        : null;
    _startOfWeek = json['startOfWeek'];
    _capitalInfo = json['capitalInfo'] != null
        ? new CapitalInfo.fromJson(json['capitalInfo'])
        : null;
    _postalCode = json['postalCode'] != null
        ? new PostalCode.fromJson(json['postalCode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.name != null) {
      data['name'] = this.name.toJson();
    }
    data['tld'] = this._tld;
    data['cca2'] = this._cca2;
    data['ccn3'] = this._ccn3;
    data['cca3'] = this._cca3;
    data['cioc'] = this._cioc;
    data['independent'] = this._independent;
    data['status'] = this._status;
    data['unMember'] = this._unMember;
    if (this._currencies != null) {
      data['currencies'] = this._currencies!.toJson();
    }
    if (this._idd != null) {
      data['idd'] = this._idd!.toJson();
    }
    data['capital'] = this._capital;
    data['altSpellings'] = this._altSpellings;
    data['region'] = this._region;
    data['subregion'] = this._subregion;
    if (this._languages != null) {
      data['languages'] = this._languages!.toJson();
    }
    if (this._translations != null) {
      data['translations'] = this._translations!.toJson();
    }
    data['latlng'] = this._latlng;
    data['landlocked'] = this._landlocked;
    data['area'] = this._area;
    if (this._demonyms != null) {
      data['demonyms'] = this._demonyms!.toJson();
    }
    data['flag'] = this._flag;
    if (this._maps != null) {
      data['maps'] = this._maps!.toJson();
    }
    data['population'] = this._population;
    data['fifa'] = this._fifa;
    if (this._car != null) {
      data['car'] = this._car!.toJson();
    }
    data['timezones'] = this._timezones;
    data['continents'] = this._continents;
    if (this.flags != null) {
      data['flags'] = this.flags.toJson();
    }
    if (this._coatOfArms != null) {
      data['coatOfArms'] = this._coatOfArms!.toJson();
    }
    data['startOfWeek'] = this._startOfWeek;
    if (this._capitalInfo != null) {
      data['capitalInfo'] = this._capitalInfo!.toJson();
    }
    if (this._postalCode != null) {
      data['postalCode'] = this._postalCode!.toJson();
    }
    return data;
  }
}

class NameModel {
  String? common;
  String? official;
  NativeName? nativeName;

  NameModel({this.common, this.official, this.nativeName});

  NameModel.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? new NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    if (this.nativeName != null) {
      data['nativeName'] = this.nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Eng? eng;

  NativeName({this.eng});

  NativeName.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    return data;
  }
}

class Eng {
  String? official;
  String? common;

  Eng({this.official, this.common});

  Eng.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}

class Currencies {
  BBD? bBD;

  Currencies({this.bBD});

  Currencies.fromJson(Map<String, dynamic> json) {
    bBD = json['BBD'] != null ? new BBD.fromJson(json['BBD']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bBD != null) {
      data['BBD'] = this.bBD!.toJson();
    }
    return data;
  }
}

class BBD {
  String? name;
  String? symbol;

  BBD({this.name, this.symbol});

  BBD.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['root'] = this.root;
    data['suffixes'] = this.suffixes;
    return data;
  }
}

class Languages {
  String? eng;

  Languages({this.eng});

  Languages.fromJson(Map<String, dynamic> json) {
    eng = json['eng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eng'] = this.eng;
    return data;
  }
}

class Translations {
  Eng? ara;
  Eng? bre;
  Eng? ces;
  Eng? cym;
  Eng? deu;
  Eng? est;
  Eng? fin;
  Eng? fra;
  Eng? hrv;
  Eng? hun;
  Eng? ita;
  Eng? jpn;
  Eng? kor;
  Eng? nld;
  Eng? per;
  Eng? pol;
  Eng? por;
  Eng? rus;
  Eng? slk;
  Eng? spa;
  Eng? swe;
  Eng? tur;
  Eng? urd;
  Eng? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Eng.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? new Eng.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? new Eng.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? new Eng.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? new Eng.fromJson(json['deu']) : null;
    est = json['est'] != null ? new Eng.fromJson(json['est']) : null;
    fin = json['fin'] != null ? new Eng.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? new Eng.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? new Eng.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? new Eng.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? new Eng.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? new Eng.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? new Eng.fromJson(json['nld']) : null;
    per = json['per'] != null ? new Eng.fromJson(json['per']) : null;
    pol = json['pol'] != null ? new Eng.fromJson(json['pol']) : null;
    por = json['por'] != null ? new Eng.fromJson(json['por']) : null;
    rus = json['rus'] != null ? new Eng.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? new Eng.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? new Eng.fromJson(json['spa']) : null;
    swe = json['swe'] != null ? new Eng.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? new Eng.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? new Eng.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? new Eng.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ara != null) {
      data['ara'] = this.ara!.toJson();
    }
    if (this.bre != null) {
      data['bre'] = this.bre!.toJson();
    }
    if (this.ces != null) {
      data['ces'] = this.ces!.toJson();
    }
    if (this.cym != null) {
      data['cym'] = this.cym!.toJson();
    }
    if (this.deu != null) {
      data['deu'] = this.deu!.toJson();
    }
    if (this.est != null) {
      data['est'] = this.est!.toJson();
    }
    if (this.fin != null) {
      data['fin'] = this.fin!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    if (this.hrv != null) {
      data['hrv'] = this.hrv!.toJson();
    }
    if (this.hun != null) {
      data['hun'] = this.hun!.toJson();
    }
    if (this.ita != null) {
      data['ita'] = this.ita!.toJson();
    }
    if (this.jpn != null) {
      data['jpn'] = this.jpn!.toJson();
    }
    if (this.kor != null) {
      data['kor'] = this.kor!.toJson();
    }
    if (this.nld != null) {
      data['nld'] = this.nld!.toJson();
    }
    if (this.per != null) {
      data['per'] = this.per!.toJson();
    }
    if (this.pol != null) {
      data['pol'] = this.pol!.toJson();
    }
    if (this.por != null) {
      data['por'] = this.por!.toJson();
    }
    if (this.rus != null) {
      data['rus'] = this.rus!.toJson();
    }
    if (this.slk != null) {
      data['slk'] = this.slk!.toJson();
    }
    if (this.spa != null) {
      data['spa'] = this.spa!.toJson();
    }
    if (this.swe != null) {
      data['swe'] = this.swe!.toJson();
    }
    if (this.tur != null) {
      data['tur'] = this.tur!.toJson();
    }
    if (this.urd != null) {
      data['urd'] = this.urd!.toJson();
    }
    if (this.zho != null) {
      data['zho'] = this.zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    return data;
  }
}

class Eng1 {
  String? f;
  String? m;

  Eng1({this.f, this.m});

  Eng1.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signs'] = this.signs;
    data['side'] = this.side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({this.format, this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['regex'] = this.regex;
    return data;
  }
}
