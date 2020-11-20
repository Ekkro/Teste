using {cuid, temporal, managed} from '@sap/cds/common';

entity Base: cuid, managed{
    key ID: UUID @odata.Type:'Edm.String';
}
type STATUS_TYPE : String(1) enum {
    DRAFT  = 'D';
    OPEN = 'O';
    COMPLETED = 'C';
}

type CATEGORY_TYPE : String(1) enum {
    A_CATEGORY  = 'A';
    B_CATEGORY  = 'B';
    C_CATEGORY  = 'C';
    D_CATEGORY  = 'D';
}

entity withTemporal{
    validFrom: DateTime;
    validTo: DateTime;
}