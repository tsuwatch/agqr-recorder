# Agqr::Recorder
Record agqr-program by cron format

## Installation

Add this line to your application's Gemfile:

    gem 'agqr-recorder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install agqr-recorder

## Usage

### Configuration
```
agqr_stream_url: rtmp://fms-base1.mitene.ad.jp/agqr/aandg2
save_path: pato/to/save/dir
rtmpdump: path_to_rtmpdump

programs:
  - title: program_title
    schedule: cron_format
    length: recording_time
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/agqr-recorder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
