# install-at-once
A shell script to install popular software **at once** for Linux.

## Installation

```bash
git clone https://github.com/alu8bit/install-at-once
```

## Usage
All what you need to install just run `install.sh` script and set the source `-s` directory or file from *distrs/*.
For example, to install all popular software for Ubuntu just run:
```bash
./install.sh -s distrs/ubuntu/
```
If you have any problems. Try to set execute permission for file.
```bash
chmod +x install.sh
```

## Available options

```bash
    -c
    # Show all shell commands which will executed for selected source
    # Usage example fo Ubuntu:
    .install.sh -cs distrs/ubuntu/
    
    -l
    # Show software list for selected source
    # Usage example fo Ubuntu:
    .install.sh -ls distrs/ubuntu/
    
    -h
    # Show script help
    # Example:
    .install.sh -h
```



## Contributing
Bug reports and pull requests are welcome on GitHub at [https://github.com/alu8bit/install-at-once](https://github.com/alu8bit/install-at-once).
For more information please read CONTRIBUTING.md


## License
The module is available as open source under the terms of the MIT License.
