#!/usr/bin/env zsh

# <xbar.title>SwiftBar for Zapier: Updater</xbar.title>
# <xbar.version>v0.1</xbar.version>
# <xbar.author>Christian Wernert</xbar.author>
# <xbar.author.github>cwernert</xbar.author.github>
# <xbar.desc>Checks for updates to the swiftbar-zapier plugin.</xbar.desc>
# <xbar.image>https://upload.wikimedia.org/wikipedia/commons/f/fd/Zapier_logo.svg</xbar.image>
# <xbar.dependencies>zsh</xbar.dependencies>
# <xbar.abouturl>#</xbar.abouturl>
# <swiftbar.hideAbout>true</swiftbar.hideAbout>
# <swiftbar.hideRunInTerminal>true</swiftbar.hideRunInTerminal>
# <swiftbar.hideLastUpdated>true</swiftbar.hideLastUpdated>
# <swiftbar.hideDisablePlugin>true</swiftbar.hideDisablePlugin>
# <swiftbar.hideSwiftBar>true</swiftbar.hideSwiftBar>

cd $SWIFTBAR_PLUGINS_PATH
curl -O https://cwernert.github.io/swiftbar-zapier.10s.js