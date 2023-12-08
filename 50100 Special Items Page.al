page 50100 "Special Items List"
{
    Caption = 'Special Item List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = 27;
    Editable = false;
    ShowFilter = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }



            }
        }
        area(Factboxes)
        {

        }
    }

}