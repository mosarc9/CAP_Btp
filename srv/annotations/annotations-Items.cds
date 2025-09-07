using {HeaderSrv as services} from '../service';

annotate services.Items with {

    ItemsID          @title: 'ID';
    Name             @title: 'Name';
    Description      @title: 'Description';
    Releasedate      @title: 'Release Date';
    Discontinueddate @title: 'Discontinued Date';
    Price            @title: 'Price';
    Height           @title: 'Hight';
    Width            @title: 'Width';
    Depth            @title: 'Depth';
    Quantity         @title: 'Quantity';
    Unitofmeasure    @title: 'Unit of Measure';
};

annotate services.Items with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Value: ID
    },

    {
        $Type: 'UI.DataField',
        Value: Name
    },

    {
        $Type: 'UI.DataField',
        Value: Description
    },

    {
        $Type: 'UI.DataField',
        Value: Releasedate
    },

    {
        $Type: 'UI.DataField',
        Value: Discontinueddate
    },

    {
        $Type: 'UI.DataField',
        Value: Price
    },

    {
        $Type: 'UI.DataField',
        Value: Height
    },

    {
        $Type: 'UI.DataField',
        Value: Width
    },

    {
        $Type: 'UI.DataField',
        Value: Depth
    },

    {
        $Type: 'UI.DataField',
        Value: Quantity
    },

    {
        $Type: 'UI.DataField',
        Value: Unitofmeasure
    },
])
