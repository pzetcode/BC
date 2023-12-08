/// <summary>
/// PageExtension Custom Test (ID 50101) extends Record Customer List.
/// </summary>
pageextension 50102 CustomTest extends "Sales Order List"
{
    trigger OnOpenPage()
    begin
        Message('Test extrnsion');
    end;
}