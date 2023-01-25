cask "terraform-0.12.19" do
  version "0.12.19"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_darwin_amd64.zip"
    sha256 "4d7be70cfbaaa17828a59cbe03db255d44cfc342658aa5c36a2153b84b9ec1c1"
  end

  depends_on arch: [:x86_64]
end
