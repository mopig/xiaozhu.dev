workflow "Create an issue on push" {
  on = "push"
  resolves = ["GitHub Action for Zeit"]
}

action "Create issue" {
  uses = "JasonEtco/create-an-issue@master"
}

action "GitHub Action for Zeit" {
  uses = "actions/zeit-now@5c51b26db987d15a0133e4c760924896b4f1512f"
  needs = ["Create issue"]
}
