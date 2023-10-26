cask "terraform-1.7.0-alpha20231025" do
  version "1.7.0-alpha20231025"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231025/terraform_1.7.0-alpha20231025_darwin_amd64.zip"
    sha256 "53d8dd65dd17f5f6294e4f6defc70c336cd2363e2ddf8edde16a626dbdc7cf23"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231025/terraform_1.7.0-alpha20231025_darwin_arm64.zip"
    sha256 "b6be241258c93a2dfd28a09535c6a5da79b6df1d26a7a2d0738239f128e724a5"
  end

  depends_on arch: [:x86_64, :arm64]
end
