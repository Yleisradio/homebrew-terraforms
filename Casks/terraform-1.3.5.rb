cask "terraform-1.3.5" do
  version "1.3.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_amd64.zip"
    sha256 "d8b820f0ed8442819b9a8870efdd6bf54f1c5a392a278d7713fe0f1c05c4fdeb"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_arm64.zip"
    sha256 "6764387bb58ba0ac8c7dc9b3d2e93b97812ddd2b8e8ca56a930e7e2c601a3a12"
  end

  depends_on arch: [:x86_64, :arm64]
end
