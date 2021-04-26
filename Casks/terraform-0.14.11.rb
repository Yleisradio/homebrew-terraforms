cask "terraform-0.14.11" do
  version "0.14.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_darwin_amd64.zip"
    sha256 "5c0110a4dc44ec01edd159c69bf60cebd18540eaf168aacd8b37d828b70e265d"
  end

  depends_on arch: [:x86_64]
end
