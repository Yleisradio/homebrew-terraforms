cask "terraform-0.13.1" do
  version "0.13.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_darwin_amd64.zip"
    sha256 "8c9bab51223e7039572763326267c1989d1727f552b3728f586cfa868b01b537"
  end

  depends_on arch: [:x86_64]
end
