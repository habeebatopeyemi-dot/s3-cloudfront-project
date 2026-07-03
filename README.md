#   PROJECT 1
This project demonstrates static website holding using AWS S3.

Two methods used to implement these are; 
1. AWS S3 console
2. Terraform

Method 1: Deploying with AWS console
1. Log into AWS console and navigate to S3
2. Create the bucket and unblock public access
3. Go to the object tab and click upload and upload an index.html file (to be used for the static website)
4. Click on the bucket created and go to properties tab, then scroll to the bottom to Static Website hosting and click edit
5. Select "enable" and "host a static website" for the hosting type
6. In the index document, type index.html and click save
7. Go to permission tab and scroll to bucket policy, then click edit to input the json code and save
8. Navigate to the bucket properties and scroll down to copy the website endpoint URL

Method 2: Deploying via Terraform (with terraform code) 
1. Create a main.tf file file
2. Name the provider to be used in the main.tf file
3. Create S3 bucket
4. Unblock public access
5. upload index.html
6. Enable static website hosting
7. Create the bucket policy
8. Create an output.tf file to output the website endpoint for the static website URL
9. Deploy with:
   i.   terraform init
   
   ii.  terraform plan
   
   iii. terraform apply
   
   iv.  terraform destroy (optional)

#    PROJECT 2
This project demonstrates hosting a static website using AWS S3 (for storage) and AWS  Cloudfront for caching

Two methods used to implement these are; 
1. AWS console (S3 and Cloudfront)
2. Terraform

Method 1: Deploying with AWS console
1. Log into AWS console and navigate to S3
2. Create the bucket and block public access
3. Go to the object tab and click upload and upload an index.html file (to be used for the static website)
4. Navigate to cloudfront, click "create distribution" and name it
5. Select single website for distribution type, scroll down and click next
6. Select Amazon S3 for origin type, click on browse S3 and select the newly created S3 bucket
7. Leave the recommended settings on settings tab and click next
8. Select enable security protection in web application firewall and on the recommended security protection and click next
9. Review all the configurations and click create
10. After creation, copy the distribution domain name, go to browser app and add https.//before pasting the URL to view the live website

Method 2: Deploying via Terraform (with terraform code) 
1. Create a main.tf file file
2. Name the provider to be used in the main.tf file
3. Create S3 bucket
4. Block public access
5. upload index.html
6. Create the bucket policy to allow cloudfront origin access control
7. Create the  cloudfront origin access control
8. Then create cloudfront distribution
9. Create an output.tf file to output the cloudfront URL for the live website  
10. Deploy with:
   i.   terraform init

   ii.  terraform plan
   
   iii. terraform apply
   
   iv.  terraform destroy (optional)
             
