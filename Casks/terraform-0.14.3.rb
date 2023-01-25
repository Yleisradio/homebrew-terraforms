cask "terraform-0.14.3" do
  version "0.14.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.3/terraform_0.14.3_darwin_amd64.zip"
    sha256 "68ba55ae728d8f568ea464adf897e265bc51c38452880a08632b7b76f11dd7dd"
  end

  depends_on arch: [:x86_64]
end
