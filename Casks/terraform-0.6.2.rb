cask "terraform-0.6.2" do
  version "0.6.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.2/terraform_0.6.2_darwin_amd64.zip"
    sha256 "76a11f1ccd4af7881fab07ba7008a05ddf5ddeb25da2683c258619c9223d8162"
  end

  depends_on arch: [:x86_64]
end
