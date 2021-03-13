cask "terraform-0.11.1" do
  version "0.11.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_darwin_amd64.zip"
    sha256 "f5e04d3886e9a427490d1aa857a61b5a87d08dc26fb8637e3eaa72b30562c330"
  end

  depends_on arch: [:x86_64]
end
