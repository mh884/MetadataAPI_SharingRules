public with sharing class CreateSharingSettingRule {

    public void createMetadataRecords(){

        List<Metadata> metaDataList = new List<Metadata>();

        SharingRules objSharingRule = new SharingRules();
        objSharingRule.fullName = 'Form__c';
        objSharingRule.sharingCriteriaRules = new List<SharingCriteriaRule>();

        // Create SharingCriteriaRule
        SharingCriteriaRule sharingCriteriaRule = new SharingCriteriaRule();
        sharingCriteriaRule.fullName = 'FormstackCriteriaSharingRule_Form'; // Sharing Rule Name
        sharingCriteriaRule.accessLevel = 'Read'; // Sharing Rule access Level
        sharingCriteriaRule.label = 'CriteriaSharingRule';
        sharingCriteriaRule.sharedTo = new SharedTo();
        sharingCriteriaRule.sharedTo.allCustomerPortalUsers = '';
        sharingCriteriaRule.criteriaItems = new List<FilterItem>();
        // create FilterItem 
        FilterItem criteriaFilterItem = new FilterItem();
        criteriaFilterItem.field = 'Name';
        criteriaFilterItem.operation = 'equals';
        criteriaFilterItem.value = '-1';

        sharingCriteriaRule.criteriaItems.add(criteriaFilterItem);
        System.debug('sharingCriteriaRule: '+sharingCriteriaRule.fullName);

        objSharingRule.sharingCriteriaRules.add(sharingCriteriaRule);
        

        metaDataList.add(objSharingRule);

        List<SaveResult> listResultMetadata = new List<SaveResult>();

        MetadataPort mdService = new MetadataPort();
        mdService.SessionHeader = new SessionHeader_element();
        mdService.SessionHeader.sessionId = UserInfo.getSessionId();
        MetadataPort mpService = mdService;          
        listResultMetadata = mpService.createMetadata(metaDataList); 
        system.debug(listResultMetadata);
    }
    public virtual class Metadata {
        public String fullName;
    }
    public class SharingRules extends Metadata {
        public String type = 'SharingRules';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public SharingCriteriaRule[] sharingCriteriaRules;
        private String[] sharingCriteriaRules_type_info = new String[]{'sharingCriteriaRules','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
       
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'sharingCriteriaRules'};
        
    }
	public class Error {
        public String[] fields;
        public String message;
        public String statusCode;
        private String[] fields_type_info = new String[]{'fields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] message_type_info = new String[]{'message','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] statusCode_type_info = new String[]{'statusCode','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'fields','message','statusCode'};
    }
     public class SaveResult {
        public Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] success_type_info = new String[]{'success','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }
    public class SharedTo {
        public String allCustomerPortalUsers;
        public String allInternalUsers;
        public String allPartnerUsers;
        public String[] channelProgramGroup;
        public String[] channelProgramGroups;
        public String[] group_x;
        public String[] groups;
        public String[] guestUser;
        public String[] managerSubordinates;
        public String[] managers;
        public String[] portalRole;
        public String[] portalRoleAndSubordinates;
        public String[] queue;
        public String[] role;
        public String[] roleAndSubordinates;
        public String[] roleAndSubordinatesInternal;
        public String[] roles;
        public String[] rolesAndSubordinates;
        public String[] territories;
        public String[] territoriesAndSubordinates;
        public String[] territory;
        public String[] territoryAndSubordinates;
        private String[] allCustomerPortalUsers_type_info = new String[]{'allCustomerPortalUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] allInternalUsers_type_info = new String[]{'allInternalUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] allPartnerUsers_type_info = new String[]{'allPartnerUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] channelProgramGroup_type_info = new String[]{'channelProgramGroup','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] channelProgramGroups_type_info = new String[]{'channelProgramGroups','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] group_x_type_info = new String[]{'group','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] groups_type_info = new String[]{'groups','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] guestUser_type_info = new String[]{'guestUser','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] managerSubordinates_type_info = new String[]{'managerSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] managers_type_info = new String[]{'managers','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] portalRole_type_info = new String[]{'portalRole','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] portalRoleAndSubordinates_type_info = new String[]{'portalRoleAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] queue_type_info = new String[]{'queue','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] role_type_info = new String[]{'role','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roleAndSubordinates_type_info = new String[]{'roleAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roleAndSubordinatesInternal_type_info = new String[]{'roleAndSubordinatesInternal','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roles_type_info = new String[]{'roles','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] rolesAndSubordinates_type_info = new String[]{'rolesAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territories_type_info = new String[]{'territories','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territoriesAndSubordinates_type_info = new String[]{'territoriesAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territory_type_info = new String[]{'territory','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territoryAndSubordinates_type_info = new String[]{'territoryAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allCustomerPortalUsers','allInternalUsers','allPartnerUsers','channelProgramGroup','channelProgramGroups','group_x','groups','guestUser','managerSubordinates','managers','portalRole','portalRoleAndSubordinates','queue','role','roleAndSubordinates','roleAndSubordinatesInternal','roles','rolesAndSubordinates','territories','territoriesAndSubordinates','territory','territoryAndSubordinates'};
    }
    public class FilterItem {
        public String field;
        public String operation;
        public String value;
        public String valueField;
        private String[] field_type_info = new String[]{'field','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] operation_type_info = new String[]{'operation','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] value_type_info = new String[]{'value','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueField_type_info = new String[]{'valueField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'field','operation','value','valueField'};
    }
    public virtual class SharingBaseRule extends Metadata {
        public String accessLevel;
        public String description;
        public String label;
        public SharedTo sharedTo;
    }

    public interface IReadResult {
        Metadata[] getRecords();
    }
    public interface IReadResponseElement {
        IReadResult getResult();
    }
	
	public class SharingCriteriaRule extends SharingBaseRule {
        public String type = 'SharingCriteriaRule';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String accessLevel;
        public String description;
        public String label;
        public SharedTo sharedTo;
        private String[] accessLevel_type_info = new String[]{'accessLevel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] sharedTo_type_info = new String[]{'sharedTo','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        public String booleanFilter;
        public FilterItem[] criteriaItems;
        private String[] booleanFilter_type_info = new String[]{'booleanFilter','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] criteriaItems_type_info = new String[]{'criteriaItems','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName','accessLevel','description','label','sharedTo', 'booleanFilter','criteriaItems'};
    }
	
	public class ReadSharingCriteriaRuleResult implements IReadResult {
        public SharingCriteriaRule[] records;
        public Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readSharingCriteriaRuleResponse_element implements IReadResponseElement {
        public ReadSharingCriteriaRuleResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }


    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
        public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class DebuggingHeader_element {
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class AllOrNoneHeader_element {
        public Boolean allOrNone;
        private String[] allOrNone_type_info = new String[]{'allOrNone','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allOrNone'};
    }
    public class createMetadata_element {
        public Metadata[] metadata;
        private String[] metadata_type_info = new String[]{'metadata','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'metadata'};
    }
    public class createMetadataResponse_element {
        public SaveResult[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class MetadataPort {
        public String endpoint_x = URL.getSalesforceBaseUrl().toExternalForm() + '/services/Soap/m/47.0';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public SessionHeader_element SessionHeader;
        public DebuggingInfo_element DebuggingInfo;
        public DebuggingHeader_element DebuggingHeader;
        public CallOptions_element CallOptions;
        public AllOrNoneHeader_element AllOrNoneHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/04/metadata';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/04/metadata';
        private String AllOrNoneHeader_hns = 'AllOrNoneHeader=http://soap.sforce.com/2006/04/metadata';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata', 'MetadataService'};

        public SaveResult[] createMetadata(Metadata[] metadata) {
            createMetadata_element request_x = new createMetadata_element();
            request_x.metadata = metadata;
            CreateSharingSettingRule.createMetadataResponse_element response_x;
            Map<String, CreateSharingSettingRule.createMetadataResponse_element> response_map_x = new Map<String, CreateSharingSettingRule.createMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'createMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'createMetadataResponse',
              'CreateSharingSettingRule.createMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}


