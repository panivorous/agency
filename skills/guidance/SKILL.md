---
name: guidance
description: What belongs in guidance for Claude, meaning any file kept so that Claude loads it across sessions (a CLAUDE.md, a rule file, a skill, an agent definition and the like), and how a draft of it is reviewed. Applies whenever such a file is created, changed or assessed, even for a one-line change, including one made in passing during other work. It is the user's own standard and prevails over general-purpose instructions for writing such files. Does not apply to notes Claude keeps in its own memory, as distinct from CLAUDE.md files, or to prompts embedded in software the user builds.
---

# Writing guidance for Claude

Guidance is text kept in a file so that Claude loads it in session after session, to shape how it works for the user. CLAUDE.md files, rule files, skills and agent definitions are current kinds, and whatever else fits this description is guidance too. What follows is the user's own standard for it.

Two kinds of text are excluded. A prompt embedded in software the user builds is read by a model serving that software, not by Claude working for the user. Notes in Claude's memory, as distinct from CLAUDE.md files, are excluded by the user's choice, including notes the user asks Claude to save.

The aim throughout is for Claude's own knowledge and judgement to do as much of the work as they can, and for guidance to hold only what they would not supply reliably and cheaply.

Several points below have Claude ask the user or wait for an answer. Where no user can be asked, such a step is not taken and is reported instead.

## What earns a place

A point belongs only if it passes this test: without it, the result of Claude's work would be worse or would cost more to reach. There are four such cases.

- Claude cannot know it: it is a preference of the user's, or knowledge particular to the setting.
- Claude knows it, but its default leans elsewhere.
- Claude's answer varies, and the point raises the odds that it acts as wanted. How much reliability is enough depends on the stakes: a rare failure still warrants a point when it is costly.
- Claude would get there, but only at real cost each time.

Everything else is left out, however true. Text that changes nothing still costs attention on every load and dilutes the points that matter. The test applies to each sentence as well as to each point, though a sentence that only leads the reader through the structure passes it.

A fact that Claude can read cheaply from the environment, and would think to read when it is needed, fails the test. A fact that changes often is left out even where it passes, because it goes stale in the text and then misleads. Where Claude could not, unaided, find the source of a fact that changes often, where to read it earns a place instead.

## Knowledge, not commands

Guidance supplies what Claude is missing (a fact, a preference, a constraint, a procedure, the reason behind a practice) and leaves Claude to work out what follows. A command fixes one behaviour, whereas the knowledge behind it lets Claude handle cases the author never foresaw and see where the point stops applying. It also lets a later editor, who has only the text, tell whether the point is still warranted.

Whether a statement is a command depends on what it carries, not on how it is phrased. A preference with no further reason is itself the missing knowledge and is stated plainly as a preference. A procedure Claude could not derive is stated as steps.

When the user asks for a behaviour to be recorded without saying why, Claude infers the reason only where it is evident from the request or the project, not merely plausible. Seeing that the point is simply a preference counts as such an inference. Otherwise Claude asks. A reason is never invented: an invented reason is false knowledge, and later reasoning will build on it.

Phrasing still matters, because the imperative and the second person invite commands. Guidance is therefore written in an impersonal voice, as statements of fact, apart from the steps of a procedure, whose natural form is the imperative. An actor is named only where who acts matters, and then in the third person, by role: "I" has no clear owner once a file is shared or has been edited by Claude.

Emphasis that marks a point as more pressing than the rest is avoided. It adds weight without understanding, so the point gets applied where it does not fit. Where a point is being missed, its reason is what carries weight.

## Principles, not examples

A point is stated as a principle, in general terms, and not through examples. Claude tends to follow the surface of an example and not its point, so an example narrows what Claude will consider. An example is warranted only where a principle cannot be pinned down in the abstract, and it is then marked as an illustration, not the limit of the principle.

A concrete detail is an example only where another would serve as well. One that cannot be swapped for another is a fact, and is knowledge.

## One concern, complete in itself

A piece of guidance is a file or, where a file's sections each stand alone, one such section. Files that a piece loads itself are part of that piece, not separate pieces. Each piece covers one concern and overlaps the others as little as possible, so that no question is decided in two places. Before writing or changing a piece, Claude therefore reads the guidance that is always loaded where the piece applies, and any piece loaded on demand whose description, or the paths it is loaded for, suggests the same concern.

Each piece also works alone. What stands beside it changes over time, so a piece does not assume that another is present and avoids pointing to one. Background it needs is restated, even where another piece already states it. This is not overlap. A piece decides a question when the question is its own concern, and that piece is where the answer is changed. Another piece that needs the answer for its own job restates it as background. Restated answers can drift apart, so a change to one is a reason to look for its copies and bring them into line, and where copies disagree the piece that decides the question prevails.

## Scope and placement

Each piece makes clear when it applies, by where it is placed or by saying so, because knowledge without a clear scope gets applied where it does not fit.

A piece belongs in the kind of file that loads it no more widely than it is needed, because text loaded in every session costs attention in the many sessions where it is irrelevant. Where a piece is loaded on demand, the description that triggers loading has a job of its own: it is read without the body, and has to make clear when the piece is needed. Loading on demand is itself not certain, so a point whose miss is costly may warrant a wider placement.

Guidance is not always the right place for a point, because prose only raises the odds that Claude acts as wanted. Where a single miss is unacceptable, Claude proposes a mechanism that enforces the point. Where no mechanism can enforce it, or the user declines one, the point is written in prose and the user is told that it is not guaranteed.

## Requests that depart from this standard

Where the user asks for a point that fails the test, or for anything else this standard advises against, the user wants to be challenged. Claude says why and waits for the user's answer before writing it. What the user still wants is written as asked. A point kept against the test is written with the reason the user gives, or as the user's wish, so that a later edit can see why it is there.

Wording the user supplies is taken as the substance of a point and written to this standard. Only wording the user wants kept word for word counts as a request that departs from it.

## Editing existing guidance

The session in which a piece was written is gone, and the text is all that remains of its author's intent. Two things follow.

- **An edited piece reads as a single whole.** A change is worked into the text where it belongs and is not appended to it. It takes the voice of that text, even where that is not the impersonal voice described here, and a piece is recast in another voice only when the user asks. The piece carries no trace of its history: a reader acts on the text as it stands, and notes about earlier versions spend attention on what no longer applies.
- **Each edit, however small, puts the section it touches to the test again**, or the whole file where the file has no sections. What Claude can do unaided changes, so a point that once earned its place may no longer do so, and the user wants such points cleared as they are found. Where the file is under version control, Claude removes such a point whole without asking first, since the user sees every change in the diff. Where it is not, Claude asks first. A point that fails only in part is reported, not trimmed. A point the user asks for in the current request is challenged as described above, not removed by the re-test.

  Two kinds of point stay. A point that the text gives as the user's wish has already been challenged, and stays unless a reason given with it has ceased to hold. A point that could be a choice of the user's or of whoever wrote it, and whose text states no reason, is kept and raised with the user, whatever reason Claude can infer for it, because preferences are exactly what looks unwarranted to Claude. A fact about the setting is not such a point. Once the user has answered, a point the user keeps is marked as the user's wish, with any reason the user gives, so that it is not raised again, and a point the user lets go is removed.

## Reviewing a draft

What Claude has written, new or edited, is reviewed before it is presented as finished. The user wants every review, even of a one-line change, done by a subagent new to the text, because the session in which the text was written supplies context that hides gaps from its author. The subagent is given this standard, the text, where the text is placed and, for an edit, which parts are new and which were removed, but nothing of the reasoning that produced the draft. A subagent given a text to review does the review itself, and so does Claude where no subagent is available, telling the user so.

The review judges how well the text does its job, not the positions it takes, which are the user's to choose. It asks four questions, and marks each finding as one that would change what Claude does on reading the text, or as polish.

- **Does it meet everything above?** Whether another piece already decides the same question is checked by the writer of the text, who has read those pieces, and not by the reviewer.
- **Will Claude follow it reliably?** The user wants this judged by introspection and not by trying the guidance out in real use: the reviewer considers how it would act on meeting the text cold in each kind of situation in which it would be loaded, and where the text is ambiguous or runs against a strong default.
- **Is it terse and complete?** Nothing can be removed without loss, and nothing needed is missing.
- **Can a human follow it?** People read and maintain guidance as well as Claude. The reader is assumed to be generally competent and to know Claude Code, and to have the project to hand but no knowledge of it or of the session in which the guidance was written. The structure therefore leads from one point to the next, shorthand coined in the session is avoided, and a term of the project is explained where the reader could not work it out from the project itself.

Claude weighs the findings, since a reviewer without the session is sometimes wrong and may argue with what the user has decided. In its own writing, Claude fixes the findings it accepts instead of listing them. Fixes are new text, so the review is repeated, each time by a subagent new to the text, until it finds nothing that Claude accepts as changing what Claude does, and polish is fixed without another round. Claude then presents the result along with any doubt that remains, including findings it rejected. Where Claude has edited an existing piece, only the change is its own writing: what the review finds in the rest is reported and not rewritten, and only the re-test of the section an edit touches removes anything.

Where the user asks Claude only to assess guidance that Claude did not write in the current session, Claude judges it against the same four questions itself, since no session of its own lies behind the text. With no writer to have checked for overlap, Claude first reads the other guidance as it would before writing a piece, then reports what it finds and changes nothing.
