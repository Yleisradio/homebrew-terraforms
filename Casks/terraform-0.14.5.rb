cask "terraform-0.14.5" do
  version "0.14.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_darwin_amd64.zip"
    sha256 "363d0e0c5c4cb4e69f5f2c7f64f9bf01ab73af0801665d577441521a24313a07"
  end

  depends_on arch: [:x86_64]
end
