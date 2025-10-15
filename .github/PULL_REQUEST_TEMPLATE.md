# Kevin Pull Request Standard

Please review all parts of this document prior to actually creating a PR.  Following all of these processes will ensure that people can quickly and efficiently complete the PR process.

## Changes

Describe the big picture of your changes here to communicate to the maintainers why we should accept this pull request. If it fixes a bug or resolves a epic request, be sure to link to that issue.

Include BEFORE and AFTER screenshots or animations as visual evidence, if available.  For example, service changes may be accompanied by screenshots of Charles traces.  UI changes may be accompanied by application screenshots or animations.

## Type of Change

- [ ] Bug Fix (non-breaking change which fixes an issue)
- [ ] New Feature (non-breaking change which adds functionality)
- [ ] Breaking Change (fix or epic that causes existing functionality to change)
- [ ] Architecture Enhancements (non-breaking change which refactors existing functionality)

## Dependencies

Link outs to the any PRs that are a requisite to this PR.
Note: If any changes are made to dependencies that will break project compilation, that should be called out here. 

## DevOps Link

A link out to the associated DevOps story/defect/feature identifier
Note: In most cases this should apply. Under rare circumstances (example: tech stories) an identifier may be missing. In these circumstances, a story should be requested. After a story has been created, the story should be linked to the PR 

## Testing

A link out to any related testing information for the review to run through any test cases before approving a pull request.

## Considerations

- [ ] **DO** keep pull requests as small as necessary so they can be easily reviewed.
- [ ] **DO** make sure unit tests pass.
- [ ] **AVOID** breaking any automated testing build processes.

## Acceptance Criteria Checklist
 
Acceptance criteria from the associated work item should be added here. Each item in the AC should be checked off by the PR creator to as a sanity check that all acceptance criteria has been met

## Checklist

_Put an `x` in the boxes that apply. You can also fill these out after creating the PR. If you're unsure about any of them, don't hesitate to ask. We're here to help! This is simply a reminder of what we are going to look for before merging your code._

- [ ] I have ensured that my code builds and passes the requisite Jenkins automated tests (Lint, Unit tests, �etc) .
- [ ] I have added tests that prove my fix is effective or that my epic works.
- [ ] I have verified that my changes conform to both architectural guidelines and language style guides.
- [ ] I have updated the documentation in:
  * DevOps
  * Wikis
  * Project READMEs
  * Release notes
  * And anywhere else appropriate.
- [ ] I have updated the status of my story/defect in DevOps.
- [ ] Any dependent changes have been merged and published in downstream modules.
- [ ] Dependency references have been updated.
- [ ] I have added at least 2 Reviewers (either directly or via group) to review the changes in this PR.
- [ ] I have added at least 1 Assignee to this PR who will be responsible for merging it once it has been reviewed.

## Further comments

If this is a relatively large or complex change, kick off the discussion by explaining why you chose the solution you did and what alternatives you considered, etc...
