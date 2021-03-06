> :warning: This repository has been archived and will no longer be maintained.
>
> I recommend using [laravelsail/php80-composer](https://hub.docker.com/r/laravelsail/php80-composer) as an alternative, as it's the underlying container for [Laravel Sail](https://laravel.com/docs/master/sail) and is maintained by the Laravel team. @lorisleiva also has a suitable replacement in [lorisleiva/laravel-docker](https://hub.docker.com/r/lorisleiva/laravel-docker).

# Laravel CI Pipeline

This repository contains the `Dockerfile` that defines [the `stevegrunwell/laravel-ci-pipeline` Docker image](https://hub.docker.com/r/stevegrunwell/laravel-ci-pipeline/), which aims to provide a sensible image for building Laravel 7.x applications in a CI/CD environment.

## Usage

To pull the image for use locally, you may run the following:

```sh
$ docker pull stevegrunwell/laravel-ci-pipeline
```

In CI pipelines, you may reference the image as `stevegrunwell/laravel-ci-pipeline`.

## License

Copyright 2018 Steve Grunwell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
