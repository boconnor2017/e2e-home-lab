# How to Generate JSON file from VCF Parameters Spreadsheet

Login to Cloudbuilder using `root` password. 
Create directory `/usr/local/pso/`. 
Copy `vcf-ems-deployment-parameter_x.x.x.xlsx` to /usr/local/pso using SFTP.
Copy shell script below to /usr/local/pso/
Edit line two of the script below accordingly
Save edits and run script `sh generate_vcf-ems_JSON.sh`

# Script
generate_vcf-ems_JSON.sh
```
# Author: Brendan O'Connor - VMWare Professional Services - August 2019
# Step 1: create a directory /usr/local/pso in CloudBuilder
# Step 2: enter /usr/local/pso/ directory
# Step 3: copy vcf-ems-deployment-parameter_x.x.x.xlsx spreadsheet to /usr/local/pso/ using SFTP
# Step 4: copy this shell script to /usr/local/pso/
# Step 5: edit line 2 to match the filename of your vcf-ems-deployment-parameter spreadsheet (sample below)
# Step 6: save edits
# Step 7: Run this shell script
cd /opt/vmware/sddc-support/cloud_admin_tools/JsonGenerator/
# EDIT NEXT LINE WITH PROPER FILENAME # # # # # # # # # # #
python JsonGenerator.pyc -i /usr/local/pso/"vcf-ems-deployment-parameter_3.8.0 v2.0.xlsx" -d vcf-ems
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
mv /opt/vmware/sddc-support/cloud_admin_tools/Resources/vcf-ems/* /usr/local/pso/
echo Done!
echo ""
echo ""
ls -l
```
