/// Admin module - Manages admin capabilities and contract upgrades
#[allow(unused_variable)]
module veheadal::admin {

    use veheadal::staking_pool::StakingPool;

    public struct AdminCap has key, store {
        id: UID,
        version: u64
    }

    public struct AdminCapTransferEvent has copy, drop {
        from: address,
        to: address
    }

    public struct MinStakeAmountUpdatedEvent has copy, drop {
        admin: address,
        amount: u64
    }

    public struct PoolVersionUpdatedEvent has copy, drop {
        admin: address,
        old_version: u64,
        new_version: u64
    }

    public struct ADMIN has drop {}

    /// `ACL` is used by the offchain programs.
    public struct ACL has store, key {
        id: UID,
        minor_signs: vector<address>,
        breakers: vector<address>,
        robots: vector<address>,
    }

    fun init(_: ADMIN, ctx: &mut TxContext) {
        abort 0
    }

    public entry fun set_min_stake_amount<T>(
        _: &AdminCap,
        pool: &mut StakingPool<T>,
        amount: u64,
        ctx: &TxContext
    ) {
        abort 0
    }

    public entry fun set_min_stake_amount_v2<T>(
        acl: &mut ACL,
        pool: &mut StakingPool<T>,
        amount: u64,
        ctx: &TxContext
    ) {
        abort 0
    }

    /// Update the pool version to the current program version
    /// This function should be called after a contract upgrade
    /// Only the admin can call this function
    public entry fun update_pool_version<T>(
        _: &AdminCap,
        pool: &mut StakingPool<T>,
        ctx: &TxContext
    ) {
        abort 0
    }

    public entry fun transfer_admin_cap(
        admin_cap: AdminCap,
        new_admin: address,
        ctx: &mut TxContext
    ) {
        abort 0
    }

    public entry fun share_acl(_: &AdminCap, ctx: &mut TxContext) {
        abort 0
    }

    public entry fun add_minor_signs_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
        abort 0
    }

    public entry fun del_minor_signs(_: &AdminCap, acl: &mut ACL, account: address) {
        abort 0
    }

    public(package) fun grant_admin_cap(user: address, ctx: &mut TxContext) {
        abort 0
    }

    public fun get_version(admin_cap: &AdminCap): u64 {
        abort 0
    }
}

