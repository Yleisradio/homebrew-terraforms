cask "terraform-0.8.1" do
  version "0.8.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.1/terraform_0.8.1_darwin_amd64.zip"
    sha256 "275104513600bf50a28942131d928d2be405c75f9f36a9c722718500075856a1"
  end

  depends_on arch: [:x86_64]
end
