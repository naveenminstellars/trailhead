trigger AccountAddressTrigger on Account (before insert, before update) {
    
    System.debug('Starting the debug');
    for (Account a : Trigger.new)
    {
        System.debug('inside for loop');
        System.debug(Trigger.new);
        if (a.Match_Billing_Address__c == false)
        {
            System.debug('Do nothing');
            
        }
        else 
        {
            System.debug('Write the logic of equating');
            
            System.debug('Billing Postal code '+ a.BillingPostalCode);
            a.ShippingPostalCode=a.BillingPostalCode;
            System.debug('Shipping Postal code '+ a.ShippingPostalCode);
        }
    }

}