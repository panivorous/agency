---
name: guidance
description: Principles for writing guidance for Claude — CLAUDE.md, rule files, skills, subagent definitions and other standing instructions. Relevant whenever any of them is created, revised or reviewed (this skill included), down to a one-line addition. Also relevant whenever the user corrects Claude, says how things should go from now on or asks for something to be remembered, if it would hold beyond the conversation, even where a hook might also serve; when Claude has acted against guidance already in place; and alongside any workflow that writes guidance, such as /init or skill-creator.
---

# Guidance for Claude

Guidance here means anything written to shape Claude's work beyond a single conversation: CLAUDE.md, rule files, skills, subagent definitions and the like. These are the principles for writing it, placing it, reviewing it and keeping it current.

## Claude's own ability comes first

Claude is a capable generalist. Guidance carries only what Claude lacks; everything else is better left to Claude's own knowledge and judgement. Every line costs context and attention in each session that loads it, and dilutes the lines that matter.

What Claude lacks is judged from the reader's position, not the writer's. The reader is a later session without the conversation that prompted the guidance: the shorthand coined along the way, what was settled. The reader may also be a subagent, and not only through its own definition: other guidance can reach subagents too. A subagent may be a smaller model with less in context and fewer tools than the main session, less able to derive an action left implicit. What a session has just learnt seems obvious to it, which makes the writer a poor judge of what can go unsaid.

## When guidance earns its place

Guidance is warranted when, without it:

- Claude lacks the knowledge: an idiosyncratic preference, or domain knowledge specific to a context. A convention counts once chosen, even where any choice would have done.
- Claude could work it out but doesn't reliably: the deciding consideration is easy to miss, or several readings are plausible. The guidance supplies what tips the decision.
- Claude would get it wrong: stale or mistaken knowledge — APIs changed since the training cutoff, tools that now behave differently — is the insidious case, since Claude doesn't look up what it believes it already knows. Where the truth moves fast, a note that Claude's picture is out of date, with a pointer to the current source, outlasts a copy of that source.
- Claude would get it right, but only by rediscovering the same thing in every session that needs it. Writing it down pays only when the rediscovery, summed over those sessions, costs more than carrying it in every session that loads it; narrower placement lowers that carrying cost.

If Claude would get it right, reliably and cheaply, without the guidance, the guidance is noise. Whether Claude would do so is a forecast about another session; an observed failure, or a fresh session given the task without the guidance, is better evidence than any forecast. A line already in place may record a failure unseen by whoever now revises or reviews it; removing or weakening one whose reason can't be established is a question for whoever the guidance came from, even where Claude drafted it.

When the user asks for something to be remembered, the request settles whether it is written down; these principles shape what is written and, unless the user has named a place, where. When a correction, or a statement of how things should go from now on, would hold beyond the conversation but comes without such a request, the session offers to write it down, or to enforce it with a hook or setting, rather than doing either unasked.

Guidance makes an outcome likely, not certain. What must happen every time, or never, calls for enforcement wherever something can check it: a hook, a permission, a linter, a test. Guidance beside the enforcement carries the reason, so that Claude works with the check rather than around it. Where nothing can check, guidance is all there is.

## Knowledge over instruction

Knowledge serves Claude better than instruction. An instruction hands over a conclusion; knowledge hands over the premises — facts, preferences, reasons, consequences — from which Claude derives the action. Knowledge reaches cases its author didn't foresee, shows when a concern doesn't apply, and composes with other knowledge. Instructions get applied literally and over-broadly, and when two conflict, nothing in them settles it.

So guidance supplies the premises and leaves the decision to Claude. A constraint is fine when its reason travels with it. A preference with no deeper reason is stated as a preference, along with where it applies, rather than dressed up as a rule. Weight comes from consequences rather than emphasis: what breaks, or what will be rejected, tells Claude how firmly something holds.

Reasons and consequences have to be the real, local ones. A general argument for a practice adds only length, since Claude can supply it. A reason inferred by whoever writes or revises the guidance is a guess, and a wrong one misleads in exactly the unforeseen cases a reason exists to reach. Where a reason would change how far a constraint reaches and neither the conversation nor the code establishes it, that is a question for whoever the guidance came from. Without an established reason or an answer, the constraint stays bare, since a bare constraint is better than a wrong reason.

Knowledge acts only if Claude recalls it when it matters. So guidance names the situations the knowledge bears on, concretely enough that the action follows; a vague reason helps no more than a vague instruction.

Where the action is itself the knowledge — an exact command, steps whose order matters, a format another program parses — it is given exactly, since deriving it again adds only variance. An example, by contrast, is a conclusion for one case. Given alone, it gets its incidentals copied; with what makes it right stated beside it, or with others that vary in what doesn't matter, it conveys a style or format that an abstract account leaves open.

Advice from elsewhere on writing guidance — common practice, Claude Code's documentation, and workflows that write guidance, /init and skill-creator among them — differs from these principles in places, for instance in stating what to do rather than why. Where it does, these principles take precedence, being the ones chosen for this setup; an explicit request from the user still settles it.

## Placement and loading

Guidance belongs at the narrowest scope that still loads it when it is needed. Scope also has an owner: a personal preference in a shared file is imposed on everyone who shares it. Guidance that loads together has to agree, since nothing reliably settles a conflict.

Left to itself, Claude reaches a skill or subagent only through its name and description, which are all Claude sees when deciding whether to use one. A description that says what the guidance covers, but not when it is needed, leaves the guidance unused at the moment it would help; one drawn wider than the guidance's use loads it where it only costs. Claude also looks for on-demand guidance most readily when it senses a gap. Guidance that corrects what Claude believes it knows, or that Claude would not think to look for, is therefore safest loaded already, or with the files it concerns.

Claude's picture of Claude Code dates from its training, and Claude Code changes between releases, the loading mechanics included. So the current documentation is checked before a failure is put down to guidance not loading, and before guidance states how a feature behaves or a placement relies on a mechanism, unless Claude has seen it working in the session. The documentation is at code.claude.com/docs, which the claude-code-guide agent reads.

## What tends to creep in

Drafts of guidance, Claude's especially, drift towards:

- general good practice that Claude follows anyway;
- copies of what the code, README or tool output already says, which then go stale;
- the story of how the guidance came about rather than the reason that still holds, and references that make sense only in the session that wrote it;
- rules against problems that have never occurred;
- emphasis — MUST, IMPORTANT, capitals, bold — which Claude takes literally and over-applies, and which makes the lines without it read as optional;
- lists that keep the conclusions and drop the reasons, turning knowledge back into instruction;
- additions appended rather than reconciled with what is already there;
- exhaustive coverage.

## Failures and upkeep

A failure points to knowledge never written down, or to guidance already in place that was buried, contradicted, over-applied or not loaded; a single lapse against guidance in place, though, may be chance rather than a fault in it. The remedy is whatever would have prevented the failure, which may be a deletion, a move or a rewording rather than an addition; a prohibition of the symptom covers only the instance observed. Unless the user has asked for it, the remedy is offered rather than made.

Guidance that no longer holds goes, and so does guidance Claude no longer needs: the first misleads with authority, the second still costs context and attention.
