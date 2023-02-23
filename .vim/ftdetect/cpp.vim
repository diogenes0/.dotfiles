au FileType cpp {
	b:ale_linters = ['clangd', 'clang-format', 'clangtidy', 'cppcheck', 'cpplint']
	b:ale_cpp_cpplint_options = '--filter=-legal/copyright,-build/c++11'

	set filetype=cpp.doxygen

	set colorcolumn=80
}
