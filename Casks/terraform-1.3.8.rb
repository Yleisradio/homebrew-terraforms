cask "terraform-1.3.8" do
  version "1.3.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_darwin_amd64.zip"
    sha256 "3cb29f95962947b0dbdf3f83338121879426d723ba60007e7c264c3c8a2add8f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_darwin_arm64.zip"
    sha256 "4547a47be08350a3eb6e44fd28e957cf515c3a2b52e04f134366a08b1fbf03ec"
  end

  depends_on arch: [:x86_64, :arm64]
end
