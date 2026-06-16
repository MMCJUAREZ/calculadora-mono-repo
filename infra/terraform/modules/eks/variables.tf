variable "cluster_name" {
  type        = string
  default     = "calculadora-eks"
}

variable "vpc_id" {
  type        = string
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Lista de subredes privadas para los nodos de EKS"
}