cask "terraform-0.14.2" do
  version "0.14.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_darwin_amd64.zip"
    sha256 "f26da93e17f347b345555e74d33f3aa79c60ac77efc995e1eb6018ffa06cb70c"
  end

  depends_on arch: [:x86_64]
end
