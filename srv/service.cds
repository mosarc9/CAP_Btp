using {com.logali as SalesOrder} from '../db/schema';

service HeaderSrv {
    entity Header as projection on SalesOrder.Header;
    entity Items  as projection on SalesOrder.Items;

    //Value helps
    @readonly
    entity VH_status as projection on SalesOrder.status;
}
