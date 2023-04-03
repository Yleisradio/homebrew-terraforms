cask "terraform-0.13.2" do
  version "0.13.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_darwin_amd64.zip"
    sha256 "8f2ef6fe5727014dde0496d88dffab5fcafd0c35138466d19de2dd6147d96b90"
  end

  depends_on arch: [:x86_64]
end
