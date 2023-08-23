class Hyfetch < Formula
  include Language::Python::Virtualenv

  desc "Neofetch with LGBTQ+ pride flags + maintained neofetch"
  homepage "https://github.com/hykilpikonna/hyfetch"
  url "https://files.pythonhosted.org/packages/bf/04/13a5091a1da014fad160710abfad2aa03a72bc41e4678c95be2b5ee67818/HyFetch-1.4.10.tar.gz"
  sha256 "023733fa358380fd41589cd80e9b008d376eeef16b489fba8ee8610e71e42057"
  license "MIT"
  head "https://github.com/hykilpikonna/hyfetch.git", branch: "master"
  
  depends_on "python@3.11"
  
  on_macos do
    depends_on "screenresolution"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/3c/8b/0111dd7d6c1478bf83baa1cab85c686426c7a6274119aceb2bd9d35395ad/typing_extensions-4.7.1.tar.gz"
    sha256 "b75ddc264f0ba5615db7ba217daeb99701ad295353c45f9e95963337ceeeffb2"
  end

  def install
    virtualenv_install_with_resources
  end
end
