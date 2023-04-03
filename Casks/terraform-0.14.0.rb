cask "terraform-0.14.0" do
  version "0.14.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_darwin_amd64.zip"
    sha256 "6bbf84885f15688c427726306331a2599af3041bb86d9330819d435db516e15c"
  end

  depends_on arch: [:x86_64]
end
