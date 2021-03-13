cask "terraform-0.12.0-alpha2" do
  version "0.12.0-alpha2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0-alpha2/terraform_0.12.0-alpha2_darwin_amd64.zip"
    sha256 "859fa4459f8cc8b4cda026b71cd7c8011fafc765e570fbdf3abe9fbcad44d59c"
  end

  depends_on arch: [:x86_64]
end
