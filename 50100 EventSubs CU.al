/// <summary>
/// Codeunit Event Subscriber (ID 50100).
/// </summary>
codeunit 50100 "Event Subscriber"
{
    var
        txtPostWarning: TextConst ENU = 'Are you sure to continue posting? TEST';


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeOnRun', '', true, true)]
    local procedure C81_OnBeforeOnRun()

    begin
        IF NOT Dialog.Confirm(txtPostWarning, false) then
            EXIT;
    end;

}