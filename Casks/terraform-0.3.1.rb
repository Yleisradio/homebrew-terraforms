cask "terraform-0.3.1" do
  version "0.3.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.3.1/terraform_0.3.1_darwin_amd64.zip"
    sha256 "dda41425c7eb06c5e8b3f5ad4904e993aa8a9ab6b61f954ee2e259667cb6ff57"
  end

  depends_on arch: [:x86_64]
end
