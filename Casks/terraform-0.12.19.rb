cask "terraform-0.12.19" do
  version "0.12.19"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_darwin_amd64.zip"
    sha256 "5238fe45d051cac90f0fc0701796c5244ef88218d0fe4eceec31cee43899a434"
  end

  depends_on arch: [:x86_64]
end
