# Gitban

> A Kanban interface for your Github Issues

Often, some of your team wants to use Github Issues, while some of your team
wants a more robust toolset like Pivotal Tracker, Trello, or Sprintly.

Now you don't have to choose.

1. Simple, familiar agile interface for dynamic prioritization
1. No duplicate data: Everything is stored in Github Issues
1. Ultimate security: No back end infrastructure

## Simple, familiar agile interface for dynamic prioritization

Gitban provides some of the best features found in the robust agile tools in
the marketplace:

* Unlimited, fully customizable boards to suit your workflow
* Simple drag to re-prioritize
* Click to edit assignee or add comments
* Optional: Estimate level of effort and track velocity

Full integration with Github also facilitates:

* Simple Github authentication
* Organization-wide, cross-project views
* Filter by contributor, project, label, or milestone
* Use the existing Github Issues interface rather than Gitban whenever you like

## No duplicate data: Everything is stored in Github Issues

For teams that appreciate the natural integration between Github Issues and
source code stored in Github, moving to an agile tool often means either:

1. Abandoning Github Issues entirely, or
2. Keeping a separate dataset synced with an integration

With Gitban, no separate data store exists. All data comes from Github issues
and all changes are propagated back to Github Issues.

Gitban is simply an alternate interface for users that prefer the benefits of
of Kanban process.

## Ultimate security: No back end infrastructure

Our unique "No back end" infrastructure is the ultimate in security. That's
right. No back end whatsoever. Our app is an Ember app served as a static
document. The app does not communicate with our servers at all — because we do
not have servers.

As such, when you authenticate with Github, we have no visibility into the
authentication details.

Your issues dataset is cached locally for performance gains, but the issues are
not stored separately with us. Your data is between you and Github.