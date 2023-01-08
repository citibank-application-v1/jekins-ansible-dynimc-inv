provider "aws"{
   region  = "ap-south-1" 
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami = "ami-042e255d794504f4d"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-12"]
     key_name        = "devopstraining"
     tags = {
        Name = "tomcatservers"
     }
}

