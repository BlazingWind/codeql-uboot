import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation invocation |
            invocation.getMacroName().regexpMatch("ntohs|ntohl|ntohll") |
            invocation.getExpr() = this)
    }
}

from NetworkByteSwap n
select n, "Network Byte Swap"