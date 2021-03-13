cask "terraform-0.8.3" do
  version "0.8.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.3/terraform_0.8.3_darwin_amd64.zip"
    sha256 "84ecdd2adf61629a6bd4c1316df8f76290afad689630225d415666b422214a83"
  end

  depends_on arch: [:x86_64]
end
