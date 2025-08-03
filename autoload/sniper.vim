let s:buffer_store = ['', '', '', '']

function! sniper#StoreBuffer(pos) abort
	if a:pos < 1 || a:pos > 4
		echoerr "Position must be between 1-4"
		return
	endif
	let s:buffer_store[a:pos - 1] = bufnr('%')
	echo "Stored buffer" bufnr('%') "in position" a:pos
endfunction

function! sniper#RecallBuffer(pos) abort
	if a:pos < 1 || a:pos > 4
		echoerr "Position must be between 1-4"
		return
	endif

	let target_buf = s:buffer_store[a:pos - 1]
	if empty(target_buf) || !bufexists(target_buf)
		echo "No buffer stored in position" a:pos
		return
	endif

	execute "buffer" target_buf
endfunction

function! sniper#ListBuffers() abort
	let output = ["Buffer list:", ""]
	for i in range(4)
		let bufnum = s:buffer_store[i]
		if !empty(bufnum) && bufexists(bufnum)
			let status = printf("[F%d] %s (%s) - %s",
						\ i+1,
						\ bufname(bufnum),
						\ bufnum,
						\ buflisted(bufnum) ? "LOADED" : "UNLOADED")
		else
			let status = printf("[F%d] <empty>", i+1)
		endif
		call add(output, status)
	endfor
	echo join(output, "\n")
endfunction
