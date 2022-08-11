cask "terraform-1.2.7" do
  version "1.2.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_amd64.zip"
    sha256 "acc781e964be9b527101b00eb6e7e63e7e509dd1355ff8567b80d0244c460634"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_arm64.zip"
    sha256 "e4717057e1cbb606f1e089261def9a17ddd18b78707d9e212c768dc0d739a220"
  end

  depends_on arch: [:x86_64, :arm64]
end
