cask "terraform-0.12.28" do
  version "0.12.28"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_darwin_amd64.zip"
    sha256 "fee2663bbe4d80149f6c1df166c780380e7c7500d87f100678eb66784adc0283"
  end

  depends_on arch: [:x86_64]
end
