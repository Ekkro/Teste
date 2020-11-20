using {training.salesorder as salesorder} from '../schemas/salesorder';

namespace training.productbyclientview;

define view ProductByClientView as

    select from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientname],
        product.ID as ![productId],
        product.name as ![productName],
        product.manufacturer as ![productManufacturer],
        product.salesPrice as ![productSalesPrice],
        product.basePrice as ![productBasePrice],
        product.quantity as ![productQuantity]
    };