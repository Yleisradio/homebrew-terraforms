cask "terraform-0.10.4" do
  version "0.10.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.4/terraform_0.10.4_darwin_amd64.zip"
    sha256 "70885c572f7bc54361c77d4839303210579db5875636711f621f6763574c1237"
  end

  depends_on arch: [:x86_64]
end
