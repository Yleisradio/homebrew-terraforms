cask "terraform-0.8.5" do
  version "0.8.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.5/terraform_0.8.5_darwin_amd64.zip"
    sha256 "10253ac843b7a170844d629cbdbd2287bf687cdd3d2938e4ab9140d10534cf38"
  end

  depends_on arch: [:x86_64]
end
