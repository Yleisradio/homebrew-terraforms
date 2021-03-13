cask "terraform-0.9.6" do
  version "0.9.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.6/terraform_0.9.6_darwin_amd64.zip"
    sha256 "71f53879c2fc33af57238cdb67a344d576ae3ae88f8db112122d433bd762788d"
  end

  depends_on arch: [:x86_64]
end
