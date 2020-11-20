using {training.salesorder as salesorder} from '../schemas/salesorder';


namespace training.salesorderbyuserview;

define view SalesOrderItemByUserView as

    select from salesorder.TblSalesOrderItem{
        ID,
        salesOrder.ID as ![salesOrderId],
        salesOrder.status as ![salesOrderStatus],
        salesOrder.user.ID as ![userId],
        salesOrder.user.name as ![userName]
    };

