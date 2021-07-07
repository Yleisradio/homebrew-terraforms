cask "terraform-1.0.2" do
  version "1.0.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_amd64.zip"
    sha256 "90e58796d84db0a16b5ad40140182061533c38210680980e099812c43b43ff7a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_arm64.zip"
    sha256 "eace5976af85f9eaf87ac20f6b6899562b8f18500af2fe4eee9e20b61d510b99"
  end

  depends_on arch: [:x86_64, :arm64]
end
