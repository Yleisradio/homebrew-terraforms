cask "terraform-1.3.3" do
  version "1.3.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_amd64.zip"
    sha256 "2b3cf653cd106becdea562b6c8d3f8939641e5626c5278729cbef81678fa9f42"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_arm64.zip"
    sha256 "51e94ecf88059e8a53c363a048b658230f560574f99b0d8396ebacead894d159"
  end

  depends_on arch: [:x86_64, :arm64]
end
