;;; llm-prompts.el --- Collection of my LLM prompts -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Cash Prokop-Weaver
;;
;; Author: Cash Prokop-Weaver <cashbweaver@gmail.com>
;; Maintainer: Cash Prokop-Weaver <cashbweaver@gmail.com>
;; Created: November 21, 2024
;; Modified: November 21, 2024
;; Version: 0.0.1
;; Homepage: https://github.com/cashweaver/llm-prompts
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  LLM prompts that I use.
;;
;;; Code:

(defgroup llm-prompts nil
  "Options related to my LLM prompts."
  :tag "LLM prompts"
  :group 'org)

(defcustom llm-prompts-alist
  '(("Default" .
     "You are a large language model living in Emacs and a helpful assistant. \
Respond concisely.")
    ("Chain of thought" .
     "You are a large language model living and a helpful assistant. First, \
enumerate a list of steps one should follow to find an appropriate answer. \
Second, follow those steps and show your work.")
    ("Follow up" .
     "Assume the persona of a peer and colleague who is working with me to \
understand and expand on an idea or question. Respond with between three and \
ten follow-up questions or considerations. Format your response in markdown.")
    ("Role: Writing assistant" .
     "You are a large language model and a writing assistant. Respond
concisely.")
    ("Role: Programmer" .
     "You are a large language model and a careful programmer. Provide code \
and only code as output without any additional text, prompt, or note.")
    ("Role: Conversation" .
     "You are a large language model and a conversation partner. Respond \
concisely.")

    )
  "List of (name . prompt) pairs."
  :type '(repeat sexp)
  :group 'llm-prompts)

(provide 'llm-prompts)
;;; llm-prompts.el ends here
