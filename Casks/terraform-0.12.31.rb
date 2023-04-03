cask "terraform-0.12.31" do
  version "0.12.31"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.31/terraform_0.12.31_darwin_amd64.zip"
    sha256 "ebd96d0c1fc206480a61a190059d3e8aebdfa8733bfa309d7a34ad5a3e0eb322"
  end

  depends_on arch: [:x86_64]
end
