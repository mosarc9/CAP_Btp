using {HeaderSrv as services} from '../service';

using from './annotations-Items';

annotate services.Header with {
    HeaderID     @title: 'ID';
    Email        @title: 'Email';
    Firstname    @title: 'First Name';
    Lastname     @title: 'Last Name';
    country      @title: 'Country';
    Creation     @title: 'Creation Date';
    Deliverydate @title: 'Delivery Date';
    Statu        @title: 'Status';
};

annotate services.Header with {
    Statu   @Common: {
        Text           : Statu.name,
        TextArrangement: #TextOnly
    };

};


annotate services.Header with @(

    UI.HeaderInfo        : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Sale Order',
        TypeNamePlural: 'Sales Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: HeaderID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: Firstname
        },
    },

    UI.SelectionFields   : [
        HeaderID,
        Firstname,
        Lastname,
        Creation,
        Statu_code
    ],

    UI.FieldGroup #GroupA: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: HeaderID
            },
            {
                $Type: 'UI.DataField',
                Value: Firstname
            },
            {
                $Type: 'UI.DataField',
                Value: Lastname
            },
            {
                $Type: 'UI.DataField',
                Value: Email
            },
            {
                $Type: 'UI.DataField',
                Value: country_ID
            },
            {
                $Type: 'UI.DataField',
                Value: Creation
            },
            {
                $Type      : 'UI.DataField',
                Value      : Statu_code,
                Criticality: Statu.Criticality,
            }
        ],
    },

    UI.HeaderFacets      : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#GroupA',
        Label : 'Sale Order'
    }],

    UI.Facets            : [{
        $Type : 'UI.ReferenceFacet',
        Target: 'toItems/@UI.LineItem',
        Label : 'Items',
        ID    : 'toItems'
    }, ],

    UI.LineItem          : [
        {
            $Type: 'UI.DataField',
            Value: HeaderID
        },

        {
            $Type: 'UI.DataField',
            Value: Firstname
        },

        {
            $Type: 'UI.DataField',
            Value: Lastname
        },

        {
            $Type                : 'UI.DataField',
            Value                : Email,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '15rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : country_ID,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type: 'UI.DataField',
            Value: Creation
        },

        {
            $Type: 'UI.DataField',
            Value: Deliverydate
        },

        {
            $Type                : 'UI.DataField',
            Value                : Statu_code,
            Criticality          : Statu.Criticality,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        }
    ],
);
