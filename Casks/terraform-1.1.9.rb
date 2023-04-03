cask "terraform-1.1.9" do
  version "1.1.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_amd64.zip"
    sha256 "685258b525eae94fb0b406faf661aa056d31666256bf28e625365a251cb89fdc"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_arm64.zip"
    sha256 "39fac4be74462be86b2290dd09fe1092f73dfb48e2df92406af0e199cfa6a16c"
  end

  depends_on arch: [:x86_64, :arm64]
end
