cask "terraform-1.1.0-alpha20211006" do
  version "1.1.0-alpha20211006"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_amd64.zip"
    sha256 "71de072c22f3a546e76c5ab93bc4a8ec0190eb201dde14a7c73fe77f229644e1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_arm64.zip"
    sha256 "6aae75e171b6a06172ecc1c077a207a552951ff10f593954472cb5791a3d15d7"
  end

  depends_on arch: [:x86_64, :arm64]
end
