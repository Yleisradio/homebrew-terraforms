cask "terraform-0.11.9" do
  version "0.11.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.9/terraform_0.11.9_darwin_amd64.zip"
    sha256 "1b5a0c916f547c396959b8c303f3bfa7a2e936c78f002bf42e532c9254fd6d75"
  end

  depends_on arch: [:x86_64]
end
