cask "terraform-1.0.9" do
  version "1.0.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_amd64.zip"
    sha256 "be122ff7fb925643c5ebf4e5704b18426e18d3ca49ab59ae33d208c908cb6d5a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_arm64.zip"
    sha256 "89b2b4fd1a0c57fabc08ad3180ad148b1f7c1c0492ed865408f75f12e11a083b"
  end

  depends_on arch: [:x86_64, :arm64]
end
