cask "terraform-1.2.4" do
  version "1.2.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_amd64.zip"
    sha256 "4440024c9bd30bfa265eccf9822a41c5c9eb7b237d393f995bb3361db9c0c652"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_arm64.zip"
    sha256 "0c3ff7c40441efc668705f7113ba4e16bc04aacb58fe0e2053432a27457afc03"
  end

  depends_on arch: [:x86_64, :arm64]
end
