cask 'trinity' do
  version '0.6.2'
  sha256 '33a434ab32e36008d049f8f093ee110d79a54eae7ae93e2b5890a26ebfd834b3'

  # github.com/iotaledger/trinity-wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/trinity-wallet/releases/download/#{version}/trinity-desktop-#{version}.dmg"
  appcast 'https://github.com/iotaledger/trinity-wallet/releases.atom'
  name 'IOTA Trinity Wallet'
  homepage 'https://trinity.iota.org/'

  app 'Trinity.app'

  uninstall quit: 'org.iota.trinity'

  zap trash: [
               '~/Library/Application Support/Trinity',
               '~/Library/Logs/Trinity',
               '~/Library/Preferences/org.iota.trinity.helper.plist',
               '~/Library/Preferences/org.iota.trinity.plist',
               '~/Library/Saved Application State/org.iota.trinity.savedState',
             ]
end
