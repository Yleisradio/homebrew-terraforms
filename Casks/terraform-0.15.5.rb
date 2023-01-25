cask "terraform-0.15.5" do
  version "0.15.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_darwin_amd64.zip"
    sha256 "4ee2ed9b769426cc9f13bd26c133ee66c6046acffeef632ddf0ef66e3d36a981"
  end

  depends_on arch: [:x86_64]
end
