using {training.salesorder as salesorder} from '../schemas/salesorder';


namespace training.sumsalesbyclientview;

define view SumSalesByClientView as

    select
    from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientname],
        sum(product.salesPrice * product.quantity) as ![SumSales]
    }group by salesOrder.client.ID, salesOrder.client.name
    ;