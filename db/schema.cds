namespace com.logali;

entity Header {
    key Headeruuid   : UUID;
        Id           : String;
        Email        : String;
        Firstname    : String;
        Lastname     : String;
        Country      : String;
        Creation     : Date;
        Deliverydate : DateTime;
        Orderstatus  : Integer;
        Imageurl     : String;
        toItems      : Association to many Items
                           on toItems.Headeruuid = $self;

};

entity Items {
    key Itemuuid         : UUID;
        Id               : String;
        Name             : String;
        Description      : String;
        Releasedate      : Date;
        Discontinueddate : Date;
        Price            : Decimal(12, 2);
        Height           : Decimal(15, 2);
        Width            : Decimal(12, 2);
        Depth            : Decimal(12, 2);
        Quantity         : Decimal(13, 3);
        Unitofmeasure    : String;
        Headeruuid       : Association to Header;
}
