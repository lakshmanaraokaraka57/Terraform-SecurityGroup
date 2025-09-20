resource "aws_security_group" "sg" {
    name = "Kroger-prod"
    description = "This is production environment"
    vpc_id = ""
    tags={
        Name="Kroger-sg-prod"

    }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
}
