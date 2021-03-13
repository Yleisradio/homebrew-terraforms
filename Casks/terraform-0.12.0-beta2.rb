cask "terraform-0.12.0-beta2" do
  version "0.12.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0-beta2/terraform_0.12.0-beta2_darwin_amd64.zip"
    sha256 "6be99d150329e55ae636e40500e96a6243a6a00d74126eef9fdb47f17a1070d7"
  end

  depends_on arch: [:x86_64]
end
