# Jean-Elie Pierre - Engineering Portfolio

A hiring-focused Jekyll portfolio for staff and senior roles in AI/ML, autonomy, GN&C, robotics, computer vision, embedded systems, and edge AI.

## Customize before publishing

1. In `_config.yml`, replace `YOUR-GITHUB-USERNAME` in `url` with your actual GitHub Pages hostname or your custom domain.
2. Review the public email, GitHub, LinkedIn, and résumé links.
3. Decide whether you want your full résumé PDF publicly downloadable. Remove it and the associated links if not.
4. Add only diagrams, screenshots, or technical details that you are authorized to publish.
5. Add future projects using `_templates/project-case-study.md`.
6. Add technical notes under `_posts/`.

## Project structure

- `_pages/` - public pages such as About, Experience, Research, and Contact.
- `_projects/` - technical case studies rendered as a Jekyll collection.
- `_posts/` - dated technical notes.
- `_layouts/` and `_includes/` - page layouts and reusable Liquid components.
- `assets/css/main.scss` - responsive site styling.
- `assets/js/main.js` - frontend behavior.
- `_templates/` - templates for new case studies and technical notes.
- `.github/workflows/pages.yml` - GitHub Pages deployment workflow.

The site uses Jekyll and vanilla HTML, Liquid, Sass, and JavaScript. `_site/` is generated output and should not be edited directly.

## Requirements

- Ruby 3.3 or compatible Ruby version
- Bundler

Windows users can install Ruby with [RubyInstaller](https://rubyinstaller.org/). See the [Jekyll Windows installation guide](https://jekyllrb.com/docs/installation/windows/) for platform-specific details.

## Local development

Install the project dependencies:

```bash
bundle install
```

Start the development server:

```bash
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000>.

Useful commands:

```bash
bundle exec jekyll build       # Build the site into _site/
bundle exec jekyll serve --watch
```

The equivalent shortcuts are available in the [Makefile](Makefile).

## Content workflows

1. Add or edit public pages in `_pages/`. Preserve the existing front matter and permalink conventions.
2. Add project case studies using [_templates/project-case-study.md](_templates/project-case-study.md), then save them under `_projects/`.
3. Add technical notes under `_posts/` using the `YYYY-MM-DD-title.md` filename format.
4. Update profile links, contact details, site URL, and deployment settings in [_config.yml](_config.yml).
5. Run `bundle exec jekyll build` before publishing.

## Publishing

The [GitHub Pages workflow](.github/workflows/pages.yml) builds the site with Ruby 3.3 and deploys `_site/` when changes are pushed to `main`. In the repository settings, set **Pages > Source** to **GitHub Actions**.

Before publishing, replace the placeholder `url` in [_config.yml](_config.yml), verify the public email and social links, and decide whether the résumé PDF should remain publicly downloadable.

## TODO

## License

This project is released under the [MIT License](LICENSE).
