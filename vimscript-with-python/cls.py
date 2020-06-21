import vim

def clearWhitespace():
    try:
        vim.command("%s/\s\+$//g")
    except vim.error:
        return

    return
