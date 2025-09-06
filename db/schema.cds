namespace com.logali;

entity Header {
    Headeruuid   : UUID;
    Id           : String;
    Email        : String;
    Firstname    : String;
    Lastname     : String;
    Country      : String;
    Creation     : Date;
    Deliverydate : DateTime;
    Orderstatus  : Integer;
    Imageurl     : String;

};

entity Detail {
    Itemuuid         : UUID;
    Id               : String;
    Name             : String;
    Description      : String;
    Releasedate      : Date;
    Discontinueddate : Date;
    price            : Decimal(12, 2);

}
