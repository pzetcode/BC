/// <summary>
/// PageExtension Custom Test (ID 50101) extends Record Customer List.
/// </summary>
pageextension 50102 CustomTest extends "Sales List"
{
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Message('Test extrnsion');
    end;
}