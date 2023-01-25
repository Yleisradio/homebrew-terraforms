cask "terraform-1.2.8" do
  version "1.2.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_amd64.zip"
    sha256 "5bad72d8dfca1cddaecfdc51858f035808ce268c201bee780982fbd8ce5814bb"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_arm64.zip"
    sha256 "0affbfe6f8f791d6fb98ab5f91e975b0b1255dee9f172faee3ff6ab05c45a024"
  end

  depends_on arch: [:x86_64, :arm64]
end
