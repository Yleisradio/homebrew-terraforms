cask "terraform-0.14.0-alpha20200923" do
  version "0.14.0-alpha20200923"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200923/terraform_0.14.0-alpha20200923_darwin_amd64.zip"
    sha256 "7d7e888fdd28abfe00894f9055209b9eec785153641de98e6852aa071008d4ee"
  end

  depends_on arch: [:x86_64]
end
