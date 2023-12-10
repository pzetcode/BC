/// <summary>
/// Page ApiTestPage (ID 50101).
/// </summary>
page 50101 ApiTestPage
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'bctech';
    APIGroup = 'demo';


    EntityName = 'carBrand';
    EntitySetName = 'carBrands';

    SourceTable = APItesttable;
    ODataKeyFields = Name;

    Extensible = false;
    DelayedInsert = true;



    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }

            }
        }
    }
}