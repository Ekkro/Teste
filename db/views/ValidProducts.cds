using {training.products as products} from '../schemas/products';

namespace training.validproducts;

define view ValidProductsView as
    select
    from products.TblProducts as products
    where products.validTo > CURDATE()
    ;