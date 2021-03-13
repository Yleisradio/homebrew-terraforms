cask "terraform-0.14.6" do
  version "0.14.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_darwin_amd64.zip"
    sha256 "126e1c9e058f12c247a194db5a9567e59ec755cbc0211cd5d58c8b7d37412b2c"
  end

  depends_on arch: [:x86_64]
end
