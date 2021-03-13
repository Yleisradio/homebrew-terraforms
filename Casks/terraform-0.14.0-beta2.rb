cask "terraform-0.14.0-beta2" do
  version "0.14.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta2/terraform_0.14.0-beta2_darwin_amd64.zip"
    sha256 "fc9c78035efa97c36b2abf590d562fe99ffb9d0fb3224c3b0fb6f80fff4d2754"
  end

  depends_on arch: [:x86_64]
end
