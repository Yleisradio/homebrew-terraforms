cask "terraform-1.6.0-beta2" do
  version "1.6.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta2/terraform_1.6.0-beta2_darwin_amd64.zip"
    sha256 "11271e7866bac900eebf25e585d4b6430deb3642d8f714009efcccfb36f5402a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta2/terraform_1.6.0-beta2_darwin_arm64.zip"
    sha256 "cacd0afbc7939f337fe20548f37d6553566e64a125724a0984d255af6d2a5225"
  end

  depends_on arch: [:x86_64, :arm64]
end
