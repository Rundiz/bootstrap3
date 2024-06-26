# Contributing to Bootstrap

Looking to contribute something to Bootstrap? **Here's how you can help.**

Please take a moment to review this document in order to make the contribution
process easy and effective for everyone involved.

Following these guidelines helps to communicate that you respect the time of
the developers managing and developing this open source project. In return,
they should reciprocate that respect in addressing your issue or assessing
patches and features.


## Using the issue tracker

The [issue tracker](https://github.com/rundiz/bootstrap3/issues) is
the preferred channel for [bug reports](#bug-reports), [features requests](#feature-requests)
and [submitting pull requests](#pull-requests), but please respect the following
restrictions:

* Please **do not** use the issue tracker for personal support requests. Stack
  Overflow ([`twitter-bootstrap-3`](https://stackoverflow.com/questions/tagged/twitter-bootstrap-3) tag),
  [Slack](https://bootstrap-slack.herokuapp.com/) or [IRC](README.md#community) are better places to get help.

* Please **do not** derail or troll issues. Keep the discussion on topic and
  respect the opinions of others.

* Please **do not** post comments consisting solely of "+1" or ":thumbsup:".
  Use [GitHub's "reactions" feature](https://blog.github.com/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/)
  instead. We reserve the right to delete comments which violate this rule.

* Please **do not** open issues or pull requests regarding the code in
  [`Normalize`](https://github.com/necolas/normalize.css) (open them in
  their respective repositories).

* Please **do not** open issues regarding the official themes offered on <https://themes.getbootstrap.com/>.
  Instead, please email any questions or feedback regarding those themes to `themes AT getbootstrap DOT com`.


## Issues and labels

Our bug tracker utilizes several labels to help organize and identify issues. Here's what they represent and how we use them:

- `browser bug` - Issues that are reported to us, but actually are the result of a browser-specific bug. These are diagnosed with reduced test cases and result in an issue opened on that browser's own bug tracker.
- `confirmed` - Issues that have been confirmed with a reduced test case and identify a bug in Bootstrap.
- `css` - Issues stemming from our compiled CSS or source Less/Sass files.
- `customizer` - Issues with our web-based Customizer.
- `docs` - Issues for improving or updating our documentation.
- `examples` - Issues involving the example templates included in our docs.
- `grunt` - Issues with our included JavaScript-based Gruntfile, which is used to run all our tests, concatenate and compile source files, and more.
- `help wanted` - Issues we need or would love help from the community to resolve.
- `js` - Issues stemming from our compiled or source JavaScript files.
- `meta` - Issues with the project itself or our GitHub repository.

For a complete look at our labels, see the [project labels page](https://github.com/rundiz/bootstrap3/labels).


## Bug reports

A bug is a _demonstrable problem_ that is caused by the code in the repository.
Good bug reports are extremely helpful, so thanks!

Guidelines for bug reports:

0. **Validate and lint your code** &mdash; [validate your HTML](https://html5.validator.nu/)
   and [lint your HTML](https://github.com/twbs/bootlint) to ensure your
   problem isn't caused by a simple error in your own code.

1. **Use the GitHub issue search** &mdash; check if the issue has already been
   reported.

2. **Check if the issue has been fixed** &mdash; try to reproduce it using the
   latest `v3-dev` or development branch in the repository.

3. **Isolate the problem** &mdash; ideally create a [reduced test
   case](https://css-tricks.com/reduced-test-cases/) and a live example.
   [This JS Bin](http://jsbin.com/lefey/1/edit?html,output) is a helpful template.


A good bug report shouldn't leave others needing to chase you up for more
information. Please try to be as detailed as possible in your report. What is
your environment? What steps will reproduce the issue? What browser(s) and OS
experience the problem? Do other browsers show the bug differently? What
would you expect to be the outcome? All these details will help people to fix
any potential bugs.

Example:

> Short and descriptive example bug report title
>
> A summary of the issue and the browser/OS environment in which it occurs. If
> suitable, include the steps required to reproduce the bug.
>
> 1. This is the first step
> 2. This is the second step
> 3. Further steps, etc.
>
> `<url>` - a link to the reduced test case
>
> Any other information you want to share that is relevant to the issue being
> reported. This might include the lines of code that you have identified as
> causing the bug, and potential solutions (and your opinions on their
> merits).

### Reporting upstream browser bugs

Sometimes bugs reported to us are actually caused by bugs in the browser(s) themselves, not bugs in Bootstrap per se.
When feasible, we aim to report such upstream bugs to the relevant browser vendor(s), and then list them on our [Wall of Browser Bugs](https://getbootstrap.com/docs/3.4/browser-bugs/) and [document them in MDN](https://developer.mozilla.org/en-US/docs/Web).

| Vendor(s)     | Browser(s)                   | Rendering engine | Bug reporting website(s)                                                              | Notes                                                    |
| ------------- | ---------------------------- | ---------------- | ------------------------------------------------------------------------------------- | -------------------------------------------------------- |
| Mozilla       | Firefox                      | Gecko            | https://bugzilla.mozilla.org/enter_bug.cgi                                            | "Core" is normally the right product option to choose.   |
| Apple         | Safari                       | WebKit           | https://bugs.webkit.org/enter_bug.cgi?product=WebKit <br> https://bugreport.apple.com | In Apple's bug reporter, choose "Safari" as the product. |
| Google, Opera | Chrome, Chromium, Opera v15+ | Blink            | https://code.google.com/p/chromium/issues/list                                        | Click the "New issue" button.                            |
| Microsoft     | Edge                         | EdgeHTML         | https://developer.microsoft.com/en-us/microsoft-edge/platform/issues/                 |                                                          |

## Feature requests

No more feature requests or feature suggest, sorry. This repository only keep Bootstrap 3 original features but use modern functions and syntax to make it work with modern web browsers.  
For example use CSS variables (`var(--variable-name)`) instead of direct value from Less variables (`@variable-name`).


## Pull requests

Good pull requests—patches, improvements, new features—are a fantastic
help. They should remain focused in scope and avoid containing unrelated
commits.

**Please ask first** before embarking on any significant pull request (e.g.
implementing features, refactoring code, porting to a different language),
otherwise you risk spending a lot of time working on something that the
project's developers might not want to merge into the project.

Please adhere to the [coding guidelines](#code-guidelines) used throughout the
project (indentation, accurate comments, etc.) and any other requirements
(such as test coverage).

**Do not edit `bootstrap.css`, `bootstrap-theme.css`, or `bootstrap.js`
directly!** Those files are automatically generated. You should edit the
source files in [`/bootstrap/less/`](https://github.com/rundiz/bootstrap3/tree/v3-dev/less),
and/or [`/bootstrap/js/`](https://github.com/rundiz/bootstrap3/tree/v3-dev/js) instead.

Adhering to the following process is the best way to get your work
included in the project:

1. [Fork](https://help.github.com/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/bootstrap.git
   # Navigate to the newly cloned directory
   cd bootstrap
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/rundiz/bootstrap3.git
   ```

2. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout v3-dev
   git pull upstream v3-dev
   ```

3. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Commit your changes in logical chunks. Please adhere to these [git commit
   message guidelines](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely to be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/about-git-rebase/)
   feature to tidy up your commits before making them public.

5. Locally merge (or rebase) the upstream development branch into your topic branch:

   ```bash
   git pull [--rebase] upstream v3-dev
   ```

6. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

7. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/)
    with a clear title and description against the `v3-dev` branch.

**IMPORTANT**: By submitting a patch, you agree to allow the project owners to
license your work under the terms of the [MIT License](LICENSE) (if it
includes code changes) and under the terms of the
[Creative Commons Attribution 3.0 Unported License](docs/LICENSE)
(if it includes documentation changes).

## Code guidelines

### HTML

[Adhere to the Code Guide.](http://codeguide.co/#html)

- Use tags and elements appropriate for an HTML5 doctype (e.g., self-closing tags).
- Use CDNs and HTTPS for third-party JS when possible. We don't use protocol-relative URLs in this case because they break when viewing the page locally via `file://`.
- Use [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) attributes in documentation examples to promote accessibility.

### CSS

[Adhere to the Code Guide.](http://codeguide.co/#css)

- When feasible, default color palettes should comply with [WCAG color contrast guidelines](https://www.w3.org/TR/WCAG20/#visual-audio-contrast).
- Except in rare cases, don't remove default `:focus` styles (via e.g. `outline: none;`) without providing alternative styles. See [this A11Y Project post](https://a11yproject.com/posts/never-remove-css-outlines/) for more details.

### JS

- No semicolons (in client-side JS)
- 2 spaces (no tabs)
- strict mode
- "Attractive"
- Don't use [jQuery event alias convenience methods](https://github.com/jquery/jquery/blob/master/src/event/alias.js) (such as `$().focus()`). Instead, use [`$().trigger(eventType, ...)`](https://api.jquery.com/trigger/) or [`$().on(eventType, ...)`](https://api.jquery.com/on/), depending on whether you're firing an event or listening for an event. (For example, `$().trigger('focus')` or `$().on('focus', function (event) { /* handle focus event */ })`) We do this to be compatible with custom builds of jQuery where the event aliases module has been excluded.

### Checking coding style

Run `grunt test` before committing to ensure your changes follow our coding standards.


## License

By contributing your code, you agree to license your contribution under the [MIT License](LICENSE).
By contributing to the documentation, you agree to license your contribution under the [Creative Commons Attribution 3.0 Unported License](docs/LICENSE).

Prior to v3.1.0, Bootstrap's code was released under the Apache License v2.0.
