terraform {
  backend "s3" {
    bucket = "517629291948-elgin-chatbot-hml"  # Seu bucket do S3
    key    = "terraform/state/${SOURCEREPONAME}-${SOURCEREPOBRANCH}.tfstate"  # Caminho do arquivo de estado
    region = "us-east-1"  # Região da AWS
    encrypt = true  # Habilita criptografia do estado
  }
}
