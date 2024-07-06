variable "server_name" {
    default = "jenkins-server"
  
}

variable "common_tags" {
    default = {
        component = "jenkins"
        environment = "dev"
        project = "expense"
        terraform = "true"
    }
  
}

variable "environment" {
    default = "env"
  
}

variable "project_name" {
    default = "expense"
  
}

variable "sg_id" {
    default = "sg-026e255c7dd055da7"
  
}