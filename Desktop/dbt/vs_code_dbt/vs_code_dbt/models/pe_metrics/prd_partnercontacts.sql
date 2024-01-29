SELECT 
  "contacts"."Id" AS "contacts_Id", 
  "contacts"."IsDeleted" AS "IsDeleted", 
  "contacts"."MasterRecordId" AS "MasterRecordId", 
  "contacts"."AccountId" AS "AccountId", 
  "contacts"."LastName" AS "LastName", 
  "contacts"."FirstName" AS "FirstName", 
  "contacts"."Salutation" AS "Salutation", 
  "contacts"."Name" AS "contacts_Name", 
  "contacts"."RecordTypeId" AS "RecordTypeId", 
  "contacts"."Email" AS "Email", 
  "contacts"."Title" AS "Title", 
  "contacts"."Department" AS "Department", 
  "contacts"."original_utm_partner__c" AS "original_utm_partner__c", 
  "contacts"."Partner_Certification_Date__c" AS "Partner_Certification_Date__c", 
  "contacts"."CDP_Partner_Level__c" AS "CDP_Partner_Level__c", 
  "contacts"."UTM_Partner__c" AS "UTM_Partner__c", 
  "contacts"."Tech_Partner_List__c" AS "Tech_Partner_List__c", 
  "contacts"."Partner_Role__c" AS "Partner_Role__c", 
  "contacts"."Cloud_Data_Platform_Partnership__c" AS "Cloud_Data_Platform_Partnership__c", 
  "contacts"."Cloud_Provider_Partnerships__c" AS "Cloud_Provider_Partnerships__c", 
  "contacts"."Partner_Inquiry_Status__c" AS "Partner_Inquiry_Status__c", 
  "contacts"."Partner_Type__c" AS "Partner_Type__c", 
  "contacts"."Top_3_Channel_GSI_partner__c" AS "Top_3_Channel_GSI_partner__c", 
  "contacts"."Why_interested_Matillion_partner__c" AS "Why_interested_Matillion_partner__c", 
  "contacts"."Owner_Full_Name__c" AS "Owner_Full_Name__c", 
  "contacts"."Owner_Sales_Role__c" AS "Owner_Sales_Role__c", 
  "contacts"."Technical_Certification_Date__c" AS "Technical_Certification_Date__c", 
  "accounts"."Name" AS "account_Name", 
  "accounts"."Id" AS "account_id", 
  "accounts"."Partner_Tier__c" AS "account_Partner_Tier", 
  "accounts"."Partner_type__c" AS "account_Partner_type", 
  "accounts"."AccountGroup" AS "AccountGroup"
FROM {{source('sfdc','SFDC_Contacts_Partners')}} AS "contacts" 
     INNER JOIN 
     {{ref('prd_partneraccounts')}} AS "accounts" 
     ON "contacts"."AccountId"="accounts"."Id"