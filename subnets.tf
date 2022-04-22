resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "eu-west-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "talent-academy-public-a"
    }
}

resource "aws_subnet" "public-b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.10.0/24"
    availability_zone = "eu-west-1b"
    map_public_ip_on_launch = true

    tags = {
        Name = "talent-academy-public-b"
    }
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "eu-west-1b"

    tags = {
        Name = "talent-academy-private-a"
    }
}

resource "aws_subnet" "private-b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.20.0/23"
    availability_zone = "eu-west-1c"

    tags = {
        Name = "talent-academy-super-private-b"
    }
}

resource "aws_subnet" "data" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.3.0/24"
    availability_zone = "eu-west-1c"

    tags = {
        Name = "talent-academy-data-a"
    }
}

resource "aws_subnet" "data-b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.4.0/24"
    availability_zone = "eu-west-1c"

    tags = {
        Name = "talent-academy-data-b"
    }
}