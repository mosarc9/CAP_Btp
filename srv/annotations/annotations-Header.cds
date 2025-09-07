using {HeaderSrv as services} from '../service';

annotate services.Header with {
    HeaderID     @title: 'ID';
    Email        @title: 'Email';
    Firstname    @title: 'First Name';
    Lastname     @title: 'Last Name';
    Country      @title: 'Country';
    Creation     @title: 'Creation Date';
    Deliverydate @title: 'Delivery Date';
    Status       @title: 'Status';
};

annotate services.Header with {
    Status @Common: {
        Text: 'Status.name' 
        }
};

annotate services.Header with @(

UI.LineItem: [
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
        Value                : Country,
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
        $Type      : 'UI.DataField',
        Value      : Status_Code,
        Criticality: Status.Criticality
    }
], );
