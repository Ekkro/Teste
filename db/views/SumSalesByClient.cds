using {training.salesorder as salesorder} from '../schemas/salesorder';
using {training.clients as clients} from '../schemas/clients';
using {training.products as products} from '../schemas/products';

namespace training.sumsalesbyclientview;

define view SumSalesByClientView as

    select
    from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientname],
        sum(product.salesPrice * product.quantity) as ![SumSales]
    };