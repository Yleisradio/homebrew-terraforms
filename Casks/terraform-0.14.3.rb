cask "terraform-0.14.3" do
  version "0.14.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.3/terraform_0.14.3_darwin_amd64.zip"
    sha256 "eda23614cd1dce1e96e7adf84f445c2783132c072fbd987f1f8858f34c361e41"
  end

  depends_on arch: [:x86_64]
end
