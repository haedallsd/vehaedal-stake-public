#[allow(unused_variable, unused_type_parameter)]
module veheadal::Events {

    use std::type_name::TypeName;

    /// Event emitted when a user stakes tokens (either new stake or adds to existing)
    public struct StakeEvent<phantom T> has copy, drop {
        staker: address,
        token_id: Option<ID>,
        amount: u64,
        lock_end_time: u64,
        veheadal_amount: u64,
        token_type: TypeName,
        is_decaying: bool,
        lock_weeks: u64,
    }
    
    /// Event emitted when a user unstakes tokens
    public struct UnstakeEvent<phantom T> has copy, drop {
        staker: address,
        token_id: ID,
        amount: u64,
        token_type: TypeName,
    }
    
    /// Event emitted when a user adds tokens to an existing stake
    public struct StakeAddedEvent<phantom T> has copy, drop {
        staker: address,
        token_id: ID,
        additional_amount: u64,
        new_veheadal_amount: u64,
        token_type: TypeName,
    }

    /// Event emitted when a user extends lock
    public struct ExtendLockEvent<phantom T> has copy, drop {
        staker: address,
        token_id: ID,
        lock_end_time: u64,
        new_veheadal_amount: u64,
        additional_weeks: u64,
        token_type: TypeName,
    }
    
    /// Event emitted when a user claims unstaked tokens
    public struct ClaimUnstakedEvent<phantom T> has copy, drop {
        staker: address,
        amount: u64,
        token_type: TypeName,
        token_id: Option<ID>,
    }
    
    /// Event emitted when a user starts decay mode for their veHAEDAL token
    public struct UserDecayStartedEvent<phantom T> has copy, drop {
        staker: address,
        token_id: ID,
        decay_weeks: u64,
        new_veheadal_amount: u64,
        token_type: TypeName,
    }
    
    /// Event emitted when a user stops decay mode for their veHAEDAL token
    public struct UserDecayStoppedEvent<phantom T> has copy, drop {
        staker: address,
        token_id: ID,
        lock_weeks: u64,
        new_veheadal_amount: u64,
        token_type: TypeName,
    }

    public fun emit_stake_event<T>(
        staker: address,
        token_id: Option<ID>,
        amount: u64,
        lock_end_time: u64,
        veheadal_amount: u64,
        is_decaying: bool,
        lock_weeks: u64,
    ) {
        abort 0
    }

    public fun emit_unstake_event<T>(
        staker: address,
        token_id: ID,
        amount: u64
    ) {
        abort 0
    }

    public fun emit_stake_added_event<T>(
        staker: address,
        token_id: ID,
        additional_amount: u64,
        new_veheadal_amount: u64
    ) {
        abort 0
    }

    public fun emit_extend_lock_event<T>(
        staker: address,
        token_id: ID,
        lock_end_time: u64,
        new_veheadal_amount: u64,
        additional_weeks: u64,
    ) {
        abort 0
    }

    public fun emit_claim_unstaked_event<T>(
        staker: address,
        amount: u64,
        token_id: Option<ID>,
    ) {
        abort 0
    }

    public fun emit_user_decay_started_event<T>(
        staker: address,
        token_id: ID,
        decay_weeks: u64,
        new_veheadal_amount: u64
    ) {
        abort 0
    }
    
    public fun emit_user_decay_stopped_event<T>(
        staker: address,
        token_id: ID,
        lock_weeks: u64,
        new_veheadal_amount: u64
    ) {
        abort 0
    }
}

