using {training.salesorder as salesorder} from '../schemas/salesorder';
using {training.clients as clients} from '../schemas/clients';
using {training.products as products} from '../schemas/products';

namespace training.productbyclientview;

define view ProductByClientView as

    select from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientname],
        product.ID as ![productId],
        product.manufacturer as ![productManufacturer],
        product.salesPrice as ![productSalesPrice],
        product.basePrice as ![productBasePrice],
        product.quantity as ![productQuantity]
    };