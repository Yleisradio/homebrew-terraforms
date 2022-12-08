cask "terraform-1.4.0-alpha20221207" do
  version "1.4.0-alpha20221207"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_amd64.zip"
    sha256 "fd6ae369b531dfce590ea5106164f10d546447727bb0982f6fefde07994536b0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_arm64.zip"
    sha256 "a0fda61123b2bc40273df7bcf45d46fa712977b6593b7aa94351ca14e9c48313"
  end

  depends_on arch: [:x86_64, :arm64]
end
