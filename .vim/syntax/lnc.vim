" Vim syntax file
" Language: Links and nodes configuration file
" Maintainer: Stefan Büttner
" Latest Revision: 03.07.2019

if exists("b:current_syntax")
  finish
endif

syn match lncComment "#.*$"
syn match lncVariable "%([a-zA-Z ]\+)"

" Keywords
syn keyword lncRegions instance node_map push_name_prefix pop_name_prefix process_template process defines
syn keyword lncCommands node command environment pass_environment add_message_definition_dir flags start_before depends_on depends_on_restart start_on_ready ready_regex ready_time warning_regex warning_msg change_directory policy priority affinity auto_restart_interval start_tool output_buffer_size arch max_queued_output_bytes vte_color_style output_logfile_size_limit output_logfile_keep_count output_logfile line_highlight_fg_color line_highlight_bg_color bugtracker_url mantis_project_id map_service stack_size map_topic notebook change_user_to max_output_frequency documentation output_encoding term_timeout term_signal max_output_lines line_highlight_regexes set_resource_limits provides use_template pipe_include
syn keyword lncFlags forward_x11 forward_x11_to_gui no_error_on_stop no_error_on_successful_stop dont_stop_dependent_procs no_skip_display blocking_output no_host_default_templates no_default_templates disable_gdb_run disable_gdb_rerun no_vte use_vte dont_translate_backspace_to_delete start_in_shell disable_stop remove_color_codes no_pty no_state_led no_warning_window no_ln_ld_library_path set_user_and_home
syn keyword lncConstants true false
syn region lncString start='"' end='"' contains=lncVariable

let b:current_syntax = "lnc"

hi def link lncRegions   Type
hi def link lncComment   Comment
hi def link lncCommands  Statement
hi def link lncFlags     Constant
hi def link lncVariable  Constant
hi def link lncConstants Constant
hi def link lncString    Constant
