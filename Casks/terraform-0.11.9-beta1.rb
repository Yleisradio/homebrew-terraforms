cask "terraform-0.11.9-beta1" do
  version "0.11.9-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.9-beta1/terraform_0.11.9-beta1_darwin_amd64.zip"
    sha256 "a95ac475acd068a876a1068fa90cb2e9370e1c28e8c7fc57b7db016629b533be"
  end

  depends_on arch: [:x86_64]
end
