" Vim syntax file fuer "LPC"- eine Mud-Programmiersprache
" by Adrian Holzwarth (holzw@web.de)
" based on a very early "c.vim"
" specially adapted for the syntax and efuns used by LDMud-3.5.x
" includes many lfuns defined by the base mudlib of the MUD MorgenGrauen.
"
" Updates by:
" * Christian Brunsch (chagall@benares.de)
" * Dominik Schäfer (github@zesstra.de)
"
" This work is licensed under a Creative Commons Attribution-ShareAlike 3.0
" Unported License: http://creativecommons.org/licenses/by-sa/3.0/

" Alte Syntax-Highlights loeschen...
syn clear

" gemischte lpc Schluesselworte, aehnlich C.
syn keyword lpcStatement	goto break return continue
syn keyword lpcLabel		case default
syn keyword lpcConditional	if else switch
syn keyword lpcRepeat		while for do foreach
syn keyword lpcMisc		inherit

" lpc - Efuns.

syn keyword lpcEfun abs and_bits acos add_action add_worth all_environment allocate m_allocate apply asin assoc atan atan2 attach_erq_demon baseof binary_message bind_lambda blueprint break_point break_string call_direct call_direct_resolved call_other call_out call_out_info call_resolved caller_stack caller_stack_depth capitalize cat catch ceil cident clear_bit clone_object clonep clones closureup command command_stack command_stack_depth convert_charset copy copy_bits copy_file cos count_bits create_wizard creator crypt ctime db_affected_rows db_close db_coldefs db_connect db_conv_string db_error db_exec db_fetch db_handles db_insert_id debug_info debug_message deep_copy deep_inventory deep_present destruct disable_commands domainshout dtime strftime dump_netdead ed efun set_environment enable_commands enable_telnet end_mccp_compress environment exlude_alist exclude_array exec execute_command exp expand_define explode export_uid extern_call file_size file_time filter filter_indices filter_objects find_call_out find_input_to find_living find_livings find_netdead find_object find_player first_inventory floatp floor funcall function_exists functionlist garbage_collection get_combine_charset get_connection_charset get_dir get_error_file get_eval_cost geteuid get_extra_wizinfo get_max_commands get_type_info getuid getuuid gmtime hash heart_beat_info hmac idna_stringprep idna_to_ascii idna_to_unicode implode include_list inherit_list input_to input_to_info insert_alist insert_alist.orig insert_alist.rej interactive intersect_alist intp invert_bits iso2ascii lambda last_bit last_instructions limited living load_name load_object localtime log log_file lower_case lowerchar lowerstring m_add make_shared_string map map_indices map_objects mappingp master match_command match_living max m_contains md5 md5_crypt m_delete member m_entry min m_indices mkdir mkmapping modify_command move_object m_reallocate m_values m_width negate net_connect new_explode next_bit next_inventory notify_fail object_info object_name objectp object_time old_explode or_bits order_alist parse_command.1 people pg_close pg_connect pg_conv_string pg_pending pg_query pointerp pow present present_clone previous_object printf process_call process_string program_name program_time query_actions query_command query_editing query_host_name query_idle query_udp_port query_input_pending query_ip_name query_ip_number query_limits query_load_average query_mccp query_mccp_stats query_mud_port query_next_reset query_notify_fail query_once_interactive query_shadowing query_snoop query_verb query_wiz_grp query_wiz_level quote raise_error random read_bytes read_file referencep regexp regexplode regexp_package regmatch regreplace remove_action remove_alist remove_call_out remove_input_to remove_interactive rename rename_object replace_personal replace_program restore_object restore_value reverse rm rmdir rusage rmember save_objects save_value say send_erq send_udp set_bit set_buffer_size set_combine_charset set_connection_charset set_driver_hook set_environment seteuid set_extra_wizinfo set_extra_wizinfo_size set_heart_beat set_is_wizard set_light set_limits set_living_name set_max_commands set_modify_command set_next_reset set_object_heart_beat set_prompt set_this_object set_this_player sgn sha1 shadow shout shutdown sin sizeof sl_close sl_exec sl_insert_id sl_open snoop sort_array sprintf sqrt sscanf start_mccp_compress stringp strlen strrstr strstr struct_info structp swap symbol_function symbolp symbol_variable tail tan tell_object tell_room terminal_colour test_bit this_interactive this_object this_player throw time time2string tls_available tls_check_certificate tls_deinit_connection tls_error tls_init_connection tls_query_connection_info tls_query_connection_state to_array to_float to_int to_object to_string to_struct trace traceprefix transfer transpose_array trim typeof unbound_lambda unique_array unmkmapping unquote unshadow update_actions upper_case upperstring uptime users utime walk_mapping widthof wizlist wizlist_info write write_bytes write_file secure_level receive_udp configure_driver nextgroup=lpcEfunParen
" lpc - Lfuns.

syn keyword lpcLfun	DefendFunc DoUnwear DoWear QueryDefend QueryDefendFunc QueryRemoveFunc QueryWearFunc QueryWorn RemoveFunc SetDefendFunc SetRemoveFunc SetWearFunc WearFunc do_unwear do_wear MayAddWeight locate_objects make_invlist present_objects query_weight_contents AddFixedObject QueryBuyFact SetBuyFact SetStorageRoom AddFuel AddPoison AddPursuer Attack CheckResistance Defend Identify InFight IsEnemy Kill PreventFollow QueryEnemies QueryFlaw RemovePursuer StopHuntFor TakeFlaw catch_msg catch_tell do_damage drink_alcohol drink_drink drink_soft eat_food heal_self reduce_hit_points AddDefaultSpell AddInfo AddSpell SetAttackChats SetChats create_default_npc DiscoverDoor DoorIsKnown QueryAllDoors QueryDoorKey QueryDoorStatus SetDoorStatus ShowDoors Teleport FindPotion Message extra_look modify_command AddDrink AddFood AddExit AddGuardedExit AddItem AddRoomCmd AddRoomMessage AddSmells AddSounds AddSpecialExit GetExits GetSmell GetSound NewDoor RemoveExit RemoveItem RemoveSmell RemoveSound RemoveSpecialExit clean_up exit int_long int_short AddAdjective AddClass AddCmd AddDetail AddTouchDetail RemoveTouchDetail AddId AddReadDetail AddSpecialDetail DeclAdj GetDetail MatList MatToString MaterialList PreventInsert Query QueryArticle QueryDu QueryGenderString QueryMaterial QueryMaterialGroup QueryName QueryPossPronoun QueryPronoun QueryProp QueryProperties RemoveAdjective RemoveClass RemoveCmd RemoveDetail RemoveId RemoveReadDetail RemoveSpecialDetail Set SetProp SetProperties ShowPropList SuggestArticle id is_class_member long move name Name query_real_name short AddFun AddMsg AddRoute Enter Halt Leave QueryArrived QueryPassengers QueryPosition RemoveRoute Start AddAmount AddPluralId AddSingularId IsUnit QueryCoinsPerUnits QueryGramsPerUnits SetCoinsPerUnits SetGramsPerUnits DoUnwield HitFunc QueryDamage SetHitFunc UnwieldFunc WieldFunc wield_me remove init create reset trigger_sensitive_inv trigger_sensitive_attack access_rights CannotSee QueryAttribute QueryAttributeOffset ModifySkill SetGuildSpellRate AddGuildSpell RemoveSounds RemoveSmells SelectEnemy buffer_hp buffer_sp reduce_food reduce_drink reduce_alcohol defuel_food defuel_drink defuel_alcohol check_and_update_timed_key command_me die CustomizeObject AddToMenu IsGuildMember AddSkill QuerySkill QuerySpell UseSpell InitialSkillAbility LearnSpell LearnSkill GuildRating NotifyGiveQuest BecomesNetDead BecomesNetAlive NotifyPlayerDeath FindVictim Flee More TryAttackSpell FindGroup QuerySkillAttribute TryDefaultAttackSpell SpellDefend GetTeleportDestRoom restore_spell_points QuerySkillAbility TestIgnore FindLiving AddExtraLook RemoveExtraLook SpellSuccess GetFValue GetFValueO GetFactor GetValue GetOffset Learn QueryEnemy AddExp QueryMoney AddMoney PayIn WithDraw ModifySkillAttribute UseSkill find_obs drop_obj pick_obj give_obj put_obj FindEnemyVictim FindLivingVictim DoFindEnemyVictim FindNearEnemyVictim FindFarEnemyVictim FindDistantEnemyVictim TryGlobalAttackSpell GetRandFValueO TeamMembers TeamPrefix IsTeamLeader IsTeamMove TeamMembers PresentPosition PresentTeamPositions PresentTeamRows PresentEnemyRows SelectNearEnemy SelectFarEnemy InsertEnemyTeam AssocMember DeAssocMember TeamFlee InformRowChange FindDistantGroup FindDistantGroups Damage QueryArmourByType QueryPacify SetSpellFatigue CheckSpellFatigue DeleteSpellFatigue nextgroup=lpcLfunParen

syn keyword lpcType		void int status array string  object
syn keyword lpcType		closure float mapping mixed
syn keyword lpcStorageClass	static nosave private varargs private extern
syn keyword lpcStorageClass	nomask public protected deprecated
syn keyword lpcTodo contained	TODO FIXME XXX HIER BUG
syn keyword lpcBool 		true false TRUE FALSE ERFOLG MISSERFOLG

" obsolete efuns und lfuns anmeckern
syn keyword lpcObsolete add_verb add_xverb, allocate_mapping copy_mapping creator creator_file define_include_dirs efun308 extract file_name filter_array filter_array.eng filter_mapping get_root_uid initialisation is_clone m_sizeof m_width map_array map_mapping mapping_contains member_array parse_command query_imp_port receive_imp send_imp set_auto_include_string slice_array paramove AddHpHook NotifyHpChange RemoveHpHook ModifySkillAttributeOld nextgroup=lpcEfunParen

" Zeichenketten und Charakter-Konstanten, groesstenteils der C-Syntaxdatei
" entnommen. Sehr praktisch ist die Sonderbehandlung von \n u.ae.

syn match lpcSpecial contained	"\\[0-7][0-7][0-7]\=\|\\."
syn region lpcString	start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=lpcSpecial
syn match lpcCharacter		"'[^\\]'"
syn match lpcSpecialCharacter	"'\\.'"
syn match lpcSpecialCharacter	"'\\[0-7][0-7]'"
syn match lpcSpecialCharacter	"'\\[0-7][0-7][0-7]'"
"syn match lpcClosure            "\#'"
syn match lpcClosure "#'\(\h\w*::\)\=\h\w*"
syn match lpcClosure "#'([[{]"
syn match lpcClosure "#'\[<\?\.\.<\?\]\?"
syn match lpcClosure "#'[[,?]"
syn match lpcClosure "#'[-=<>+*/!%&|^]=\?"
syn match lpcClosure "#'&&"
syn match lpcClosure "#'||"
syn match lpcClosure "#'!?"
syn match lpcClosure "'\h\w*\>"

" Klammern, die zu Efuns und Lfuns gehoeren, sollen wie die entsprechenden
" Funktionen gehilitet werden. Ein Leerzeichen zwischen Funktionsnamen und
" der oeffnenden Klammer allerdings ruiniert diesen Effekt. Man KOENNTE das
" mit start="\s*(" korrigieren, handelt sich damit aber anderweitig Aerger
" ein: Die normalen Parenthesis (lpcParen3) wollen dann nimmer.

syn region lpcEfunParen contained transparent matchgroup=lpcEfun start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcLfunParen
syn region lpcLfunParen contained transparent matchgroup=lpcLfun start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcEfunParen

" Klammern pruefen und falsch gesetzte bemaengeln.

syn region lpcParen1		transparent start='{' end='}' contains=ALLBUT,lpcParenError1,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
syn region lpcParen2		transparent start='\[' end='\]' contains=ALLBUT,lpcParenError2,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
syn region lpcParen3		transparent start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcEfunParen,lpcLfunParen
syn match lpcParenError1		"}"
syn match lpcParenError2		"\]"
syn match lpcParenError3		")"


"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match lpcNumber		"\<[0-9]\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syn match lpcFloat		"\<[0-9]\+\.[0-9]*\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syn match lpcFloat		"\.[0-9]\+\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match lpcFloat		"\<[0-9]\+e[-+]\=[0-9]\+[fl]\=\>"
"hex number
syn match lpcNumber		"\<0x[0-9a-f]\+\(u\=l\=\|lu\)\>"
"syn match lpcIdentifier	"\<[a-z_][a-z0-9_]*\>"
syn case match
" flag an octal number with wrong digits
syn match lpcOctalError		"\<0[0-7]*[89]"


if exists("c_comment_strings")
  " A comment can contain cString, cCharacter and cNumber.
  " But a "*/" inside a cString in a cComment DOES end the comment!  So we
  " need to use a special type of cString: cCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syntax match lpcCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syntax region lpcCommentString	contained start=+"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=lpcSpecial,lpcCommentSkip
  syntax region lpcComment2String	contained start=+"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=lpcSpecial
  syntax region lpcComment	start="/\*" end="\*/" contains=lpcTodo,lpcCommentString,lpcCharacter,lpcNumber,lpcFloat
  syntax match  lpcCommentb	"//.*" contains=lpcTodo,lpcComment2String,lpcCharacter,lpcNumber
else
  syn region lpcComment		start="/\*" end="\*/" contains=lpcTodo
  syn match lpcCommentb		"//.*" contains=lpcTodo
endif
syntax match lpcCommentError	"\*/"

syn region lpcPreCondit	start="^\s*#\s*\(if\>\|ifdef\>\|ifndef\>\|elif\>\|else\>\|endif\>\)" skip="\\$" end="$" contains=lpcComment,lpcString,lpcCharacter,lpcNumber,lpcCommentError

" Erlaubt auch ´#include SYS "own.h"´
syn region lpcIncluded contained start=+[A-Z ]*"+ skip=+\\\\\|\\"+ end=+"+
syn region lpcIncluded contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match lpcIncluded contained "<[^>]*>"

syn match lpcInclude		"^\s*#\s*include\>\s*["<A-Z]" contains=lpcIncluded

"syn match lpcLineSkip	"\\$"
syn region lpcDefine		start="^\s*#\s*\(define\>\|undef\>\)" skip="\\$" end="$" contains=ALLBUT,lpcPreCondit,lpcIncluded,lpcInclude,lpcDefine,lpcInParen

" Nur die moeglichen #pragmas zulassen:
syn region lpcPreProc		start="^\s*#\s*pragma \(strong_types\|strict_types\|combine_strings\|verbose_errors\|save_types\|no_combine_strings\|no_clone\|no_shadow\|no_inherit\|warn_deprecated\|warn_empty_casts\|warn_missing_return\|warn_function_inconsistent\|range_check\|pedantic\|rtt_checks\)\>" skip="\\$" end="$" contains=ALLBUT,lpcPreCondit,lpcInclude,lpcDefine,lpcInParen,lpcPreProc

" Highlight User Labels
syn region	lpcMulti		transparent start='?' end=':' contains=ALLBUT,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
" Avoid matching foo::bar() in C++ by requiring that the next char is not ':'
syn match	lpcUserLabel	"^\s*\I\i*\s*:$"
syn match	lpcUserLabel	";\s*\I\i*\s*:$"ms=s+1
syn match	lpcUserLabel	"^\s*\I\i*\s*:[^:]"me=e-1
syn match	lpcUserLabel	";\s*\I\i*\s*:[^:]"ms=s+1,me=e-1

" Avoid recognizing most bitfields as labels
syn match	lpcBitField	"^\s*\I\i*\s*:\s*[1-9]"me=e-1
syn match	lpcBitField	";\s*\I\i*\s*:\s*[1-9]"me=e-1



if !exists("lpc_minlines")
  let lpc_minlines = 100         " Default-Voraussicht
endif
exec "syn sync ccomment lpcComment minlines=" . lpc_minlines

if !exists("did_lpc_syntax_inits")
  let did_lpc_syntax_inits = 1
  hi link lpcLabel		Label
  hi link lpcUserLabel		Label
  hi link lpcRepeat		Repeat
  hi link lpcStatement		Statement
  hi link lpcCharacter		Character
  hi link lpcSpecial    	Special
  hi link lpcSpecialCharacter 	lpcSpecial
  hi link lpcNumber		Number
  hi link lpcFloat		Float
  hi link lpcOctalError		lpcError
  hi link lpcParenError1	lpcError
  hi link lpcParenError2	lpcError
  hi link lpcParenError3	lpcError
  hi link lpcInParen		lpcError
  hi link lpcCommentError	lpcError
  hi link lpcClosure 		Label
  hi lpcEfun	term=NONE ctermfg=darkcyan gui=NONE guifg=Darkcyan
  hi lpcLfun	term=NONE ctermfg=darkgreen gui=NONE guifg=Darkgreen
	hi lpcObsolete	term=NONE ctermbg=DarkRed gui=NONE guibg=DarkRed
  hi link lpcStorageClass	StorageClass
  hi link lpcType		Type
  hi link lpcInclude		Include
  hi link lpcPreProc		PreProc
  hi link lpcDefine		Macro
  hi link lpcMisc		lpcConditional
  hi link lpcIncluded		lpcString
  hi link lpcError		Error
  hi link lpcPreCondit		PreCondit
  hi link lpcCommentError	lpcError
  hi link lpcCommentString 	lpcString
  hi link lpcComment2String 	lpcString
  hi link lpcCommentSkip	lpcComment
  hi link lpcConditional        Conditional
  hi link lpcString		String
  hi link lpcComment	Comment
  hi link lpcCommentb           Comment
  hi link lpcTodo		Todo
  hi link lpcIdentifier		Identifier
  hi link lpcBool		Boolean
endif

let b:current_syntax = "lpc"

" vim: ts=2
