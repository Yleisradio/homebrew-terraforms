cask "terraform-1.3.0-alpha20220803" do
  version "1.3.0-alpha20220803"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_amd64.zip"
    sha256 "faa45834e3e9378650e7783bde03048472bf77fe48bfee0539de4f7cf9d0ab11"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_arm64.zip"
    sha256 "0821f91c0b80f02d68bb9990c7e2ad125246b04bee8029404b34d33de304f40f"
  end

  depends_on arch: [:x86_64, :arm64]
end
