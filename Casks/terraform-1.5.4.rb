cask "terraform-1.5.4" do
  version "1.5.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_darwin_amd64.zip"
    sha256 "27aca7551143d98be83b780fa0040b359c43a6704bdd49514ea582d942752718"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_darwin_arm64.zip"
    sha256 "6d68b0e1c0eab5f525f395ddaee360e2eccddff49c2af37d132e8c045b5001c5"
  end

  depends_on arch: [:x86_64, :arm64]
end
