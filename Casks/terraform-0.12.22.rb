cask "terraform-0.12.22" do
  version "0.12.22"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.22/terraform_0.12.22_darwin_amd64.zip"
    sha256 "efb9b86830b08e20723acaf4f2eadb3ff934fb9a89584afaaf20b9572a955de6"
  end

  depends_on arch: [:x86_64]
end
