import cpp

from MacroInvocation invocation
where invocation.getMacroName().regexpMatch("ntohs|ntohl|ntohll")
select invocation.getExpr()
