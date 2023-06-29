cask "terraform-1.5.2" do
  version "1.5.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.2/terraform_1.5.2_darwin_amd64.zip"
    sha256 "0484b5c7d5daa17cfff476f29b027398d805c00a8c276f884734b4c6fadd15ec"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.2/terraform_1.5.2_darwin_arm64.zip"
    sha256 "75c5632f221adbba38d569bdaeb6c3cb90b7f82e26b01e39b3b7e1c16bb0e4d4"
  end

  depends_on arch: [:x86_64, :arm64]
end
