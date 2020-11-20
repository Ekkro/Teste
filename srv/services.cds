using {training.products as products} from '../db/schemas/products';
using {training.salesorder as salesorder} from '../db/schemas/salesorder';
using {training.clients as clients} from '../db/schemas/clients';
using {training.user} from '../db/schemas/user';
using {training.sumsalesbyclientview as sumsalesbyclientbiew} from '../db/views/SumSalesByClient';

service MyServices{
    entity Products     as projection on products.TblProducts;
    entity SalesOrder   as projection on salesorder.TblSalesOrder;
    entity User         as projection on user.TblUser;
    entity Client       as projection on clients.TblClient;

    entity SumSalesByClient as projection on sumsalesbyclientbiew.SumSalesByClientView;

    function hello(name: String) returns String;
    action helloAction(name: String)returns String;
}


