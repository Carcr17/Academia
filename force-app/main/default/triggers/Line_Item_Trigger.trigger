trigger Line_Item_Trigger on Line_Item__c (after insert) {

        if (Trigger.isAfter && Trigger.isInsert){  
        
        LineItemClass.inserProductLineItem(Trigger.new);
        }
        
    }