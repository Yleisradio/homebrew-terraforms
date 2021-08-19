cask "terraform-1.0.5" do
  version "1.0.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_amd64.zip"
    sha256 "ae0b07ba099d3d9241e5e8bcdfc88ada8fcbbe302cb1d8f822da866a25e55330"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_arm64.zip"
    sha256 "3de4b9f167392622ef49d807e438a166e6c86c631afa730ff3189cf72cc950e2"
  end

  depends_on arch: [:x86_64, :arm64]
end
