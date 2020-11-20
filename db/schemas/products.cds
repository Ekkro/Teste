using {Base,withTemporal} from './common';
namespace training.products;

entity TblProducts: Base, withTemporal{
    name: String(100);
    manufacturer: String(50);
    salesPrice: Decimal;
    basePrice: Decimal;
    quantity: Integer;
}