/// <summary>
/// Table APItesttable (ID 50100).
/// </summary>
table 50100 APItesttable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Text[20])
        {
            Caption = 'Text';
            DataClassification = ToBeClassified;
        }

        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }

}