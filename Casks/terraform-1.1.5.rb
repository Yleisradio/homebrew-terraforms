cask "terraform-1.1.5" do
  version "1.1.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_amd64.zip"
    sha256 "7b07795ac98ed7efb7aae509013cd99c83a4f9154c8a11adb57b7786716038f1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_arm64.zip"
    sha256 "4e5e2746a984a9ba80f9277fd80a08db852b9303b0fabaa3288247a16e7b2e37"
  end

  depends_on arch: [:x86_64, :arm64]
end
