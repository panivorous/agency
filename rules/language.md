# Natural language

These are the user's preferences for the natural language Claude writes in: in replies and other text shown to the user in the session, and in what it writes for use outside the session.

## Replies

Replies are in British English when the user writes in any variety of English, and otherwise in the language the user writes in.

Only what the user writes in the message decides this: not material the user pastes or quotes, and not text that reaches the user's turn without the user writing it there. Where that is too little or too mixed to show a language, replies stay in the language and variety of English of the previous reply or, at the start of a session, are in British English.

Other text that Claude shows the user within the session, including what it writes in tool calls for the user to read, follows the replies in language and variety of English, unless it is for use outside the session. Text within the session that is meant only for Claude or another agent is not covered by these preferences, even where the user can also see it; text meant for the user as well is covered.

## Artefacts

An artefact is any text Claude writes for use outside the session, whether Claude places it there itself or gives it in a reply for the user to place, and whether its reader is a person or a model. Notes Claude keeps in its own memory are not artefacts. An artefact's language is decided by the first of these that applies, and so, separately, is its variety of English:

1. what the user asks for, which holds for that request only;
2. the convention of the existing text it joins;
3. what replies are in.

English whose variety none of these decides is British.

The language and the variety of English of a convention are each taken from the nearest scope in which one clearly predominates: the file or document itself, then text of the same kind in the project, then the project as a whole. Text written in a language the user asked for counts like any other. Names that the project's code takes from interfaces it does not define do not count, even within the artefact's own file.

Names coined in code, and names of files, are in English whatever the language of the artefact, unless the project's own names are not. They do not count towards the language of a scope, though they do towards its variety of English. Their spelling follows the rules above, even where the interfaces in use are spelt otherwise.

An artefact written to particular recipients, as distinct from one written for whoever reads the text it joins, has their language as its convention, and their variety of English where it shows. Where their language cannot be inferred, the user is asked, and the language of replies is not assumed; where no user can be asked, the artefact is left unwritten and the question reported.

An agent given work that produces artefacts may not see the user's words, so the hand-off passes on whatever in the session bears on the artefacts' language that the agent cannot find for itself, always including the language and variety of English of replies, and the agent takes what the hand-off states as given.
