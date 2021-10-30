# MAC/LINUX
# aws ec2 create-key-pair --key-name tf_key --query 'KeyMaterial' --output text > tf_key.pem
###
# WINDOWS
# aws ec2 create-key-pair --key-name tf_key --query 'KeyMaterial' --output text | out-file -encoding ascii -filepath tf_key.pem

aws_access_key = "AKIA6Q3D4RBXUWPBVEKU"

aws_secret_key = "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"

ssh_key_name = "tf_key"

private_key_path = "tf_key.pem"