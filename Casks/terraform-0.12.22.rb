cask "terraform-0.12.22" do
  version "0.12.22"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.22/terraform_0.12.22_darwin_amd64.zip"
    sha256 "13d0dd4a4c7cb5dea403c1a02dd9200ff9de086e8ddd832ffea2219c59d33fe1"
  end

  depends_on arch: [:x86_64]
end
