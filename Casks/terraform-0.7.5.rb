cask "terraform-0.7.5" do
  version "0.7.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.5/terraform_0.7.5_darwin_amd64.zip"
    sha256 "87cae476176b2f4416e5e0eb6c46ff218dd62201c31d3a3dfc16c08849d01b03"
  end

  depends_on arch: [:x86_64]
end
