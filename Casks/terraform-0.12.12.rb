cask "terraform-0.12.12" do
  version "0.12.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_darwin_amd64.zip"
    sha256 "51507dedba7fcc2638c5c2c40206ec604155e2d3067a132b618f4e99ea9f1db9"
  end

  depends_on arch: [:x86_64]
end
