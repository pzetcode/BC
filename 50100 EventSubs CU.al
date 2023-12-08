/// <summary>
/// Codeunit Event Subscriber (ID 50100).
/// </summary>
codeunit 50100 "Event Subscriber"
{
    var
        txtPostWarning: TextConst ENU = 'Are you sure to continue posting? TEST';
        txtPostError: TextConst ENU = 'Posting cancelled TEST';

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeOnRun', '', true, true)]
    local procedure C81_OnBeforeOnRun()

    begin
        PostWarning();
    end;

    local procedure PostWarning()
    begin
        IF NOT Dialog.Confirm(txtPostWarning, false) then
            Error(txtPostError);
    end;


    [EventSubscriber(ObjectType::Table, Database::Item, 'OnBeforeModifyEvent', '', true, true)]
    local procedure T27_OnBeforeModifyEvent(var Rec: Record Item; var xRec: Record Item; RunTrigger: Boolean)
    begin
        CheckItemType(Rec);
    end;

    local procedure CheckItemType(var Rec: Record Item)
    begin
        IF Rec.Type = Rec.Type::"Special-Inventory" then
            Message('SPecial inventory TEST');
    end;

}