address admin {

module CoinSwap {
    use std::signer;
    use std::event;
    use std::bcs;

    use aptos_framework::timestamp;
    use aptos_framework::coin;

    use admin::Compare;
    use admin::U256::{Self, U256};
    use admin::SafeMath;
    use admin::FixedPoint128;
    use admin::CoinSwapConfig;

    struct LiquidityToken<phantom X, phantom Y> has key, store, copy, drop {}

    struct LiquidityTokenCapability<phantom X, phantom Y> has key, store {
        mint: coin::MintCapability<LiquidityToken<X, Y>>,
        burn: coin::BurnCapability<LiquidityToken<X, Y>>,
    }
}
}