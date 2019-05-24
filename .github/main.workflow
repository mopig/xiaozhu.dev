workflow "Create an issue on push" {
  on = "push"
  resolves = ["Create issue"]
}

action "Create issue" {
  uses = "JasonEtco/create-an-issue@master"
  secrets = ["GITHUB_TOKEN"]
}