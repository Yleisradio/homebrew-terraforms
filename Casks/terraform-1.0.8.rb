cask "terraform-1.0.8" do
  version "1.0.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_amd64.zip"
    sha256 "909781ee76250cf7445f3b7d2b82c701688725fa1db3fb5543dfeed8c47b59de"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_arm64.zip"
    sha256 "92fa31b93d736fab6f3d105beb502a9da908445ed942a3d46952eae88907c53e"
  end

  depends_on arch: [:x86_64, :arm64]
end
