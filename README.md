# [Bootstrap](https://getbootstrap.com/)

Bootstrap is a sleek, intuitive, and powerful front-end framework for faster and easier web development, created by [Mark Otto](https://twitter.com/mdo) and [Jacob Thornton](https://twitter.com/fat), and maintained by the [core team](https://github.com/orgs/twbs/people) with the massive support and involvement of the community.

To get started, check out (original: <https://getbootstrap.com/>, this forked: <https://rundiz.github.io/bootstrap3/>)!

### What's new.

This repository is a fork of original Bootstrap but keep only version 3. This is to make it use new functions and syntax and work with modern web browsers.  
There is no new or extra features than original Bootstrap 3 and no new feature request here.

[See a demo](https://rundiz.github.io/bootstrap3/)


## Table of contents

* [Limitations](#limitations)
* [Quick start](#quick-start)
* [Bugs and feature requests](#bugs-and-feature-requests)
* [Documentation](#documentation)
* [Contributing](#contributing)
* [Community](#community)
* [Versioning](#versioning)
* [Creators](#creators)
* [Copyright and license](#copyright-and-license)


## Limitations

This repo. use CSS variable for example `--background-color: #fff;` and `background-color: var(--background-color);`. So, it does not supported Internet Explorer (IE). If you would like to use old browsers, please use original Bootstrap 3.


## Quick start

Several quick start options are available:

* [Download the latest release](https://github.com/rundiz/bootstrap3/releases/latest).
* Clone the repo: `git clone https://github.com/rundiz/bootstrap3.git`.

Read the [Getting started page](https://rundiz.github.io/bootstrap3/getting-started/) for information on the framework contents, templates and examples, and more.

### What's included

Within the download you'll find the following directories and files, logically grouping common assets and providing both compiled and minified variations. You'll see something like this:

```
bootstrap/
├── css/
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   ├── bootstrap.min.css.map
│   ├── bootstrap-theme.css
│   ├── bootstrap-theme.css.map
│   ├── bootstrap-theme.min.css
│   └── bootstrap-theme.min.css.map
├── js/
│   ├── bootstrap.js
│   └── bootstrap.min.js
└── fonts/
    ├── glyphicons-halflings-regular.eot
    ├── glyphicons-halflings-regular.svg
    ├── glyphicons-halflings-regular.ttf
    ├── glyphicons-halflings-regular.woff
    └── glyphicons-halflings-regular.woff2
```

We provide compiled CSS and JS (`bootstrap.*`), as well as compiled and minified CSS and JS (`bootstrap.min.*`). CSS [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) are available for use with certain browsers' developer tools. Fonts from Glyphicons are included, as is the optional Bootstrap theme.


## Bugs and feature requests

Have a bug or a feature request? Please first read the [issue guidelines](https://github.com/rundiz/bootstrap3/blob/v3-dev/CONTRIBUTING.md#using-the-issue-tracker) and search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/rundiz/bootstrap3/issues/new).

Do not accept feature requests. This repository is for make Bootstrap 3 using modern functions, syntax to use with moder web browsers but keep original features of Bootstrap 3. No new feature requests.

## Documentation

Bootstrap's documentation, included in this repo in the root directory, is built with [Jekyll](https://jekyllrb.com/) and publicly hosted on GitHub Pages at <https://rundiz.github.io/bootstrap3/>. The docs may also be run locally.

### Running documentation locally

#### Use local command
1. If necessary, [install Jekyll](https://jekyllrb.com/docs/installation/) and other Ruby dependencies with `bundle install`.
   **Note for Windows users:** Read [this guide](https://jekyllrb.com/docs/installation/windows/) to get Jekyll up and running without problems.
2. From the root `/bootstrap` directory, run `bundle exec jekyll serve` in the command line.
4. Open `http://localhost:9001` in your browser, and voilà.

#### Use Docker (recommended)
1. Install [Docker](https://www.docker.com/).
2. From the root `/bootstrap` directory, run command `docker build -t mynode:latest .` to install **Dockerfile**.
3. Run command `docker volume create docker_ruby_bundle` to create volume.
4. Run command `docker run --rm -it -v "%CD%:/app" -v docker_ruby_bundle:/bundle -w /app mynode:latest sh -lc "gem install -N bundler -v 2.6.9 -i /bundle && bundle _2.6.9_ install"` to install Ruby gems once. You may replace `%CD%` to `$PWD` on Linux.  
    If you see _cannot load such file -- webrick_, run this command once `docker run --rm -it -v "%CD%:/app" -v docker_ruby_bundle:/bundle -w /app mynode:latest sh -lc "bundle add webrick"`.
5. From the root `/bootstrap` directory, run command `docker run --rm -it -v "%CD%:/app" -v docker_ruby_bundle:/bundle -w /app -p 9001:9001 mynode:latest bundle exec jekyll serve --host 0.0.0.0 --port 9001`  
    Or you may use command `docker run --rm -it -v "%CD%:/app" -v docker_ruby_bundle:/bundle -w /app -p 9001:9001 -p 35729:35729 mynode:latest bundle exec jekyll serve --host 0.0.0.0 --port 9001 --watch --force_polling --livereload --livereload-port 35729` to make it auto regenerate the document and live reload on Windows.
6. Open `http://localhost:9001/docs/3.4/` in your browser.

Learn more about using Jekyll by reading its [documentation](https://jekyllrb.com/docs/).


## Contributing

Please read through our [contributing guidelines](https://github.com/rundiz/bootstrap3/blob/v3-dev/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development.

Moreover, if your pull request contains JavaScript patches or features, you must include [relevant unit tests](https://github.com/rundiz/bootstrap3/tree/v3-dev/js/tests). All HTML and CSS should conform to the [Code Guide](https://github.com/mdo/code-guide), maintained by [Mark Otto](https://github.com/mdo).

**Bootstrap v3 is now closed off to new features.**

Editor preferences are available in the [editor config](https://github.com/rundiz/bootstrap3/blob/v3-dev/.editorconfig) for easy use in common text editors. Read more and download plugins at <https://editorconfig.org/>.

### Development

Recommend to use Docker to run Node package commands (`npm run ..`).

1. Install [Docker](https://www.docker.com/).
2. From the root `/bootstrap` directory, run command `docker build -t mynode:latest .` to install **Dockerfile**. (If you already did from step Running documentation locally then you can skip this step.)
3. Run commands `docker volume create docker_node_modules`, `docker volume create docker_ruby_bundle` to create volumes. (If some volume is already created then you can skip it.)
4. Run command `docker run --rm -it -v "%CD%:/app" -v docker_node_modules:/app/node_modules -w /app mynode:latest npm ci` to clean install Node packages once. You may replace `%CD%` to `$PWD` on Linux.
5. Run command `docker run --rm -it -v "%CD%:/app" -v docker_ruby_bundle:/bundle -w /app mynode:latest bundle install` to install Ruby gems once. (If you already did from step Running documentation locally then you can skip this step.)
6. And then you can run command in package.json `scripts`. For example: `docker run --rm -it -v "%CD%:/app" -v docker_node_modules:/app/node_modules -v docker_ruby_bundle:/bundle -w /app mynode:latest npm run release`.

#### To watch .less file change or compile files

After you completed install step 1 to 5 above, you can use following commands.

* Run command `docker run --rm -it -v "%CD%:/app" -v docker_node_modules:/app/node_modules -v docker_ruby_bundle:/bundle -w /app mynode:latest node_modules/grunt/bin/grunt watch:less` to watch .less file change. You need to use this command to work with **Running documentation locally** live reload.
* Run command `docker run --rm -it -v "%CD%:/app" -v docker_node_modules:/app/node_modules -v docker_ruby_bundle:/bundle -w /app mynode:latest node_modules/grunt/bin/grunt dist-css` to build CSS files.
* Run command `docker run --rm -it -v "%CD%:/app" -v docker_node_modules:/app/node_modules -v docker_ruby_bundle:/bundle -w /app mynode:latest node_modules/grunt/bin/grunt dist` to build full distribution task files (CSS, JS).

#### Before commit, publish

* Run package.json `change-version` if need.
* Run package.json `test` if need.
* Run package.json `release` to rebuild assets, generate release zip, update hash.
* Then run `git add ...` and `git commit ...`.


## Community

Get updates on Bootstrap's development and chat with the project maintainers and community members.

* Follow [@getbootstrap on Twitter](https://twitter.com/getbootstrap).
* Read and subscribe to [The Official Bootstrap Blog](https://blog.getbootstrap.com/).
* Join [the official Slack room](https://bootstrap-slack.herokuapp.com/).
* Chat with fellow Bootstrappers in IRC. On the `irc.freenode.net` server, in the `##bootstrap` channel.
* Implementation help may be found at Stack Overflow (tagged [`twitter-bootstrap-3`](https://stackoverflow.com/questions/tagged/twitter-bootstrap-3)).
* Developers should use the keyword `bootstrap` on packages which modify or add to the functionality of Bootstrap when distributing through [npm](https://www.npmjs.com/search?q=keywords:bootstrap) or similar delivery mechanisms for maximum discoverability.


## Versioning

For transparency into our release cycle and in striving to maintain backward compatibility, Bootstrap is maintained under [the Semantic Versioning guidelines](https://semver.org/). Sometimes we screw up, but we'll adhere to those rules whenever possible.

See [the Releases section of our GitHub project](https://github.com/rundiz/bootstrap3/releases) for changelogs for each release version of Bootstrap. Release announcement posts on [the official Bootstrap blog](https://blog.getbootstrap.com/) contain summaries of the most noteworthy changes made in each release.


## Creators

**Mark Otto**

* <https://twitter.com/mdo>
* <https://github.com/mdo>

**Jacob Thornton**

* <https://twitter.com/fat>
* <https://github.com/fat>


## Copyright and license

Code and documentation copyright 2011-2019 Twitter, Inc. Code released under [the MIT license](https://github.com/rundiz/bootstrap3/blob/v3-dev/LICENSE). Docs released under [Creative Commons](https://github.com/rundiz/bootstrap3/blob/v3-dev/docs/LICENSE).
