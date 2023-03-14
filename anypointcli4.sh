
# Add authentication values to the configuration file using the following commands:

# anypoint-cli-v4 conf client_id myClientID
# anypoint-cli-v4 conf client_secret myCLientSecret
# anypoint-cli-v4 conf organization myOrgId
# anypoint-cli-v4 account:environment:list --client_id myClientID myClientSecret --organization myOrgId

1. @..... Create VPC ....@

# anypoint-cli-v4 cloudhub vpc create "vpc-tce-nonprod-useast-2-mulesoft-2" "useast-2" "192.168.189.0/24" "dev"
# anypoint-cli-v4 cloudhub vpc create --name "$NAME" --region "$REGION" --cidrBlock "$CIDR" --environment "$env"

2. @..... Create Delete DLB Add Mappings Rule ....@

# cloudhub:load-balancer:create [flags] "vpc-tce-nonprod-useast-2-mulesoft-2" "dlb-tce-nonprod-useast-2" "/Users/mule/Documents/cert.pem" "<privateKey>"
# cloudhub:load-balancer:stop [flags] <name>
# cloudhub:load-balancer:delete [flags] <name>
# cloudhub:load-balancer:ssl-endpoint:add [flags] <name> <certificate> <privateKey>    This command adds an SSL endpoint to the load balancer specified in <name>, using the certificate and private key passed.
        #  cloudhub:load-balancer:mappings:add
# cloudhub:load-balancer:mappings:add [flags] <name> <index> <inputUri> <appName> <appUri> [certificateName]

3. @..... Show List OF VPC And DLB ....@
anypoint-cli-v4 cloudhub:vpc:list 
anypoint-cli-v4 cloudhub:load-balancer:list
anypoint-cli-v4 cloudhub:region:list

# @........... Account Enviornmet creation and deletion .............@
            

 account:environment:create [flags] <name>
 account:environment:delete  [flags] <name>


 # @......... Cloudhub2.0 ........@

# runtime-mgr:application:list [flags]              Lists all applications in your organization.
# runtime-mgr:application:start/stop [flags] <appid>      Starts running the application specified in <appid>
# runtime-mgr:application:logs [flags] <appID> <specID>    Tails application logs for the application specificied in <appID> from the specification specified in <specID>
