cask "terraform-1.1.0-alpha20210714" do
  version "1.1.0-alpha20210714"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_amd64.zip"
    sha256 "a848f98f2eaa2ef6816d558bf63badccfa16872520ad663ccdc37477dcdefb2c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_arm64.zip"
    sha256 "1eda0c53c37ae48714168552a1ed90636b7838da38d39e33a27ca87fa23cda33"
  end

  depends_on arch: [:x86_64, :arm64]
end
