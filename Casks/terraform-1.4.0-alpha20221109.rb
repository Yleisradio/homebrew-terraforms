cask "terraform-1.4.0-alpha20221109" do
  version "1.4.0-alpha20221109"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_amd64.zip"
    sha256 "537d012d01d07cfcf358e1351a017008bd2dd8f897f37fbfa8b255740415636b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_arm64.zip"
    sha256 "2d8484526efe7692a98570b61eed760b2dd77755f3759cb7c8cf0b2335b5a3e9"
  end

  depends_on arch: [:x86_64, :arm64]
end
