[twitter-follow-url]: https://twitter.com/intent/follow?screen_name=termshark
[twitter-follow-img]: https://img.shields.io/twitter/follow/termshark.svg?style=social&label=Follow

```
./termshark -i  em1
```

# Termshark
A terminal user-interface for tshark, inspired by Wireshark.

**V2.3 is out now with custom columns, magic wormhole and more! See the [ChangeLog](CHANGELOG.md#changelog).**

![demo21](/../gh-pages/images/demo21.png?raw=true)

If you're debugging on a remote machine with a large pcap and no desire to scp it back to your desktop, termshark can help!

## Features

- Read pcap files or sniff live interfaces (where tshark is permitted)
- Filter pcaps or live captures using Wireshark's display filters
- Reassemble and inspect TCP and UDP flows
- View network conversations by protocol
- Copy ranges of packets to the clipboard from the terminal
- Written in Golang, compiles to a single executable on each platform - downloads available for Linux, macOS, BSD variants, Android (termux) and Windows

tshark has many more features that termshark doesn't expose yet! See [What's Next](docs/FAQ.md#whats-next).

## Install Packages

Termshark is pre-packaged for the following platforms: [Arch Linux](docs/Packages.md#arch-linux), [Debian (unstable)](docs/Packages.md#debian), [FreeBSD](docs/Packages.md#freebsd), [Homebrew](docs/Packages.md#homebrew), [MacPorts](docs/Packages.md#macports), [Kali Linux](docs/Packages.md#kali-linux), [NixOS](docs/Packages.md#nixos), [SnapCraft](docs/Packages.md#snapcraft), [Termux (Android)](docs/Packages.md#termux-android) and [Ubuntu](docs/Packages.md#ubuntu).

## Building

Termshark uses Go modules; compile with Go 1.13 or higher. Set `GO111MODULE=on` then run:

```bash
git clone https://github.com/gcla/termshark
cd termshark
go install ./...
```
Then add ```~/go/bin/``` to your ```PATH```.

For all packet analysis, termshark depends on tshark from the Wireshark project. Make sure ```tshark``` is in your ```PATH```.

## Quick Start

Inspect a local pcap:

```bash
termshark -r test.pcap
```

Capture ping packets on interface ```eth0```:

```bash
termshark -i eth0 icmp
```

![image](https://user-images.githubusercontent.com/29120060/169751638-9ed5a7f6-ea14-457a-9be3-4334159dce7b.png)


## License

[![License: MIT](https://img.shields.io/github/license/gcla/termshark.svg?color=yellow)](LICENSE)
