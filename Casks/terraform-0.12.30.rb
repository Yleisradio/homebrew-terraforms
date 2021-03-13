cask "terraform-0.12.30" do
  version "0.12.30"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.30/terraform_0.12.30_darwin_amd64.zip"
    sha256 "f107ed316be1b86a63df4e47a1fb8ab8c9ffdbbc606dcdf90043f91bdb21826d"
  end

  depends_on arch: [:x86_64]
end
