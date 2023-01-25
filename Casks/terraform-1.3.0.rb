cask "terraform-1.3.0" do
  version "1.3.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_amd64.zip"
    sha256 "11ef95dc03e282463751113a153a07ff1fc63b9c3682085907fb110b69d5a347"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_arm64.zip"
    sha256 "377249d76423c4f51751083f502092525b2de0adc931930a2f5841554f64ff4e"
  end

  depends_on arch: [:x86_64, :arm64]
end
