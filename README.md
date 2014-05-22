# Agqr::Recorder
Agqr::Recorder can record a program of agqr.

This specify the date and time in the cron format (using [Chrono](https://github.com/r7kamura/chrono/)).

## Installation

Add this line to your application's Gemfile:

    gem 'agqr-recorder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install agqr-recorder

## Requirement

* rtmpdump

## Usage

1. Write config in yaml, format is below
2. run `agqr-recorder /path/to/config.yml`

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
