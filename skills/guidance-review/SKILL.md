---
name: guidance-review
description: Procedure for a full review of guidance for Claude — CLAUDE.md, rule files, skills, subagent definitions and the like — by three groups of subagent reviewers, each judging from one viewpoint, with the guidance revised in discussion with them until they agree or the user decides. Use when the user asks for a full review of guidance, or for this procedure by name, rather than for Claude's own view of it.
---

# Reviewing guidance

A full review puts guidance before three groups of reviewers, each judging it from one viewpoint, and revises it in discussion with them. It costs seven reviewers for the first read and three more for a fresh read at the end, plus their rounds of discussion, which is why it runs only when the user asks for it.

The standard is the guidance skill, for the main session and for every reviewer; the viewpoints are lenses on it, not standards of their own. Reviewers are peers in the sense of the subagents rule, which holds for them except where this skill says otherwise. Every brief names the guidance skill for the reviewer to load, and gives the guidance's location and how it loads. No one in the review runs experiments; reading sources is not an experiment.

## Effectiveness, thoroughness and terseness: three reviewers

These reviewers judge whether a session reading the guidance would act as intended. That takes in whether the session would read the text correctly; whether the guidance loads when it is needed, which, for a skill or subagent that Claude chooses itself, turns on whether its description gets it chosen at the right moments and only then; and how the guidance interacts with whatever loads alongside it, in every context it reaches, subagents included. In the same pass they look for gaps and for text that can go. A gap is a concrete situation in which a session would act wrongly, not ground left uncovered; text can go when no session would act differently without it. Each reviewer weighs both, since a group looking only for gaps always finds additions, and one looking only for cuts always finds cuts.

The judgement rests on introspection, which flatters guidance in one respect: the reviewer gives it full attention, while a real session meets it as one item among many, in the middle of a task. So the reviewers picture specific tasks in progress and say what they would do in each, which exposes a misreading where "is this clear?" would not, since a reviewer who has misread the text answers yes as readily as one who hasn't.

These reviewers read cold. Beyond what every brief carries, their first brief has only what the real reader would have: the guidance as it loads, who the reader is, what loads alongside it, and for a skill or subagent the descriptions it is chosen among, since that choice is made on descriptions alone. What loads alongside includes any part of Claude Code's main system prompt that the guidance bears on, which the main session quotes, since a reviewer, like any subagent other than a fork, gets none of that prompt's general instructions, and the descriptions of only its own tools, which leave out some of the main session's.

The brief leaves out the user's request and the conversation behind the draft, since a reviewer that knows what was meant can no longer tell whether the text says it. Both are also kept out of any folder the brief points to, and the brief asks these reviewers to leave alone the scratchpad, which subagents share with the main session, and the commit history, since either may hold them. The user's words — the request and the decisions they have settled — follow after the first report, so that the reviewers can judge whether the text achieves what the user asked for.

## Accuracy and fidelity: two reviewers

These reviewers judge whether what the guidance says is true. Claims about Claude Code, tools, settings and the repository are checked against current sources: the documentation at code.claude.com/docs, which the brief lets them read through the claude-code-guide agent, and the code and configuration themselves. Introspection can't settle such claims, since every reviewer shares the model's picture from training, and agreement within a group doesn't make a stale fact true.

Reasons, preferences and scope are checked against the user's own words. An invented reason, a preference hardened into a rule, or "when X" widened to "always" is as easy to follow as the original, and parts from it in exactly the cases the user didn't foresee. So these reviewers get the user's words from the start, along with whatever records why existing lines are there, such as commit messages. A source says what it says, so redundancy buys less here than in the other groups.

## Style and structure: two reviewers

These reviewers judge whether the user, as maintainer, finds the guidance easy to read and change, and whether it keeps the conventions of the guidance around it. They judge by the guidance skill and the conventions of the existing files, not by general writing advice, which pulls the wrong way here: bullets that strip the reasons out of prose, bold and extra headings for skimming, imperatives where the existing files give knowledge. How easily Claude reads it is judged under effectiveness.

## Findings

Each finding states its consequence: what a session would do wrong, or what the user would reject or find hard to maintain. A finding without one is not something to agree on. Reviewers always find something, and the easiest way to reach agreement is to accept additions nobody needed, so "no change" is as valid a verdict as any.

## Discussion

1. Every reviewer reports independently of the others, so that agreement within a group means something. A finding that recurs is a signal; one raised once is judged on its merits, since a real gap may be noticed only once.
2. The main session revises the guidance and replies to each reviewer with its reasons, sending every reviewer the revised text, since a change made for one viewpoint can break another. An addition is worked into the existing text, not appended. The reply also asks any reviewer that concedes to say what convinced it: Claude instances tend to give way to reasoned pushback, and so does a main session wanting to finish, so agreement with no reason given means little. The reviewers, resumed with their context, answer. This is one round, and there are at most three.
3. Two kinds of question go to the user, with both positions as background. One is any change that touches the user's settled decisions or wording, or that cuts an existing line whose reason nobody can establish, which is a question for its author; it goes to the user whatever the main session and the reviewers think. The other is any disagreement still open after the third round; the cap is what ensures the review ends.
4. Once the discussion is over and the user has answered whatever went to them, one new reviewer per group reads the agreed text. Its brief is its group's first brief brought up to date, with the user's answers going wherever that brief puts the user's words. The discussion, the review's own commit messages included, is kept from it in the same way as the request is kept from the cold reviewers. The fresh read is there to catch what the revisions broke, which reviewers who know the earlier text tend to read past. Its findings go through steps 2 and 3 with the new reviewers alone, for up to three rounds of their own. The fresh read happens once, so the review ends there.
