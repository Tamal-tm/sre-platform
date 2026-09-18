## Day 1
- Instance ID: <instance-id>
- Region: ap-south-1
- Public IP (EIP, stable across stop/start): xx.xxx.xx.xx
- SSH: ssh -i sre-platform-key.pem ubuntu@xx.xxx.xx.xx
- Resume: aws ec2 start-instances --instance-ids <instance-id>
