# obs-deps-bst

This repository is a [BuildStream](https://buildstream.build/) project to build OBS Studio dependencies for Flatpak.

Credits to [Freedesktop SDK](https://gitlab.com/freedesktop-sdk/freedesktop-sdk) and [GNOME Build Metadata](https://gitlab.gnome.org/GNOME/gnome-build-meta/) developers for their work relying on BuildStream.

## Contributing

- Commit with only CI changes (workflows, actions) are prefixed `CI:`, otherwise no prefix.
- Python code is linted with [Pylint](https://pylint.readthedocs.io/en/stable/) and formatted with [Black](https://black.readthedocs.io/en/stable/index.html)
  - For stability, Pylint is installed with a version specifier avoiding additions (e.g., `==3.2.*`) and Black is used with `--required-version` set. Check ["Check Code Changes" workflow `env`](./.github/workflows/check-code.yaml) for the in use versions.
