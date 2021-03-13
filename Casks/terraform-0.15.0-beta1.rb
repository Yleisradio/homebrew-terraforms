cask "terraform-0.15.0-beta1" do
  version "0.15.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta1/terraform_0.15.0-beta1_darwin_amd64.zip"
    sha256 "bc4a4665af56c8e8bcf62788224f8fb91eeb7fe3b064ebcf3f3ab7bc5a90ea43"
  end

  depends_on arch: [:x86_64]
end
