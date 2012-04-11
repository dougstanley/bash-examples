#!/bin/bash
ls () {
	echo "ls function, not ls command"
}

export () {
	echo "export function not export builtin"
}

ls

export
