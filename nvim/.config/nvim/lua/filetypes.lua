-- Treat Angular Component HTML files as pure HTML for conform formatting
vim.filetype.add({
	pattern = {
		[".*%.component%.html"] = "html",
	},
})
