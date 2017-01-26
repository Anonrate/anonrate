hi clear Normal
set bg&

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_colors = "anoncol"

hi cursorLine						guifg=NONE		guibg=#141414	cterm=none
hi cursorColumn						guifg=NONE		guibg=#141414	cterm=underline
hi normal							guifg=#eeeeee	guibg=#000000	cterm=none
hi colorColumn						guifg=NONE		guibg=#202020	cterm=none
hi lineNR							guifg=#ff0000	guibg=#202020	cterm=none
hi vertSplit						guifg=#000000	guibg=#202020	cterm=none


hi comment							guifg=#505050	guibg=NONE		cterm=none
hi link automakeComment1					comment
hi link automakeComment2					cCommentStart
hi cCommentStart					guifg=#404040	guibg=NONE		cterm=none
hi link cComment							comment
hi link cCommentL							cCommentStart
hi link cmakeComment						comment
hi link configComment						comment
hi link csComment							comment
hi link doxygenBody							comment
hi link doxygenBodyL						comment
hi link javaLineComment						comment
hi markdownUrl						guifg=#0000ee	guibg=NONE		cterm=none
hi link matlabComment						comment
hi link protoComment						comment
hi link pythonComment						comment
hi link rubyComment							comment
hi link shComment							comment
hi link vimLineComment						comment
" NOTE:	I think this color group may be spelt wrong...
hi link xmlProvessingDelim					cCommentStart
hi link yamlComment							comment

hi constant							guifg=#ffd000	guibg=NONE		cterm=none
hi cCharacter						guifg=#aa0000	guibg=NONE		cterm=none
hi link cppBoolean							cTagsDefinedName
hi link cppNumber							cNumber
hi link cIncluded							special
hi link cCppString							cString
hi cNumber							guifg=#ff0000	guibg=NONE		cterm=none
hi link cOctal								cNumber
hi cString							guifg=#904090	guibg=NONE		cterm=none
" NOTE:	Using 'cTagsDefined' because I seem to always use this for bools..
hi link csConstant							cTagsDefinedName
hi link csNumber							cNumber
hi link csString							cString
hi link dosBatchString						cString
hi link dosiniNumber						cNumber
hi link doxygenBOther						cCommentStart
hi link javaConstant						cTagsDefinedName
hi link javaNumber							cNumber
hi link javaString							cString
hi link jsonString							cString
hi link makeCommands						statement
hi link makeDString							cString
hi link matlabConstant						constant
hi link matlabFloat							constant
hi link protoFloat							cNumber
hi link protoString							cString
hi link pythonNumber						cNumber
hi link pythonString						cString
hi link pythonTripleQuotes					constant
hi link pythonQuotes						cString
hi link rubyBoolean							cTagsDefinedName
hi link rubyInteger							cNumber
" NOTE:	I really need to do something about variables.  The more I go into
" 			creating this scheme, the more I run into variables and global
" 			variables.
hi link rubyPsuedoVariable					constant
hi link rubyString							cString
" NOTE:	For some reason I think character is approprieate here as the name has
" 			'Symbol' in it.  It made me think of a character.
hi link rubySymnol							cCharacter
" NOTE:	This just seems to be a text entry that is inside a single quote.
hi link shCaseDoubleQuote					cString
hi link shDoubleQuote						cString
hi link shHereDoc							markdownHeadingRule
hi link shNumber							cNumber
hi link vimCommentString					cCommentStart
hi link vimNumber							cNumber
hi link vimString							cString
" NOTE:	May change this..
hi link vimSynRegPat						cPreCondit
hi link xmlString							cString


hi error						guifg=#ffffff	guibg=#ff0000	cterm=none
hi link automakMakeError					error
hi link markdownError						error

hi identifier					guifg=#408000	guibg=NONE		cterm=none
hi link cmakeArguments						cTagsMember
hi link configFunction						cTagsFunction
hi cTagsFunction				guifg=#006a40	guibg=NONE		cterm=none
hi link dosBatchImplicit					cTagsFunction
hi link dosBatchVariable					cDefine
hi link doxygenHtmlCh						identifier
" NOTE:	Should 'probably' match this up the 'Regular' one...  What I meant by
" 			that at the time of typing this scheme..  Is beyond me.  I think I
" 			may have been talking about the location..
hi link doxygenPrevL						identifier
" NOTE:	I have a feeling that this color group may actually be called
" 			'makeIndent", but I could be wrong..
hi link makeIdent							cTagsDefinedName
hi link makeTarget							cTagsFunction
" NOTE:	I'm getting mixed feelings on these 'Delimiter' things...
" 			But this was linked to 'cFormat' and I know I looked through
" 			everything to make sure that only groups that were applicable to
" 			the 'cFormat' color group were linked to 'cFormat'.  So this one
" 			may well be set applicabally.  (That last word wasn't a word..  Was
" 			it?..)
hi link matlabDelimiter						cFormat
hi link matlabFunction						cTagsFunction
hi link pythonBuiltIn						identifier
hi link pythonFunction						cTagsFunction
hi link rubyFunction						cTagsFunction
" TODO:	I want to change all variables to the 'cTagsGlobalVariable', just don't
" 			know what color or even if that group is set yet.
hi link rubyGlobalVariable					cTagsMember
" NOTE:	Don't know why I have this linked to 'cTagsDefinedName', but then again
" 			I also don't know exactly what this is highlighting.
hi link rubyPredefinedConstant				cTagsDefinedName
hi link shSetList							identifier
" TODO:	Not sure if 'cTagsGlobalVariable' is set, but may want to change all of
" 			the variable groups to that...
hi link shVariable							cTagsDefinedName
hi vimVar						guifg=#00ffff	guibg=NONE		cterm=none
hi link vimFuncName							cTagsFunction
" NOTE:	I have been noticing that I believe I have not been using 'All' the
" 			color groups that are derived from 'identifier' correctly.  They
" 			are more so groups that are used to separate different elements of
" 			text, but I have been using them sort of as labels, hense why I
" 			just linked 'xmlTagName' to 'cLabel'.
"
" 		Upon the recofnition of 'xmlTag', my thoughts have once again been
" 			changed.  I may have been under the influence of using 'identifier'
" 			as surroundings for such lables that are in the format of html.
"
" 		I believe I have used 'identifier' as surroundings for tags that are in
" 			doxygen html tags such as 'em'.
hi link EndTags								cLabel
hi link xmlTag								identifier
hi link xmlTagName							cLabel
hi link yamlBlockMappingKey					identifier

hi link noise								type
hi link jsonNoise							noise

hi preProc						guifg=#ff00ff	guibg=NONE		cterm=none
hi cDefine						guifg=#800080	guibg=NONE		cterm=none
hi link cInclude							preProc
hi cPreCondit					guifg=#8000c4	guibg=NONE		cterm=none
hi link cPreConditMatch						cPreCondit
hi link cOctalZero							cFormat
hi link csPreCondit							cPreCondit
hi link javaExternal						preProc
hi markdownHeadingRule			guifg=#008000	guibg=NONE		cterm=none
hi link protoSyntax							cDefine
hi link pythonDecorator						preProc
hi link pythonInclude						preProc
hi link rubyDefine							cDefine
hi link rubyInclude							preProc
hi link rubySharpBang						preProc
hi link shDereSimple						preProc
hi link vimUserAttrbKey						cTagsMember
" NOTE:	May be usful to add 'underline'.
hi vimCommentTitle				guifg=#008000	guibg=NONE		cterm=none

hi link quote								cString
hi link jsonQuote							quote

hi special						guifg=#800000	guibg=NONE		cterm=none
hi automakeClean				guifg=#00ff00	guibg=NONE		cterm=none
hi automakeExtra				guifg=#00ffff	guibg=NONE		cterm=none
hi link automakeOptions						cDefine
hi cFormat						guifg=#800000	guibg=NONE		cterm=underline
hi link cmakeEscaped						special
hi link configDelimiter						special
hi link cSpecial							special
hi link dosBatchSwitch						special
hi link dosiniHeader						title
hi link doxygenBriefSpecial					special
hi link doxygenBriefWord					cCommentStart
hi link doxygenCodeRegionSpecial			special
hi link doxygenComment						cCommentStart
hi link doxygenCommentContinue				cCommentStart
hi link doxygenCommentL						cCommentStart
hi link doxygenEndLinkSpecial				special
hi link doxygenHashSpecial					special
hi link doxygenOther						cCommentStart
hi link doxygenParam						cCommentStart
hi link doxygenPrev							identifier
hi link doxygenSpecial						special
hi link doxygenSpecialBoldWord				special
hi link doxygenSpecialCodeWord				special
hi link doxygenSpecialContinueComment		cCommentStart
hi link doxygenSpecialEmphasisedWord		special
hi doxygenStart					guifg=#404040	guibg=NONE		cterm=underline
hi link doxygenStartL						cCommentStart
hi link doxygenStartSkip					cCommentStart
hi link jsonBraces							special
hi link makeCmdNextLine						special
hi link makeNextLine						special
hi link makeSpecial							special
hi link matlapSemicolon						special
hi link pythonEscape						special
hi link rubyInterpolationDelimiter			cFormat
hi link rubyStringDelimiter					cString
hi link rubyStringEscape					special
hi link shSetOption							special
hi link shSpecial							special
" TODO:	Eventually have different colors set to at most each one if that made
" 			sense..
"
" NOTE:	I Brackets are already set.
"hi link vimBracket							identifier
hi link vimNotation							special
" NOTE:	May have this set already as well.  But going to keep it just incase.
hi link vimParenSep							special
hi link vimPatSepR							special
hi link vimSynContinue						special
hi link vimSynKeyOpt						special
hi link vimSynRegOpt						special
hi link yamlKeyValueDelimiter				special

hi statement					guifg=#0000ff	guibg=NONE		cterm=none
hi link automakePrimary						cOperator
hi link automakeSubdirs						cLabel
hi cConditional					guifg=#8000aa	guibg=NONE		cterm=none
hi link cLabel								underlined
hi link cmakeOperator						cOperator
hi link cmakeStatement						statement
hi link configKeyword						cTagsMember
hi link configOperator						cOperator
hi cOperator					guifg=#8040e0	guibg=NONE		cterm=none
hi link cppAccess							cTagsNamespace
hi link cppCast								cppModifier
hi link cppStatement						statement
hi cRepeat						guifg=#8060aa	guibg=NONE		cterm=none
hi link csConditional						cConditional
hi link csLabel								cLabel
hi link csRepeat							cRepeat
" NOTE:	It was a 'using', so to me it's a 'preProc'..
hi link csUnspecifiedStatement				preProc
hi link cStatement							statement
hi cTagsClass					guifg=#ffff00	guibg=NONE		cterm=none
hi cTagsDefinedName				guifg=#c400c4	guibg=NONE		cterm=none
hi cTagsEnumerationValue		guifg=#800040	guibg=NONE		cterm=none
hi cTagsEnumeratorName			guifg=#408000	guibg=NONE		cterm=none
hi cTagsMember					guifg=#ffb000	guibg=NONE		cterm=none
hi cTagsNamespace				guifg=#00ff00	guibg=NONE		cterm=none
" NOTE:	This group also has to do with the packages scopes that of java (ie:
" 			namespace), but it also is relavant to the function/methods to that
" 			of java which is why I set it to 'cTagsFunction.
hi link cTagsField							cTagsFunction
hi link cTagsGlobalVariable					statement
hi link cTagsImport							cTagsIncluded
hi link cTagsInterface						cTagsMember
hi link cTagsMethod							cTagsFunction
hi link cTagsPackage						cTagsStorageClass
hi link dosBatchConditional					cConditional
hi link dosBatchIfOperator					cOperator
hi link dosBatchLabel						cLabel
hi dosBatchOperator				guifg=#00ff00	guibg=NONE		cterm=none
hi link dosBatchStatement					statement
hi link doxygenBrief						comment
hi link doxygenBriefLine					comment
hi link doxygenHeaderLine					doxygenCodeWord
hi link doxygenHtmlCmd						statement
hi link doxygenLinkRest						doxygenCodeWord
hi link doxygenSmallSpecial					special
hi link doxygenSpecialCodeWord				special
hi link doxygenSpecialMultiLineDesc			comment
hi link doxygenSpecialTypeOneLineDesc		comment
hi link javaConditional						cConditional
" TODO:	This is my being lazy and rather creating a new color for the
"			exceptions, I am well aware that java uses switch case, so I am
"			just going to use 'cLabel' for the time being.
hi link javaExceptions						cLabel
" TODO:	I may change this to green because of the case of the keyword 'new'.
hi link javaOperator						cOperator
hi link javaRepeat							cRepeat
" TOD:	I have a bunch of mixed feelings as to what this should be..
" 			It could be 'cTagsMember', 'cLabel', maybe 'title'..  FML!
hi link jsonKeyword							cTagsMember
" NOTE:	Mixed feelings on this shit right here...
hi matlabArithmeticOperator		guifg=#008000	guibg=NONE		cterm=none
hi link matlapConditional					identifier
" NOTE:	This also includes the switch statement..
hi link matlabLabel							cLabel
hi link matlapOperator						cOperator
" NOTE:	May want to change this to a different kind of blue..  Unno..
" 			Well at first it was blue, but not it needs to be some sort of
" 			green.
hi link matlapRelationalOperator			identifier
hi link matlabStatement						statement
hi link protoDefault						cConditional
hi link protoExtend							statement
hi link protoRepeat							cRepeat
hi link protoType							cType
hi link pythonConditional					cConditional
" NOTE:	Probably want to color this manually..
hi link pythonException						cLabel
hi link pythonOperator						cOperator
hi link pythonStatement						statement
" NOTE:	This looks more as a case label..
hi link rubyConditional						cConditional
" NOTE:	This look more as a switch statememt
hi link rubyControl							statement
hi link rubyException						cLabel
hi shCaseIn						guifg=#008000	guibg=NONE		cterm=none
hi link shConditional						cConditional
" TODO:	May want to change this..
hi link shHereDoc01							title
hi link shLoop								cRepeat
hi link shOperator							cOperator
hi link shQuote								cString
hi link shRange								identifier
hi link shSet								cOperator
hi link shSnglCase							cLabel
hi link shStatement							statement
hi link vimCommand							statement
" TODO:	Once again, I want almost a different color for each one.
hi link vimHighlight						vimCommand
hi link vimLet								vimCommand
" NOTE:	Code example as of an 'if' statement.  May need further revision.
hi link vimNotFunc							cConditional
hi link vimOper								cOperator
hi link yamlBlockCollectionItemStart		statement

hi title						guifg=#00ff00	guibg=NONE		cterm=none
hi link markdownH1							title

hi todo							guifg=#ffff00	guibg=NONE		cterm=none
hi link cTodo								todo
hi link shTodo								todo

hi type							guifg=#ff4500	guibg=NONE		cterm=none
hi link cfgSection							title
hi link cmakeVariableValue					cTagsEnuermationValue
hi link cppModifier							type
hi link cppStorageClass						cStorageClass
hi link cppStructure						cStructure
hi link cppType								cType
hi link csModifier							cppModifier
hi link csStorage							cStorageClass
hi link csType								cType
hi link cTagsStructure						cStructure
hi link cTagsType							cType
hi cStorageClass				guifg=#ffd000	guibg=NONE		cterm=none
hi cStructure					guifg=#ff8000	guibg=NONE		cterm=none
hi cType						guifg=#ff6500	guibg=NONE		cterm=none
hi link dosinitLabel						cLabel
hi link doxygenParamDirection				identifier
" TODO:	I want this to match all the other classes, but I can't remember what
" 			group was sued.  So keep an eye out.
hi link javaClassDecl						type
hi link javaMethodDecl						cStructure
hi link javaScopeDecl						cppModifier
hi link javaStorageClass					cStorageClass
hi link javaType							cType
hi link protoStructure						cStructure
" TODO:	This needs to be verified that it is the same color that of what
" 			'typedef' is in 'C header'.
hi link protoTypedef						cTagsStructure
" NOTE:	Probably want to color this manually.
hi link pythonExceptions					type
" NOTE:	Despite the name 'constant', if the code example of which I based this
" 			color off of, it looks more as being identifiable as a namepsace.
hi link rubyConstant						cTagsNamespace
hi link vimGroupName						cStorageClass
hi link vimSynCase							cLabel
hi link vimSyntax							type
hi link vimSynReg							cTagsMember
hi link vimSynType							cType
" NOTE:	May be more appropriate to use 'cStorageClass'.
hi link xmlAttrib							type
" NOTE:	May want to use some sort of underline just because in the code example
" 			this is being based off of, there was no text...
hi link xmlProcessing						type

" NOTE:	'underlined' cannot be link towards anything..
hi underlined					guifg=#aa8000	guibg=NONE		cterm=none
hi link cmakeRegistry						underlined
hi link doxygenHashLink						underlined
hi link doxygenParamName					underlined
hi link markdwonLineText					underlined

" NOTE:	May link this towards 'cTagsGlobalVariable' as the name of this color
" 		group has 'System' in it.
hi link cmakeSystemVariable					cTagsDefinedName

hi doxygenBoldWord				guifg=#606060	guibg=NONE		cterm=bold
hi link doxygenCodeRegion					doxygenCodeWord
hi doxygenCodeWord				guifg=#606060	guibg=NONE		cterm=none
hi link doxygenEmphasisedWord				doxygenCodeWord
hi link doxygenHtmlItalic					doxygenCodeWord
hi link doxygeLinkWord						underlined
hi link doxygenFindBriefSpecial				special
hi link doxygenOtherLink					special

hi link javaParen							special
hi link javaParen1							special

hi jsonKeywordMatch				guifg=#00ff00	guibg=NONE		cterm=none

hi link markdownCodeBlock					cTagsDefinedName
" NOTE:	May be more appropriate to link towards 'identifier'..
hi link markdownLinkTextDelimiter			special
" NOTE:	May be more appropriate to link towards 'identifier'...
hi link markdownTextLinkDelimiter			special

" NOTE:	May be more appropriate to link towards 'identifier'...
hi link rubyArrayDelimiter					special
hi rubyArrayLiteral				guifg=#008000	guibg=NONE		cterm=none
" NOTE:	'cFormat' seems that it may be usable for here as well.
" TODO:	There have been a lot of expressions..  May want to come up with
" 			something new for them..  Actually i definietly do.
hi link rubyBlockExpression					special
hi link rubyCaseExpression					special
" NOTE:	'cFormat' seems to kind of be appropriate as well for this.
hi link rubyConditionalExpression			special
hi link rubyInterpolation					cTagsMember
hi link rubyLineContinuation				special
hi link rubyMethodBlock						cTagsMember

" NOTE:	I'm thinking this means 'escape'...
hi link shCaseEsac							special
" NOTE:	May switch the link to 'special'..
hi link shExpr								cFormat
" NOTE:	Yes I know it says 'for' in the group, but I do believe that it colored
" 			a lot more than just that..
hi link shFor								constant
hi shVarAssign					guifg=#00ff00	guibg=NONE		cterm=none

" NOTE:	I honestly have no idea on what to make this...  Was thinking some kind
" 			of really white but not so white dark white...
hi link vimClusterName						identifier
hi link vimGroupList						cTagsMember
hi link vimHiLink							special
hi link vimIsCommand						cDefine
hi link vimSynKeyRegion						preProc
hi link vimSynMathRegion					special
hi link vimSynRegion						preProc
hi link vimUsrCmd							cTagsDefinedName

hi xmlEqual						guifg=#00ff00	guibg=NONE		cterm=none

hi link yamlPlainScalr						normal
hi link vimGroup							type

syn match symParens			/[(){}/]/
hi link symParens							cDefine

syn match symBraces			/\[\|\]/
hi link symBraces							type

syn match symOperators		/[*|?:]/
hi link symOperators						cOperator

syn match symOutParam		/&/
hi link symOutParam							cFormat

syn match symAnd			/&&/
hi link symAnd								cOperator

syn match symPlusGreater	/[+>]/
hi symPlusGreater					guifg=#00ff00	guibg=NONE		cterm=none

syn match symSubtractLess	/[-<]/
hi symSubtractLess					guifg=#ff0000	guibg=NONE		cterm=none

syn match symPunctEqual		/[],;=]/
hi symPunctEqual					guifg=#ffff00	guibg=NONE		cterm=none
