cask "terraform-1.0.5" do
  version "1.0.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_amd64.zip"
    sha256 "51b481f2cc02651c14854f57dc0c43c3918b19b6fc5e687295b98beee5d20271"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_arm64.zip"
    sha256 "8fadd8bbcdcaf6452d9937af6b916572f481caabcc29ea9aac61c7f4759e133e"
  end

  depends_on arch: [:x86_64, :arm64]
end
