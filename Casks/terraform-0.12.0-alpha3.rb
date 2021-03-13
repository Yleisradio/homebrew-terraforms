cask "terraform-0.12.0-alpha3" do
  version "0.12.0-alpha3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    # XXX: Strange URL for 0.12.0-alpha4
    url "https://releases.hashicorp.com/terraform/0.12.0-alpha4/terraform_0.12.0-alpha4_terraform_0.12.0-alpha4_darwin_amd64.zip"
    sha256 "ff742e857fe37e76747f099cf99f043c36d408c62cefba6a700e3c9c118e0690"
  end

  depends_on arch: [:x86_64]
end
