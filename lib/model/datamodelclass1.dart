class EventModel {
  String? id;
  String? code;
  String? edition;
  List<String>? topics;
  List<String>? organisers;
  List<OrganisersDetails>? organisersDetails;
  List<Media>? media;
  String? keywords;
  bool? promoter;
  bool? questions;
  bool? partners;
  bool? messages;
  bool? verified;
  bool? guest;
  bool? checkout;
  bool? colours;
  int? maxQty;
  int? selectedTab;
  String? name;
  String? city;
  String? country;
  String? continent;
  Created? created;
  Created? lastUpdated;
  String? timeZone;
  int? timeZoneOffset;
  Created? from;
  Created? to;
  Created? open;
  Created? close;
  Created? bookings;
  String? headerBG;
  String? headerTXT;
  String? selectedTXT;
  String? bodyBG;
  String? bodyTXT;
  String? bodyTAB;
  String? buttonTXT;
  String? buttonBG;
  String? background;
  bool? showTitle;
  String? address;
  String? postCode;
  Location? location;
  String? coverUrl;
  String? logoUrl;
  String? description;
  String? email;
  String? phone;
  String? phoneCode;
  String? link;
  String? facebook;
  String? instagram;
  String? type;
  String? display;
  String? process;
  String? eventPlan;
  AddsOn? addsOn;
  int? capacity;
  bool? show;
  bool? whoIsIn;
  bool? posts;
  bool? pages;
  bool? eventFull;
  bool? cancelled;
  bool? showRoom;
  bool? showProgramme;
  bool? associationMember;
  String? title;
  bool? favourite;
  String? banner;
  CovidDetails? covidDetails;
  ExtendedSchedule? extendedSchedule;
  List<RegistrationForm>? registrationForm;

  EventModel(
      {this.id,
        this.code,
        this.edition,
        this.topics,
        this.organisers,
        this.organisersDetails,
        this.media,
        this.keywords,
        this.promoter,
        this.questions,
        this.partners,
        this.messages,
        this.verified,
        this.guest,
        this.checkout,
        this.colours,
        this.maxQty,
        this.selectedTab,
        this.name,
        this.city,
        this.country,
        this.continent,
        this.created,
        this.lastUpdated,
        this.timeZone,
        this.timeZoneOffset,
        this.from,
        this.to,
        this.open,
        this.close,
        this.bookings,
        this.headerBG,
        this.headerTXT,
        this.selectedTXT,
        this.bodyBG,
        this.bodyTXT,
        this.bodyTAB,
        this.buttonTXT,
        this.buttonBG,
        this.background,
        this.showTitle,
        this.address,
        this.postCode,
        this.location,
        this.coverUrl,
        this.logoUrl,
        this.description,
        this.email,
        this.phone,
        this.phoneCode,
        this.link,
        this.facebook,
        this.instagram,
        this.type,
        this.display,
        this.process,
        this.eventPlan,
        this.addsOn,
        this.capacity,
        this.show,
        this.whoIsIn,
        this.posts,
        this.pages,
        this.eventFull,
        this.cancelled,
        this.showRoom,
        this.showProgramme,
        this.associationMember,
        this.title,
        this.favourite,
        this.banner,
        this.covidDetails,
        this.extendedSchedule,
        this.registrationForm});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    edition = json['edition'];
    topics = json['topics'].cast<String>();
    organisers = json['organisers'].cast<String>();
    if (json['organisersDetails'] != null) {
      organisersDetails = <OrganisersDetails>[];
      json['organisersDetails'].forEach((v) {
        organisersDetails!.add(OrganisersDetails.fromJson(v));
      });
    }

    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    keywords = json['keywords'];
    promoter = json['promoter'];
    questions = json['questions'];
    partners = json['partners'];
    messages = json['messages'];
    verified = json['verified'];
    guest = json['guest'];
    checkout = json['checkout'];
    colours = json['colours'];
    maxQty = json['maxQty'];
    selectedTab = json['selectedTab'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    continent = json['continent'];
    created =
    json['created'] != null ? Created.fromJson(json['created']) : null;
    lastUpdated = json['lastUpdated'] != null
        ? Created.fromJson(json['lastUpdated'])
        : null;
    timeZone = json['timeZone'];
    timeZoneOffset = json['timeZoneOffset'];
    from = json['from'] != null ? Created.fromJson(json['from']) : null;
    to = json['to'] != null ? Created.fromJson(json['to']) : null;
    open = json['open'] != null ? Created.fromJson(json['open']) : null;
    close = json['close'] != null ? Created.fromJson(json['close']) : null;
    bookings = json['bookings'] != null
        ? Created.fromJson(json['bookings'])
        : null;
    headerBG = json['headerBG'];
    headerTXT = json['headerTXT'];
    selectedTXT = json['selectedTXT'];
    bodyBG = json['bodyBG'];
    bodyTXT = json['bodyTXT'];
    bodyTAB = json['bodyTAB'];
    buttonTXT = json['buttonTXT'];
    buttonBG = json['buttonBG'];
    background = json['background'];
    showTitle = json['showTitle'];
    address = json['address'];
    postCode = json['postCode'];
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    coverUrl = json['coverUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    email = json['email'];
    phone = json['phone'];
    phoneCode = json['phoneCode'];
    link = json['link'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    type = json['type'];
    display = json['display'];
    process = json['process'];
    eventPlan = json['eventPlan'];
    addsOn =
    json['addsOn'] != null ? AddsOn.fromJson(json['addsOn']) : null;
    capacity = json['capacity'];
    show = json['show'];
    whoIsIn = json['whoIsIn'];
    posts = json['posts'];
    pages = json['pages'];
    eventFull = json['eventFull'];
    cancelled = json['cancelled'];
    showRoom = json['showRoom'];
    showProgramme = json['showProgramme'];
    associationMember = json['associationMember'];
    title = json['title'];
    favourite = json['favourite'];
    banner = json['banner'];
    covidDetails = json['covidDetails'] != null
        ? CovidDetails.fromJson(json['covidDetails'])
        : null;
    extendedSchedule = json['extendedSchedule'] != null
        ? ExtendedSchedule.fromJson(json['extendedSchedule'])
        : null;
    if (json['registrationForm'] != null) {
      registrationForm = <RegistrationForm>[];
      json['registrationForm'].forEach((v) {
        registrationForm!.add(RegistrationForm.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['edition'] = edition;
    data['topics'] = topics;
    data['organisers'] = organisers;
    if (organisersDetails != null) {
      data['organisersDetails'] =
          organisersDetails!.map((v) => v.toJson()).toList();
    }

    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    data['keywords'] = keywords;
    data['promoter'] = promoter;
    data['questions'] = questions;
    data['partners'] = partners;
    data['messages'] = messages;
    data['verified'] = verified;
    data['guest'] = guest;
    data['checkout'] = checkout;
    data['colours'] = colours;
    data['maxQty'] = maxQty;
    data['selectedTab'] = selectedTab;
    data['name'] = name;
    data['city'] = city;
    data['country'] = country;
    data['continent'] = continent;
    if (created != null) {
      data['created'] = created!.toJson();
    }
    if (lastUpdated != null) {
      data['lastUpdated'] = lastUpdated!.toJson();
    }
    data['timeZone'] = timeZone;
    data['timeZoneOffset'] = timeZoneOffset;
    if (from != null) {
      data['from'] = from!.toJson();
    }
    if (to != null) {
      data['to'] = to!.toJson();
    }
    if (open != null) {
      data['open'] = open!.toJson();
    }
    if (close != null) {
      data['close'] = close!.toJson();
    }
    if (bookings != null) {
      data['bookings'] = bookings!.toJson();
    }
    data['headerBG'] = headerBG;
    data['headerTXT'] = headerTXT;
    data['selectedTXT'] = selectedTXT;
    data['bodyBG'] = bodyBG;
    data['bodyTXT'] = bodyTXT;
    data['bodyTAB'] = bodyTAB;
    data['buttonTXT'] = buttonTXT;
    data['buttonBG'] = buttonBG;
    data['background'] = background;
    data['showTitle'] = showTitle;
    data['address'] = address;
    data['postCode'] = postCode;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['coverUrl'] = coverUrl;
    data['logoUrl'] = logoUrl;
    data['description'] = description;
    data['email'] = email;
    data['phone'] = phone;
    data['phoneCode'] = phoneCode;
    data['link'] = link;
    data['facebook'] = facebook;
    data['instagram'] = instagram;
    data['type'] = type;
    data['display'] = display;
    data['process'] = process;
    data['eventPlan'] = eventPlan;
    if (addsOn != null) {
      data['addsOn'] = addsOn!.toJson();
    }
    data['capacity'] = capacity;
    data['show'] = show;
    data['whoIsIn'] = whoIsIn;
    data['posts'] = posts;
    data['pages'] = pages;
    data['eventFull'] = eventFull;
    data['cancelled'] = cancelled;
    data['showRoom'] = showRoom;
    data['showProgramme'] = showProgramme;
    data['associationMember'] = associationMember;
    data['title'] = title;
    data['favourite'] = favourite;
    data['banner'] = banner;
    if (covidDetails != null) {
      data['covidDetails'] = covidDetails!.toJson();
    }
    if (extendedSchedule != null) {
      data['extendedSchedule'] = extendedSchedule!.toJson();
    }
    if (registrationForm != null) {
      data['registrationForm'] =
          registrationForm!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrganisersDetails {
  String? username;
  String? nationality;
  String? fullName;
  String? pictureUrl;

  OrganisersDetails(
      {this.username, this.nationality, this.fullName, this.pictureUrl});

  OrganisersDetails.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    nationality = json['nationality'];
    fullName = json['fullName'];
    pictureUrl = json['pictureUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['nationality'] = nationality;
    data['fullName'] = fullName;
    data['pictureUrl'] = pictureUrl;
    return data;
  }
}

class Media {
  String? link;
  String? title;

  Media({this.link, this.title});

  Media.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['link'] = link;
    data['title'] = title;
    return data;
  }
}

class Created {
  int? seconds;
  int? nanos;

  Created({this.seconds, this.nanos});

  Created.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    nanos = json['nanos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seconds'] = seconds;
    data['nanos'] = nanos;
    return data;
  }
}

class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class AddsOn {
  int? keywords;
  int? topics;
  int? organisers;
  int? staff;
  int? promoters;
  int? packs;
  int? gateways;

  AddsOn(
      {this.keywords,
        this.topics,
        this.organisers,
        this.staff,
        this.promoters,
        this.packs,
        this.gateways});

  AddsOn.fromJson(Map<String, dynamic> json) {
    keywords = json['keywords'];
    topics = json['topics'];
    organisers = json['organisers'];
    staff = json['staff'];
    promoters = json['promoters'];
    packs = json['packs'];
    gateways = json['gateways'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['keywords'] = keywords;
    data['topics'] = topics;
    data['organisers'] = organisers;
    data['staff'] = staff;
    data['promoters'] = promoters;
    data['packs'] = packs;
    data['gateways'] = gateways;
    return data;
  }
}

class CovidDetails {
  String? description;
  bool? mask;
  bool? changePartners;

  CovidDetails({this.description, this.mask, this.changePartners});

  CovidDetails.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    mask = json['mask'];
    changePartners = json['changePartners'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['mask'] = mask;
    data['changePartners'] = changePartners;
    return data;
  }
}

class ExtendedSchedule {
  Schedule? schedule;
  List<Djs>? djs;
  List<Venues>? venues;
  List<String>? venueCodes;
  List<String>? actions;
  List<EventPacks>? eventPacks;
  String? status;

  ExtendedSchedule(
      {this.schedule,
        this.djs,
        this.venues,
        this.venueCodes,
        this.actions,
        this.eventPacks,
        this.status,
      });

  ExtendedSchedule.fromJson(Map<String, dynamic> json) {
    schedule = json['schedule'] != null
        ? Schedule.fromJson(json['schedule'])
        : null;
    if (json['djs'] != null) {
      djs = <Djs>[];
      json['djs'].forEach((v) {
        djs!.add(Djs.fromJson(v));
      });
    }

    if (json['venues'] != null) {
      venues = <Venues>[];
      json['venues'].forEach((v) {
        venues!.add(Venues.fromJson(v));
      });
    }
    venueCodes = json['venueCodes'].cast<String>();
    actions = json['actions'].cast<String>();
    if (json['eventPacks'] != null) {
      eventPacks = <EventPacks>[];
      json['eventPacks'].forEach((v) {
        eventPacks!.add(EventPacks.fromJson(v));
      });
    }
    status = json['status'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (schedule != null) {
      data['schedule'] = schedule!.toJson();
    }
    if (djs != null) {
      data['djs'] = djs!.map((v) => v.toJson()).toList();
    }

    if (venues != null) {
      data['venues'] = venues!.map((v) => v.toJson()).toList();
    }
    data['venueCodes'] = venueCodes;
    data['actions'] = actions;
    if (eventPacks != null) {
      data['eventPacks'] = eventPacks!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;

    return data;
  }
}

class Schedule {
  String? id;
  List<Itineraries>? itineraries;

  Schedule({this.id, this.itineraries});

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['itineraries'] != null) {
      itineraries = <Itineraries>[];
      json['itineraries'].forEach((v) {
        itineraries!.add(Itineraries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (itineraries != null) {
      data['itineraries'] = itineraries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Itineraries {
  String? id;
  Created? date;
  List<Activities>? activities;

  Itineraries({this.id, this.date, this.activities});

  Itineraries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'] != null ? Created.fromJson(json['date']) : null;
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(Activities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (date != null) {
      data['date'] = date!.toJson();
    }
    if (activities != null) {
      data['activities'] = activities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Activities {
  String? startToEnd;
  bool? toBook;
  bool? toClaim;
  bool? pending;
  bool? partially;
  bool? registered;
  bool? rejected;
  bool? attended;
  bool? refunded;
  bool? full;
  String? activityId;
  String? itineraryId;
  String? timeStart;
  int? timestampStart;
  String? timeEnd;
  int? timestampEnd;
  String? name;
  String? info;
  String? venueCode;

  bool? workshop;
  bool? milonga;
  bool? online;
  int? capacity;
  int? attendants;
  int? leadersCap;
  int? attendantsLeaders;
  int? followersCap;
  int? attendantsFollowers;
  String? currency;
  int? price;
  int? fullPrice;
  int? dollarPrice;
  bool? bookable;
  bool? partial;
  bool? disabled;
  String? pictureUrl;
  bool? show;
  bool? showAvailability;

  Activities(
      {this.startToEnd,
        this.toBook,
        this.toClaim,
        this.pending,
        this.partially,
        this.registered,
        this.rejected,
        this.attended,
        this.refunded,
        this.full,
        this.activityId,
        this.itineraryId,
        this.timeStart,
        this.timestampStart,
        this.timeEnd,
        this.timestampEnd,
        this.name,
        this.info,
        this.venueCode,

        this.workshop,
        this.milonga,
        this.online,
        this.capacity,
        this.attendants,
        this.leadersCap,
        this.attendantsLeaders,
        this.followersCap,
        this.attendantsFollowers,
        this.currency,
        this.price,
        this.fullPrice,
        this.dollarPrice,
        this.bookable,
        this.partial,
        this.disabled,
        this.pictureUrl,
        this.show,
        this.showAvailability});

  Activities.fromJson(Map<String, dynamic> json) {
    startToEnd = json['startToEnd'];
    toBook = json['toBook'];
    toClaim = json['toClaim'];
    pending = json['pending'];
    partially = json['partially'];
    registered = json['registered'];
    rejected = json['rejected'];
    attended = json['attended'];
    refunded = json['refunded'];
    full = json['full'];
    activityId = json['activityId'];
    itineraryId = json['itineraryId'];
    timeStart = json['timeStart'];
    timestampStart = json['timestampStart'];
    timeEnd = json['timeEnd'];
    timestampEnd = json['timestampEnd'];
    name = json['name'];
    info = json['info'];
    venueCode = json['venueCode'];

    workshop = json['workshop'];
    milonga = json['milonga'];
    online = json['online'];
    capacity = json['capacity'];
    attendants = json['attendants'];
    leadersCap = json['leadersCap'];
    attendantsLeaders = json['attendantsLeaders'];
    followersCap = json['followersCap'];
    attendantsFollowers = json['attendantsFollowers'];
    currency = json['currency'];
    price = json['price'];
    fullPrice = json['fullPrice'];
    dollarPrice = json['dollarPrice'];
    bookable = json['bookable'];
    partial = json['partial'];
    disabled = json['disabled'];
    pictureUrl = json['pictureUrl'];
    show = json['show'];
    showAvailability = json['showAvailability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startToEnd'] = startToEnd;
    data['toBook'] = toBook;
    data['toClaim'] = toClaim;
    data['pending'] = pending;
    data['partially'] = partially;
    data['registered'] = registered;
    data['rejected'] = rejected;
    data['attended'] = attended;
    data['refunded'] = refunded;
    data['full'] = full;
    data['activityId'] = activityId;
    data['itineraryId'] = itineraryId;
    data['timeStart'] = timeStart;
    data['timestampStart'] = timestampStart;
    data['timeEnd'] = timeEnd;
    data['timestampEnd'] = timestampEnd;
    data['name'] = name;
    data['info'] = info;
    data['venueCode'] = venueCode;

    data['workshop'] = workshop;
    data['milonga'] = milonga;
    data['online'] = online;
    data['capacity'] = capacity;
    data['attendants'] = attendants;
    data['leadersCap'] = leadersCap;
    data['attendantsLeaders'] = attendantsLeaders;
    data['followersCap'] = followersCap;
    data['attendantsFollowers'] = attendantsFollowers;
    data['currency'] = currency;
    data['price'] = price;
    data['fullPrice'] = fullPrice;
    data['dollarPrice'] = dollarPrice;
    data['bookable'] = bookable;
    data['partial'] = partial;
    data['disabled'] = disabled;
    data['pictureUrl'] = pictureUrl;
    data['show'] = show;
    data['showAvailability'] = showAvailability;
    return data;
  }
}

class Artists {
  String? artistId;
  String? performanceType;

  Artists({this.artistId, this.performanceType});

  Artists.fromJson(Map<String, dynamic> json) {
    artistId = json['artistId'];
    performanceType = json['performanceType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artistId'] = artistId;
    data['performanceType'] = performanceType;
    return data;
  }
}

class Djs {
  String? id;
  String? artisticName;
  String? bio;
  bool? show;
  int? order;
  String? birthCountry;
  String? pictureUrl;
  List<String>? type;

  Djs(
      {this.id,
        this.artisticName,
        this.bio,
        this.show,
        this.order,
        this.birthCountry,
        this.pictureUrl,
        this.type});

  Djs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    artisticName = json['artisticName'];
    bio = json['bio'];
    show = json['show'];
    order = json['order'];
    birthCountry = json['birthCountry'];
    pictureUrl = json['pictureUrl'];

    type = json['type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['artisticName'] = artisticName;
    data['bio'] = bio;
    data['show'] = show;
    data['order'] = order;
    data['birthCountry'] = birthCountry;
    data['pictureUrl'] = pictureUrl;

    data['type'] = type;
    return data;
  }
}

class Venues {
  String? code;
  String? name;
  String? mapName;
  String? address;
  String? postCode;
  String? city;
  String? country;
  Location? location;

  Venues(
      {this.code,
        this.name,
        this.mapName,
        this.address,
        this.postCode,
        this.city,
        this.country,
        this.location,});

  Venues.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    mapName = json['mapName'];
    address = json['address'];
    postCode = json['postCode'];
    city = json['city'];
    country = json['country'];
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['mapName'] = mapName;
    data['address'] = address;
    data['postCode'] = postCode;
    data['city'] = city;
    data['country'] = country;
    if (location != null) {
      data['location'] = location!.toJson();
    }

    return data;
  }
}

class EventPacks {
  String? id;
  String? title;
  String? description;
  bool? full;
  List<String>? activityIds;

  int? activityLimit;
  int? workshopLimit;
  int? milongaLimit;
  int? multiplier;
  int? min;
  int? max;
  int? capacity;
  int? attendants;
  int? leadersCap;
  int? attendantsLeaders;
  int? followersCap;
  int? attendantsFollowers;
  String? currency;
  int? price;
  int? fullPrice;
  int? dollarPrice;
  bool? partial;
  int? quantity;
  int? order;
  bool? disabled;
  bool? show;
  bool? showAvailability;
  String? pictureUrl;

  EventPacks(
      {this.id,
        this.title,
        this.description,
        this.full,
        this.activityIds,

        this.activityLimit,
        this.workshopLimit,
        this.milongaLimit,
        this.multiplier,
        this.min,
        this.max,
        this.capacity,
        this.attendants,
        this.leadersCap,
        this.attendantsLeaders,
        this.followersCap,
        this.attendantsFollowers,
        this.currency,
        this.price,
        this.fullPrice,
        this.dollarPrice,
        this.partial,
        this.quantity,
        this.order,
        this.disabled,
        this.show,
        this.showAvailability,
        this.pictureUrl});

  EventPacks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    full = json['full'];
    activityIds = json['activityIds'].cast<String>();

    activityLimit = json['activityLimit'];
    workshopLimit = json['workshopLimit'];
    milongaLimit = json['milongaLimit'];
    multiplier = json['multiplier'];
    min = json['min'];
    max = json['max'];
    capacity = json['capacity'];
    attendants = json['attendants'];
    leadersCap = json['leadersCap'];
    attendantsLeaders = json['attendantsLeaders'];
    followersCap = json['followersCap'];
    attendantsFollowers = json['attendantsFollowers'];
    currency = json['currency'];
    price = json['price'];
    fullPrice = json['fullPrice'];
    dollarPrice = json['dollarPrice'];
    partial = json['partial'];
    quantity = json['quantity'];
    order = json['order'];
    disabled = json['disabled'];
    show = json['show'];
    showAvailability = json['showAvailability'];
    pictureUrl = json['pictureUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['full'] = full;
    data['activityIds'] = activityIds;

    data['activityLimit'] = activityLimit;
    data['workshopLimit'] = workshopLimit;
    data['milongaLimit'] = milongaLimit;
    data['multiplier'] = multiplier;
    data['min'] = min;
    data['max'] = max;
    data['capacity'] = capacity;
    data['attendants'] = attendants;
    data['leadersCap'] = leadersCap;
    data['attendantsLeaders'] = attendantsLeaders;
    data['followersCap'] = followersCap;
    data['attendantsFollowers'] = attendantsFollowers;
    data['currency'] = currency;
    data['price'] = price;
    data['fullPrice'] = fullPrice;
    data['dollarPrice'] = dollarPrice;
    data['partial'] = partial;
    data['quantity'] = quantity;
    data['order'] = order;
    data['disabled'] = disabled;
    data['show'] = show;
    data['showAvailability'] = showAvailability;
    data['pictureUrl'] = pictureUrl;
    return data;
  }
}

class RegistrationForm {
  String? id;
  String? question;
  String? translation;
  bool? mandatory;
  bool? editable;
  bool? disabled;
  int? order;
  String? type;

  RegistrationForm(
      {this.id,
        this.question,
        this.translation,
        this.mandatory,
        this.editable,
        this.disabled,
        this.order,
        this.type});

  RegistrationForm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    translation = json['translation'];
    mandatory = json['mandatory'];
    editable = json['editable'];
    disabled = json['disabled'];
    order = json['order'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['question'] = question;
    data['translation'] = translation;
    data['mandatory'] = mandatory;
    data['editable'] = editable;
    data['disabled'] = disabled;
    data['order'] = order;
    data['type'] = type;
    return data;
  }
}