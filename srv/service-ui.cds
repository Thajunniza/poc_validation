using {validationService as service} from './service';


annotate service.Student with {
    name      @Common.Label: '{i18n>name}';
    rollno    @title       : '{i18n>roll}';
    dept      @title       : '{i18n>dept}';
    age       @title       : '{i18n>age}';
    postCode  @title       : '{i18n>postCode}';
    telephone @title       : '{i18n>telephone}';
    email     @title       : '{i18n>email}';
};

annotate service.Student with @(UI.SelectionFields: [name, ]);

annotate service.Student with @(UI.HeaderInfo: {
    Title         : {
        $Type: 'UI.DataField',
        Value: rollno,
    },
    TypeName      : 'student',
    TypeNamePlural: 'students',
});

annotate service.Student with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Value: rollno,
    },
    {
        $Type: 'UI.DataField',
        Value: name,
    },
    {
        $Type: 'UI.DataField',
        Value: dept,
    },
    {
        $Type: 'UI.DataField',
        Value: age
    },
    {
        $Type: 'UI.DataField',
        Value: postCode
    },
    {
        $Type: 'UI.DataField',
        Value: telephone
    },
    {
        $Type: 'UI.DataField',
        Value: email
    },
]);

annotate service.Student with @(
    UI.Facets                            : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>generalInformation}',
        ID    : 'i18nGeneralInformation',
        Target: '@UI.FieldGroup#i18nGeneralInformation',
    }, ],
    UI.FieldGroup #i18nGeneralInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Value: age
            },

            {
                $Type: 'UI.DataField',
                Value: dept,
            },
            {
                $Type: 'UI.DataField',
                Value: postCode
            },
            {
                $Type: 'UI.DataField',
                Value: telephone
            },
            {
                $Type: 'UI.DataField',
                Value: email
            },
        ],
    }
);
