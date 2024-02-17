cask "terraform-1.8.0-alpha20240216" do
  version "1.8.0-alpha20240216"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240216/terraform_1.8.0-alpha20240216_darwin_amd64.zip"
    sha256 "caf152a2291ab4a77859c563f4fc1da2924ab2af65c0c9c37f24ef5eccbfe883"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240216/terraform_1.8.0-alpha20240216_darwin_arm64.zip"
    sha256 "928fc218cab93d8e937ccc6380c8382b1e8d0f851b10d9502cf25eb087a13d3c"
  end

  depends_on arch: [:x86_64, :arm64]
end
