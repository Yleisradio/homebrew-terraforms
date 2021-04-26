cask "terraform-0.13.7" do
  version "0.13.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.7/terraform_0.13.7_darwin_amd64.zip"
    sha256 "d5fbb589bc35c2655d0705c26117135cbb25e4259f120415009e0e6427ea97c8"
  end

  depends_on arch: [:x86_64]
end
