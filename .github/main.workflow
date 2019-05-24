workflow "Create an issue on push" {
  on = "push"
  resolves = ["GitHub Action for Zeit"]
}

action "Create issue" {
  uses = "JasonEtco/create-an-issue@master"
  secrets = ["GITHUB_TOKEN", "NAME"]
}

action "GitHub Action for Zeit" {
  uses = "actions/zeit-now@master"
  needs = ["Create issue"]
  secrets = ["AGE"]
}
