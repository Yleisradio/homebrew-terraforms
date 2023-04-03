cask "terraform-1.4.0-alpha20221207" do
  version "1.4.0-alpha20221207"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_amd64.zip"
    sha256 "26c96a6ce8a199c3cce28c4da073c2d3349d48f3cdead3804a472bdeb6a31e5f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_arm64.zip"
    sha256 "9d222e60826e30ce72be4f1768573f279eeac3dba571f896bf737cafaae6e6be"
  end

  depends_on arch: [:x86_64, :arm64]
end
