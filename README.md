# Github Action to filter on event fields

Use JS expressions to filter execution of Github Actions on event payloads. The JSON parsed event
is available as `event`. Pass the expression as the `args` to the action.

## Usage
An example workflow to block deleted branches:


```
workflow "Deploy" {
  on = "push"
  resolves = ["non deleted branches only"]
}

action "non deleted branches only" {
  uses = "dschep/filter-event-action@master"
  args = "event.deleted"
}
```
