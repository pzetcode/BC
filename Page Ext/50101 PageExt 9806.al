/// <summary>
/// PageExtension CreationExt (ID 50101) extends Record Order Processor Role Center.
/// </summary>
pageextension 50101 RCActionExt extends "Order Processor Role Center"
{
    actions
    {
        addlast(creation)

        {
            action(Special)
            {
                CaptionML = ENU = 'Special Items List';
                ApplicationArea = All;
                RunObject = page "Special Items List";
                ///<summary>filter special items only</summary>
                RunPageView = where(Type = filter(3));
            }

        }

    }
}