
/// <summary>
/// Page CarBrandsPage (ID 50102).
/// </summary>
page 50102 CarBrandsPage
{
    Caption = 'Car Brands Page';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = 50100;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}