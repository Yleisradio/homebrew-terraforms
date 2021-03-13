cask "terraform-0.6.12" do
  version "0.6.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.12/terraform_0.6.12_darwin_amd64.zip"
    sha256 "eaa50e05a88ef83a9ba18a3768932f4d530ce1b710b29ae29992f94addac0bfb"
  end

  depends_on arch: [:x86_64]
end
