(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i64) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 8)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 2)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "log" "log.log" (func $~lib/matchstick-as/log/log.log (type 3)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/index/mockFunction (type 9)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "log.log" (func $~lib/@graphprotocol/graph-ts/index/log.log (type 3)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 1)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 4)))
  (import "numbers" "bigInt.plus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus (type 1)))
  (import "numbers" "bigInt.minus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus (type 1)))
  (import "numbers" "bigDecimal.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString (type 0)))
  (import "numbers" "bigDecimal.dividedBy" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy (type 1)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 12)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 4)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 3)))
  (import "assert" "_assert.notInStore" (func $~lib/matchstick-as/assembly/assert/_assert.notInStore (type 1)))
  (import "index" "store.loadRelated" (func $~lib/@graphprotocol/graph-ts/index/store.loadRelated (type 6)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1776
      i32.const 1840
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 1
    i32.const 4
    i32.add
    local.tee 2
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 0
    i32.add
    local.tee 3
    memory.size
    local.tee 4
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 5
    i32.gt_u
    if  ;; label = @1
      local.get 4
      local.get 3
      local.get 5
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 5
      local.get 4
      local.get 5
      i32.gt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 5
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 3
    global.set $~lib/rt/stub/offset
    local.get 1
    local.get 0
    i32.store
    local.get 2)
  (func $~lib/rt/stub/__new (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1776
      i32.const 1840
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 3) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 1
      i32.add
      local.tee 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 2
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 2
      i32.add
      local.set 0
      local.get 1
      local.get 2
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 5
      call $~lib/rt/stub/__new
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 7
      call $~lib/rt/stub/__new
      local.set 0
    end
    local.get 0
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 12
      call $~lib/rt/stub/__new
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 13
      call $~lib/rt/stub/__new
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 2
      call $~lib/rt/stub/__new
      local.set 0
    end
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1680
      i32.const 2016
      i32.const 19
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 4) (param i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.get 1
    i32.le_u
    if  ;; label = @1
      i32.const 2080
      i32.const 2144
      i32.const 177
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/util/memory/memcpy (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load
        i32.store
        local.get 0
        local.get 1
        i32.load offset=4
        i32.store offset=4
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load16_u
        i32.store16
        local.get 1
        i32.const 2
        i32.add
        local.set 1
        local.get 0
        i32.const 2
        i32.add
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 2
            i32.add
            local.tee 4
            i32.const 1
            i32.add
            local.set 1
            local.get 3
            local.get 4
            i32.load8_u
            i32.store8
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 1
                i32.load offset=5
                local.tee 4
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                local.get 4
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 3
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 4
          i32.const 2
          i32.add
          local.set 1
          local.get 3
          local.get 4
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 1
              i32.load offset=6
              local.tee 4
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              local.get 4
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 1
            i32.load offset=7
            local.tee 4
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 3
      i32.load8_u
      i32.store8
      local.get 3
      i32.const 2
      i32.add
      local.set 1
      local.get 0
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.set 0
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 3
      i32.load8_u
      i32.store8
      local.get 3
      i32.const 2
      i32.add
      local.set 1
      local.get 0
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.set 0
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.get 1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      local.get 1
      i32.const 2
      i32.add
      local.tee 3
      i32.load8_u
      i32.store8
      local.get 3
      i32.const 2
      i32.add
      local.set 1
      local.get 0
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get 0
      i32.const 2
      i32.add
      local.set 0
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 3
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 4
      i32.const 2
      i32.add
      local.set 1
      local.get 3
      local.get 4
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 4) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/string/String#concat (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    i32.add
    local.tee 4
    i32.eqz
    if  ;; label = @1
      i32.const 2512
      return
    end
    local.get 4
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 4
    local.get 0
    local.get 2
    call $~lib/memory/memory.copy
    local.get 2
    local.get 4
    i32.add
    local.get 1
    local.get 3
    call $~lib/memory/memory.copy
    local.get 4)
  (func $~lib/string/String#charAt (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get 1
    i32.le_u
    if  ;; label = @1
      i32.const 2512
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    i32.const 1
    i32.shl
    local.get 0
    i32.add
    i32.load16_u
    i32.store16
    local.get 2)
  (func $~lib/string/String.__eq (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 2
    i32.const 7
    i32.and
    local.get 1
    i32.const 7
    i32.and
    i32.or
    i32.eqz
    local.get 3
    local.tee 0
    i32.const 4
    i32.ge_u
    i32.and
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i64.load
        local.get 1
        i64.load
        i64.eq
        if  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.sub
          local.tee 0
          i32.const 4
          i32.ge_u
          br_if 1 (;@2;)
        end
      end
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.sub
        local.set 0
        local.get 3
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 5
          local.get 1
          i32.load16_u
          local.tee 4
          i32.sub
          local.set 3
          local.get 4
          local.get 5
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
      i32.const 0
      local.set 3
    end
    local.get 3
    i32.eqz)
  (func $~lib/string/String#substr (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 2
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 3
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.add
        local.tee 1
        i32.const 0
        local.get 1
        i32.const 0
        i32.gt_s
        select
        local.set 1
      end
      local.get 1
    end
    i32.sub
    local.tee 3
    local.get 2
    local.get 3
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee 2
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 2512
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 3
    local.get 1
    i32.const 1
    i32.shl
    local.get 0
    i32.add
    local.get 2
    call $~lib/memory/memory.copy
    local.get 3)
  (func $~lib/util/string/strtol<i32> (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 1
    i32.load16_u
    local.set 0
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 128
        i32.or
        i32.const 160
        i32.eq
        local.get 0
        i32.const 9
        i32.sub
        i32.const 4
        i32.le_u
        i32.or
        local.get 0
        i32.const 5760
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const 1
        local.get 0
        i32.const -8192
        i32.add
        i32.const 10
        i32.le_u
        br_if 0 (;@2;)
        drop
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 5760
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8232
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8233
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8239
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8287
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 12288
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 65279
            i32.eq
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 0
      end
      if  ;; label = @2
        local.get 1
        i32.const 2
        i32.add
        local.tee 1
        i32.load16_u
        local.set 0
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 1
    local.set 4
    local.get 0
    i32.const 43
    i32.eq
    local.get 0
    i32.const 45
    i32.eq
    i32.or
    if (result i32)  ;; label = @1
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      i32.const -1
      i32.const 1
      local.get 0
      i32.const 45
      i32.eq
      select
      local.set 4
      local.get 1
      i32.const 2
      i32.add
      local.tee 1
      i32.load16_u
    else
      local.get 0
    end
    i32.const 48
    i32.eq
    local.get 2
    i32.const 2
    i32.gt_s
    i32.and
    if (result i32)  ;; label = @1
      local.get 1
      i32.load16_u offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
    else
      i32.const 0
    end
    if  ;; label = @1
      local.get 2
      i32.const 2
      i32.sub
      local.set 2
      local.get 1
      i32.const 4
      i32.add
      local.set 1
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.tee 0
        i32.const 1
        i32.sub
        local.set 2
        local.get 0
        if  ;; label = @3
          local.get 1
          i32.load16_u
          local.tee 0
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 48
            i32.sub
          else
            local.get 0
            i32.const 65
            i32.sub
            i32.const 25
            i32.le_u
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 55
              i32.sub
            else
              local.get 0
              i32.const 87
              i32.sub
              local.get 0
              local.get 0
              i32.const 97
              i32.sub
              i32.const 25
              i32.le_u
              select
            end
          end
          local.tee 0
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 4
          i32.shl
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          br 2 (;@1;)
        end
      end
    end
    local.get 3
    local.get 4
    i32.mul)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.and
    if  ;; label = @1
      i32.const 2480
      local.get 0
      call $~lib/string/String#concat
      i32.const 2544
      call $~lib/string/String#concat
      i32.const 2608
      i32.const 75
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 2
    i32.ge_u
    if (result i32)  ;; label = @1
      local.get 0
      i32.const 0
      call $~lib/string/String#charAt
      i32.const 2736
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      local.get 0
      i32.const 1
      call $~lib/string/String#charAt
      i32.const 2768
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.const 2147483647
      call $~lib/string/String#substr
      local.set 0
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set 2
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 2
    loop  ;; label = @1
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get 1
      i32.gt_s
      if  ;; label = @2
        local.get 2
        local.get 1
        i32.const 2
        i32.div_s
        local.get 0
        local.get 1
        i32.const 2
        call $~lib/string/String#substr
        call $~lib/util/string/strtol<i32>
        i32.extend8_s
        call $~lib/typedarray/Uint8Array#__set
        local.get 1
        i32.const 2
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 2)
  (func $~lib/rt/__newArray (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 4
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/typedarray/Uint8Array#__get (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load offset=8
    local.get 1
    i32.le_u
    if  ;; label = @1
      i32.const 2080
      i32.const 2144
      i32.const 166
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    i32.load8_u)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 255
    i32.const 0
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.gt_s
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 0
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.sub
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.eq
    else
      local.get 1
    end
    select
    local.set 3
    i32.const 4
    local.set 1
    loop  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 1
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call $~lib/typedarray/Uint8Array#__get
        local.get 3
        i32.ne
        if  ;; label = @3
          i32.const 3616
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          call $~lib/string/String#concat
          i32.const 3680
          call $~lib/string/String#concat
          i32.const 2608
          i32.const 150
          i32.const 9
          call $~lib/builtins/abort
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 3
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 3
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 3
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 3
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.lt_s
    select
    i32.load offset=8
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_s
      if  ;; label = @2
        local.get 1
        local.get 2
        local.get 0
        local.get 2
        call $~lib/typedarray/Uint8Array#__get
        call $~lib/typedarray/Uint8Array#__set
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    local.get 1
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.or)
  (func $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32> (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.tee 3
    i32.const 16
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 4
    i32.load offset=4
    local.set 5
    loop  ;; label = @1
      local.get 3
      local.get 0
      i32.load offset=12
      local.tee 6
      local.get 3
      local.get 6
      i32.lt_s
      select
      local.get 2
      i32.gt_s
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.tee 6
        local.get 5
        i32.add
        local.get 6
        local.get 0
        i32.load offset=4
        i32.add
        i32.load
        local.get 2
        local.get 0
        local.get 1
        i32.load
        call_indirect $0 (type 6)
        i32.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func $~lib/array/Array<~lib/string/String>#__get (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load offset=12
    local.get 1
    i32.le_u
    if  ;; label = @1
      i32.const 2080
      i32.const 1728
      i32.const 114
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4208
      i32.const 1728
      i32.const 118
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/matchstick-as/log/format (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 2512
    local.set 4
    i32.const 2268
    i32.load
    i32.const 1
    i32.shr_u
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 3
        i32.const 1
        i32.sub
        local.get 5
        i32.gt_s
        if (result i32)  ;; label = @3
          i32.const 2268
          i32.load
          i32.const 1
          i32.shr_u
          local.get 5
          i32.le_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 5
            i32.const 1
            i32.shl
            i32.const 2272
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 1
          i32.const 2268
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 1
            i32.const 1
            i32.shl
            i32.const 2272
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 0
          i32.load offset=12
          local.get 2
          i32.le_s
          if (result i32)  ;; label = @4
            i32.const 4032
            i32.const 2272
            call $~lib/string/String#concat
            i32.const 4128
            i32.const 48
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 2
            local.tee 1
            i32.const 1
            i32.add
            local.set 2
            local.get 4
            local.get 0
            local.get 1
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 4
            local.get 5
            i32.const 1
            i32.add
          end
          local.set 5
        else
          local.get 4
          i32.const 2272
          local.get 5
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 4336
      i32.const 4432
      i32.const 294
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#constructor (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 268435455
    i32.gt_u
    if  ;; label = @1
      i32.const 1680
      i32.const 1728
      i32.const 70
      i32.const 60
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 8
    local.get 0
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 3
    local.get 2
    call $~lib/memory/memory.fill
    local.get 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/array/ensureCapacity (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.const 2
    i32.shr_u
    local.get 1
    i32.lt_u
    if  ;; label = @1
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1680
        i32.const 1728
        i32.const 19
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      block (result i32)  ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        local.set 2
        local.get 3
        i32.const 1
        i32.shl
        local.tee 5
        i32.const 1073741820
        local.get 5
        i32.const 1073741820
        i32.lt_u
        select
        local.tee 5
        local.get 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        i32.const 2
        i32.shl
        local.tee 1
        local.get 1
        local.get 5
        i32.lt_u
        select
        local.tee 5
        local.tee 6
        i32.const 1073741804
        i32.gt_u
        if  ;; label = @3
          i32.const 1776
          i32.const 1840
          i32.const 99
          i32.const 30
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        i32.const 16
        i32.sub
        local.tee 1
        i32.const 15
        i32.and
        i32.const 1
        local.get 1
        select
        if  ;; label = @3
          i32.const 0
          i32.const 1840
          i32.const 45
          i32.const 3
          call $~lib/builtins/abort
          unreachable
        end
        global.get $~lib/rt/stub/offset
        local.get 1
        local.get 1
        i32.const 4
        i32.sub
        local.tee 2
        i32.load
        local.tee 7
        i32.add
        i32.eq
        local.set 8
        local.get 6
        i32.const 16
        i32.add
        local.tee 9
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        i32.const 4
        i32.sub
        local.set 10
        local.get 7
        local.get 9
        i32.lt_u
        if  ;; label = @3
          local.get 8
          if  ;; label = @4
            local.get 9
            i32.const 1073741820
            i32.gt_u
            if  ;; label = @5
              i32.const 1776
              i32.const 1840
              i32.const 52
              i32.const 33
              call $~lib/builtins/abort
              unreachable
            end
            local.get 1
            local.get 10
            i32.add
            local.tee 7
            memory.size
            local.tee 8
            i32.const 16
            i32.shl
            i32.const 15
            i32.add
            i32.const -16
            i32.and
            local.tee 9
            i32.gt_u
            if  ;; label = @5
              local.get 8
              local.get 7
              local.get 9
              i32.sub
              i32.const 65535
              i32.add
              i32.const -65536
              i32.and
              i32.const 16
              i32.shr_u
              local.tee 9
              local.get 8
              local.get 9
              i32.gt_s
              select
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 9
                memory.grow
                i32.const 0
                i32.lt_s
                if  ;; label = @7
                  unreachable
                end
              end
            end
            local.get 7
            global.set $~lib/rt/stub/offset
            local.get 2
            local.get 10
            i32.store
          else
            local.get 10
            local.get 7
            i32.const 1
            i32.shl
            local.tee 2
            local.get 2
            local.get 10
            i32.lt_u
            select
            call $~lib/rt/stub/__alloc
            local.tee 2
            local.get 1
            local.get 7
            call $~lib/memory/memory.copy
            local.get 2
            local.set 1
          end
        else
          local.get 8
          if  ;; label = @4
            local.get 1
            local.get 10
            i32.add
            global.set $~lib/rt/stub/offset
            local.get 2
            local.get 10
            i32.store
          end
        end
        local.get 1
        i32.const 4
        i32.sub
        local.get 6
        i32.store offset=16
        local.get 3
        local.get 1
        i32.const 16
        i32.add
        local.tee 1
        i32.add
      end
      local.get 5
      local.get 3
      i32.sub
      call $~lib/memory/memory.fill
      local.get 1
      local.get 4
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.store offset=4
      end
      local.get 0
      local.get 5
      i32.store offset=8
    end)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set (type 4) (param i32 i32 i32)
    (local i32)
    local.get 0
    i32.load offset=12
    local.get 1
    i32.le_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 2080
        i32.const 1728
        i32.const 130
        i32.const 22
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      call $~lib/array/ensureCapacity
      local.get 0
      local.get 3
      i32.store offset=12
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    local.get 2
    i32.store)
  (func $tests/split-plugin-utils/mockGetSplitConfig (type 9) (param i32 i32 i32 i32 i32 i32)
    (local i32 i64)
    i32.const 20
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 0
    i32.store8
    local.get 6
    i32.const 0
    i32.store offset=4
    local.get 6
    i32.const 0
    i32.store offset=8
    local.get 6
    i32.const 0
    i32.store offset=12
    local.get 6
    i32.const 0
    i32.const 21
    i32.const 3968
    call $~lib/rt/__newArray
    i32.store offset=16
    local.get 6
    local.get 0
    i32.store offset=4
    local.get 6
    i32.const 3760
    i32.store offset=8
    local.get 6
    i32.const 3808
    i32.store offset=12
    i32.const 1
    i32.const 21
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 6
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 4000
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/log/format
      call $~lib/matchstick-as/log/log.log
    else
      local.get 6
      local.get 0
      i32.store offset=16
    end
    i32.const 5
    i32.const 21
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 3
    i32.load offset=12
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#constructor
    local.set 1
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 2
      i32.gt_s
      if  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 2
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 8
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 4
    i32.load offset=12
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#constructor
    local.set 2
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 4
      i32.load offset=12
      local.get 1
      i32.gt_s
      if  ;; label = @2
        local.get 4
        i32.load offset=12
        local.get 1
        i32.le_u
        if  ;; label = @3
          i32.const 2080
          i32.const 1728
          i32.const 114
          i32.const 42
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        local.get 1
        block (result i32)  ;; label = @3
          local.get 4
          i32.load offset=4
          local.get 1
          i32.const 2
          i32.shl
          i32.add
          i32.load
          call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
          i64.extend_i32_u
          local.set 7
          i32.const 16
          i32.const 20
          call $~lib/rt/stub/__new
          local.tee 3
          i32.const 3
          i32.store
          local.get 3
          local.get 7
          i64.store offset=8
          local.get 3
        end
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 2
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 8
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=8
    local.get 5
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=12
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 5
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=16
    local.get 6
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 4544
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/log/format
      call $~lib/matchstick-as/log/log.log
    else
      local.get 6
      i32.load offset=4
      local.get 6
      i32.load offset=8
      local.get 6
      i32.load offset=12
      local.get 6
      i32.load offset=16
      local.get 0
      i32.const 0
      call $~lib/matchstick-as/index/mockFunction
      local.get 6
      i32.const 1
      i32.store8
    end)
  (func $~lib/matchstick-as/defaults/newMockEvent (type 7) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.tee 0
    local.set 7
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.tee 1
    local.set 4
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 3
    i32.const 60
    i32.const 24
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 3
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 3
    i32.store offset=16
    local.get 2
    local.get 3
    i32.store offset=20
    local.get 2
    local.get 3
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=32
    local.get 2
    local.get 1
    i32.store offset=36
    local.get 2
    local.get 1
    i32.store offset=40
    local.get 2
    local.get 1
    i32.store offset=44
    local.get 2
    local.get 1
    i32.store offset=48
    local.get 2
    local.get 1
    i32.store offset=52
    local.get 2
    local.get 1
    i32.store offset=56
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 1
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 3
    i32.const 36
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee 15
    local.get 0
    i32.store
    local.get 15
    local.get 1
    i32.store offset=4
    local.get 15
    local.get 3
    i32.store offset=8
    local.get 15
    local.get 3
    i32.store offset=12
    local.get 15
    local.get 1
    i32.store offset=16
    local.get 15
    local.get 1
    i32.store offset=20
    local.get 15
    local.get 1
    i32.store offset=24
    local.get 15
    local.get 0
    i32.store offset=28
    local.get 15
    local.get 1
    i32.store offset=32
    i32.const 0
    i32.const 27
    i32.const 4576
    call $~lib/rt/__newArray
    local.set 8
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 5
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 3
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 9
    i32.const 1
    i32.const 32
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 6
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 10
    i32.const 1
    i32.const 30
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 13
    i32.load offset=4
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 0
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultIntBytes
    local.set 11
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.tee 1
    local.set 12
    i32.const 1
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 14
    i32.const 0
    i32.store8
    local.get 14
    i32.const 0
    i32.store8
    i32.const 44
    i32.const 29
    call $~lib/rt/stub/__new
    local.tee 16
    local.get 10
    i32.store
    local.get 16
    local.get 13
    i32.store offset=4
    local.get 16
    local.get 0
    i32.store offset=8
    local.get 16
    local.get 0
    i32.store offset=12
    local.get 16
    local.get 11
    i32.store offset=16
    local.get 16
    local.get 0
    i32.store offset=20
    local.get 16
    local.get 1
    i32.store offset=24
    local.get 16
    local.get 12
    i32.store offset=28
    local.get 16
    local.get 1
    i32.store offset=32
    local.get 16
    i32.const 2208
    i32.store offset=36
    local.get 16
    local.get 14
    i32.store offset=40
    local.get 6
    i32.load offset=4
    local.get 16
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 1
    i32.const 44
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 10
    local.get 5
    i32.store
    local.get 10
    local.get 3
    i32.store offset=4
    local.get 10
    local.get 5
    i32.store offset=8
    local.get 10
    local.get 3
    i32.store offset=12
    local.get 10
    local.get 3
    i32.store offset=16
    local.get 10
    local.get 3
    i32.store offset=20
    local.get 10
    local.get 9
    i32.store offset=24
    local.get 10
    local.get 6
    i32.store offset=28
    local.get 10
    local.get 0
    i32.store offset=32
    local.get 10
    local.get 1
    i32.store offset=36
    local.get 10
    local.get 1
    i32.store offset=40
    i32.const 32
    i32.const 23
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 7
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 2208
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 15
    i32.store offset=20
    local.get 0
    local.get 8
    i32.store offset=24
    local.get 0
    local.get 10
    i32.store offset=28
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor (type 7) (result i32)
    (local i32 i32)
    i32.const 16
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 32
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push (type 3) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.const 1
    i32.add
    local.tee 3
    call $~lib/array/ensureCapacity
    local.get 0
    i32.load offset=4
    local.get 2
    i32.const 2
    i32.shl
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=12)
  (func $tests/split-plugin-utils/createSplitConfigCreatedEvent (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
      local.set 3
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4608
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4
      i32.store
      local.get 0
      local.get 4
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 4640
      i32.store
      local.get 1
      local.get 0
      i32.store offset=4
      local.get 1
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2)
  (func $generated/SplitPlugin/SplitPlugin/SplitPlugin#constructor (type 0) (param i32) (result i32)
    (local i32)
    i32.const 8
    i32.const 33
    call $~lib/rt/stub/__new
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8
      i32.const 34
      call $~lib/rt/stub/__new
      local.set 1
    end
    local.get 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 4688
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 4736
      i32.const 4432
      i32.const 84
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 4832
      i32.const 4432
      i32.const 57
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 4928
      i32.const 5024
      call $~lib/string/String#concat
      i32.const 4432
      i32.const 721
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load
    i32.load)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toArray (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 8
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 7
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 5296
      i32.const 4432
      i32.const 97
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBoolean (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 5
    i32.ne
    if  ;; label = @1
      i32.const 5392
      i32.const 4432
      i32.const 62
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i64.const 0
    i64.ne)
  (func $generated/SplitPlugin/SplitPlugin/SplitPlugin#try_getSplitConfig (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    i32.const 1
    i32.const 21
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 3
    i32.load offset=4
    drop
    local.get 1
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 8
    i64.store offset=8
    local.get 3
    i32.load offset=4
    local.get 1
    i32.store
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      local.set 2
      local.get 0
      i32.load offset=4
      local.set 1
      i32.const 20
      i32.const 41
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      local.get 2
      i32.store
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 3760
      i32.store offset=8
      local.get 0
      i32.const 3808
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=16
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 39
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        br 1 (;@1;)
      end
      i32.const 4
      i32.const 39
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 0
      i32.store
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 2
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
    end
    local.tee 0
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 37
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store
      local.get 0
      return
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
    local.tee 6
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 5
    local.get 6
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee 0
    i32.load
    i32.const 8
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 7
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 5184
      i32.const 4432
      i32.const 170
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toArray
    local.tee 3
    i32.load offset=12
    local.set 2
    i32.const 16
    i32.const 15
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    i32.const 0
    i32.store offset=4
    local.get 4
    i32.const 0
    i32.store offset=8
    local.get 4
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      local.get 2
      i32.const 268435455
      i32.gt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      local.get 2
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 1
      i32.const 0
      call $~lib/rt/stub/__new
      local.tee 0
      local.get 1
      call $~lib/memory/memory.fill
      local.get 4
      local.get 0
      i32.store
      local.get 4
      local.get 0
      i32.store offset=4
      local.get 4
      local.get 1
      i32.store offset=8
      local.get 4
      local.get 2
      i32.store offset=12
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.get 0
        i32.gt_s
        if  ;; label = @3
          local.get 4
          local.get 0
          local.get 3
          local.get 0
          call $~lib/array/Array<~lib/string/String>#__get
          call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
      local.get 6
      i32.const 2
      call $~lib/array/Array<~lib/string/String>#__get
      local.tee 0
      i32.load
      i32.const 8
      i32.eq
      if (result i32)  ;; label = @2
        i32.const 1
      else
        local.get 0
        i32.load
        i32.const 7
        i32.eq
      end
      i32.eqz
      if  ;; label = @2
        i32.const 5184
        i32.const 4432
        i32.const 209
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toArray
      local.tee 3
      i32.load offset=12
      local.set 2
      i32.const 16
      i32.const 17
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 2
      i32.const 268435455
      i32.gt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      local.get 2
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 7
      i32.const 0
      call $~lib/rt/stub/__new
      local.tee 0
      local.get 7
      call $~lib/memory/memory.fill
      local.get 1
      local.get 0
      i32.store
      local.get 1
      local.get 0
      i32.store offset=4
      local.get 1
      local.get 7
      i32.store offset=8
      local.get 1
      local.get 2
      i32.store offset=12
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.get 0
        i32.gt_s
        if  ;; label = @3
          local.get 1
          local.get 0
          local.get 3
          local.get 0
          call $~lib/array/Array<~lib/string/String>#__get
          call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>#__set
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
      local.get 6
      i32.const 3
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 3
      local.get 6
      i32.const 4
      call $~lib/array/Array<~lib/string/String>#__get
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBoolean
      local.set 0
      i32.const 17
      i32.const 36
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=4
      local.get 2
      i32.const 0
      i32.store offset=8
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 2
      i32.const 0
      i32.store8 offset=16
      local.get 2
      local.get 5
      i32.store
      local.get 2
      local.get 4
      i32.store offset=4
      local.get 2
      local.get 1
      i32.store offset=8
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store8 offset=16
      i32.const 4
      i32.const 37
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 0
      i32.store
      i32.const 4
      i32.const 38
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 2
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 1680
    i32.const 1728
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable)
  (func $~lib/@graphprotocol/graph-ts/index/format (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 2512
    local.set 5
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.gt_s
      if  ;; label = @2
        local.get 4
        i32.const 1
        i32.sub
        local.get 6
        i32.gt_s
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          local.get 6
          i32.le_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 6
            i32.const 1
            i32.shl
            local.get 0
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.tee 2
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 2
            i32.const 1
            i32.shl
            local.get 0
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 3
          i32.le_s
          if (result i32)  ;; label = @4
            i32.const 4032
            local.get 0
            call $~lib/string/String#concat
            i32.const 5600
            i32.const 72
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 3
            local.tee 2
            i32.const 1
            i32.add
            local.set 3
            local.get 5
            local.get 1
            local.get 2
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 5
            local.get 6
            i32.const 1
            i32.add
          end
          local.set 6
        else
          local.get 5
          local.get 0
          local.get 6
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 5
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    local.get 5)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 4) (param i32 i32 i32)
    (local i32)
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        i32.load offset=12
        local.get 3
        i32.gt_s
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 3
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 0
            i32.load
            local.get 3
            call $~lib/array/Array<~lib/string/String>#__get
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.get 3
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 1) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 0
      i32.load
      i32.load offset=12
      local.get 2
      i32.gt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/string/String>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/util/number/utoa32_dec_lut (type 4) (param i32 i32 i32)
    (local i32)
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 3
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 2
        i32.const 4
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        i32.add
        local.get 3
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 6732
        i32.add
        i64.load32_u
        local.get 3
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 6732
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 100
    i32.ge_u
    if  ;; label = @1
      local.get 2
      i32.const 2
      i32.sub
      local.tee 2
      i32.const 1
      i32.shl
      local.get 0
      i32.add
      local.get 1
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 6732
      i32.add
      i32.load
      i32.store
      local.get 1
      i32.const 100
      i32.div_u
      local.set 1
    end
    local.get 1
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 2
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      local.get 0
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 6732
      i32.add
      i32.load
      i32.store
    else
      local.get 2
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      local.get 0
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 2736
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 0
    select
    local.tee 3
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 3
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 3
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 3
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 3
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 3
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 3
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 0
    i32.add
    local.tee 1
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 3
    local.get 1
    call $~lib/util/number/utoa32_dec_lut
    local.get 0
    if  ;; label = @1
      local.get 2
      i32.const 45
      i32.store16
    end
    local.get 2)
  (func $~lib/util/number/itoa64 (type 10) (param i64) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i64.eqz
    if  ;; label = @1
      i32.const 2736
      return
    end
    i64.const 0
    local.get 0
    i64.sub
    local.get 0
    local.get 0
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.tee 3
    select
    local.tee 0
    i64.const 4294967295
    i64.le_u
    if  ;; label = @1
      local.get 0
      i32.wrap_i64
      local.tee 1
      i32.const 100000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 100
        i32.lt_u
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 10
          i32.ge_u
          i32.const 1
          i32.add
        else
          local.get 1
          i32.const 10000
          i32.ge_u
          i32.const 3
          i32.add
          local.get 1
          i32.const 1000
          i32.ge_u
          i32.add
        end
      else
        local.get 1
        i32.const 10000000
        i32.lt_u
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 1000000
          i32.ge_u
          i32.const 6
          i32.add
        else
          local.get 1
          i32.const 1000000000
          i32.ge_u
          i32.const 8
          i32.add
          local.get 1
          i32.const 100000000
          i32.ge_u
          i32.add
        end
      end
      local.get 3
      i32.add
      local.tee 4
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee 2
      local.get 1
      local.get 4
      call $~lib/util/number/utoa32_dec_lut
    else
      local.get 0
      i64.const 1000000000000000
      i64.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i64.const 1000000000000
        i64.lt_u
        if (result i32)  ;; label = @3
          local.get 0
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get 0
          i64.const 10000000000
          i64.ge_u
          i32.add
        else
          local.get 0
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get 0
          i64.const 10000000000000
          i64.ge_u
          i32.add
        end
      else
        local.get 0
        i64.const 100000000000000000
        i64.lt_u
        if (result i32)  ;; label = @3
          local.get 0
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
        else
          local.get 0
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get 0
          i64.const 1000000000000000000
          i64.ge_u
          i32.add
        end
      end
      local.get 3
      i32.add
      local.tee 1
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/stub/__new
      local.set 2
      loop  ;; label = @2
        local.get 0
        i64.const 100000000
        i64.ge_u
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.sub
          local.tee 1
          i32.const 1
          i32.shl
          local.get 2
          i32.add
          local.get 0
          local.get 0
          i64.const 100000000
          i64.div_u
          local.tee 0
          i64.const 100000000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 4
          i32.const 10000
          i32.rem_u
          local.tee 5
          i32.const 100
          i32.div_u
          i32.const 2
          i32.shl
          i32.const 6732
          i32.add
          i64.load32_u
          local.get 5
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 6732
          i32.add
          i64.load32_u
          i64.const 32
          i64.shl
          i64.or
          i64.store
          local.get 1
          i32.const 4
          i32.sub
          local.tee 1
          i32.const 1
          i32.shl
          local.get 2
          i32.add
          local.get 4
          i32.const 10000
          i32.div_u
          local.tee 4
          i32.const 100
          i32.div_u
          i32.const 2
          i32.shl
          i32.const 6732
          i32.add
          i64.load32_u
          local.get 4
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 6732
          i32.add
          i64.load32_u
          i64.const 32
          i64.shl
          i64.or
          i64.store
          br 1 (;@2;)
        end
      end
      local.get 2
      local.get 0
      i32.wrap_i64
      local.get 1
      call $~lib/util/number/utoa32_dec_lut
    end
    local.get 3
    if  ;; label = @1
      local.get 2
      i32.const 45
      i32.store16
    end
    local.get 2)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBoolean (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 5
    i32.eq
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.load
    i32.const 3
    i32.ne
    if  ;; label = @1
      i32.const 8448
      i32.const 6384
      i32.const 59
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i64.const 0
    i64.ne)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/util/string/joinStringArray (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 6
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 2512
      return
    end
    local.get 6
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 2512
      local.get 0
      select
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 5
        i32.const 2
        i32.shl
        local.get 0
        i32.add
        i32.load
        local.tee 7
        if  ;; label = @3
          local.get 7
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          local.get 3
          i32.add
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 6
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.mul
    local.get 3
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 3
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 6
      i32.lt_s
      if  ;; label = @2
        local.get 5
        i32.const 2
        i32.shl
        local.get 0
        i32.add
        i32.load
        local.tee 7
        if  ;; label = @3
          local.get 4
          i32.const 1
          i32.shl
          local.get 3
          i32.add
          local.get 7
          local.get 7
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          local.tee 7
          i32.const 1
          i32.shl
          call $~lib/memory/memory.copy
          local.get 4
          local.get 7
          i32.add
          local.set 4
        end
        local.get 1
        if  ;; label = @3
          local.get 4
          i32.const 1
          i32.shl
          local.get 3
          i32.add
          local.get 2
          local.get 1
          i32.const 1
          i32.shl
          call $~lib/memory/memory.copy
          local.get 1
          local.get 4
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 6
    i32.const 2
    i32.shl
    local.get 0
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 4
      i32.const 1
      i32.shl
      local.get 3
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 3)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 8784
      i32.const 6384
      i32.const 64
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 7
    i32.ne
    if  ;; label = @1
      i32.const 8864
      i32.const 6384
      i32.const 98
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 1
                      if  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.sub
                        br_table 1 (;@9;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 6 (;@4;) 7 (;@3;) 8 (;@2;) 2 (;@8;) 2 (;@8;) 9 (;@1;)
                      end
                      local.get 0
                      i32.load
                      if  ;; label = @10
                        i32.const 6320
                        i32.const 6384
                        i32.const 93
                        i32.const 5
                        call $~lib/builtins/abort
                        unreachable
                      end
                      local.get 0
                      i64.load offset=8
                      i32.wrap_i64
                      return
                    end
                    local.get 0
                    i32.load
                    i32.const 5
                    i32.eq
                    if (result i32)  ;; label = @9
                      i32.const 0
                    else
                      local.get 0
                      i32.load
                      i32.const 1
                      i32.ne
                      if  ;; label = @10
                        i32.const 6496
                        i32.const 6384
                        i32.const 72
                        i32.const 5
                        call $~lib/builtins/abort
                        unreachable
                      end
                      local.get 0
                      i64.load offset=8
                      i32.wrap_i64
                    end
                    call $~lib/util/number/itoa32
                    return
                  end
                  local.get 0
                  i32.load
                  i32.const 5
                  i32.eq
                  if (result i64)  ;; label = @8
                    i64.const 0
                  else
                    local.get 0
                    i32.load
                    i32.const 8
                    i32.ne
                    if  ;; label = @9
                      i32.const 8304
                      i32.const 6384
                      i32.const 80
                      i32.const 5
                      call $~lib/builtins/abort
                      unreachable
                    end
                    local.get 0
                    i64.load offset=8
                  end
                  call $~lib/util/number/itoa64
                  return
                end
                local.get 0
                i32.load
                i32.const 2
                i32.ne
                if  ;; label = @7
                  i32.const 8368
                  i32.const 6384
                  i32.const 103
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i32.wrap_i64
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 8528
              i32.const 8560
              local.get 0
              call $~lib/@graphprotocol/graph-ts/common/value/Value#toBoolean
              select
              return
            end
            local.get 0
            i32.load
            i32.const 4
            i32.ne
            if  ;; label = @5
              i32.const 8592
              i32.const 6384
              i32.const 108
              i32.const 5
              call $~lib/builtins/abort
              unreachable
            end
            local.get 0
            i64.load offset=8
            i32.wrap_i64
            local.tee 3
            i32.load offset=12
            local.tee 4
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 1
            i32.load offset=4
            local.set 2
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 4
              local.get 3
              i32.load offset=12
              local.tee 5
              local.get 4
              local.get 5
              i32.lt_s
              select
              local.get 0
              i32.gt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 5
                local.get 2
                i32.add
                local.get 5
                local.get 3
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 3
                i32.const 8688
                i32.load
                call_indirect $0 (type 6)
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 8656
            local.get 1
            i32.load offset=4
            local.get 1
            i32.load offset=12
            i32.const 8720
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 8752
            call $~lib/string/String#concat
            return
          end
          i32.const 1232
          return
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 9028
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 9024
    i32.const 9020
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 2512
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    i32.const 1484
    i32.load
    local.get 0
    i32.load
    i32.le_s
    if  ;; label = @1
      i32.const 9108
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 9104
      i32.const 9100
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 2512
      call $~lib/util/string/joinStringArray
      return
    end
    i32.const 1472
    local.get 0
    i32.load
    call $~lib/array/Array<~lib/string/String>#__get)
  (func $generated/schema/User#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 5904
      i32.const 6000
      i32.const 23
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 6276
        local.get 0
        i32.store
        i32.const 6284
        local.get 1
        i32.store
        i32.const 6272
        i32.const 6268
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 25
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 5696
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/split-plugin/getOrCreateGlobalStats (type 7) (result i32)
    (local i32 i32 i64)
    i32.const 9136
    global.get $src/split-plugin/GLOBAL_STATS_ID
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      global.get $src/split-plugin/GLOBAL_STATS_ID
      local.set 1
      i32.const 4
      i32.const 47
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 0
      i32.const 5728
      block (result i32)  ;; label = @2
        local.get 1
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 6
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9184
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 5808
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9232
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9296
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9360
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9424
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 0
      i32.const 9488
      block (result i32)  ;; label = @2
        global.get $src/split-plugin/BIGINT_ZERO
        i64.extend_i32_u
        local.set 2
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 2
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 9648
      i32.const 9776
      i32.const 185
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus)
  (func $generated/schema/GlobalStats#get:totalActiveConfigs (type 0) (param i32) (result i32)
    local.get 0
    i32.const 9232
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 1325
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 9888
      i32.const 9776
      i32.const 191
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus)
  (func $generated/schema/GlobalStats#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 10032
      i32.const 6000
      i32.const 1261
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 10324
        local.get 0
        i32.store
        i32.const 10332
        local.get 1
        i32.store
        i32.const 10320
        i32.const 10316
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 1263
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 9136
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/split-plugin/updateGlobalStats (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i64)
    call $src/split-plugin/getOrCreateGlobalStats
    local.set 5
    local.get 1
    if  ;; label = @1
      local.get 5
      i32.const 9184
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 9184
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
          i32.load
          i32.const 5
          i32.eq
        else
          i32.const 1
        end
        if (result i32)  ;; label = @3
          i32.const 9536
          i32.const 6000
          i32.const 1299
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        else
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
        end
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 2
    if  ;; label = @1
      local.get 5
      i32.const 5808
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 5808
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
          i32.load
          i32.const 5
          i32.eq
        else
          i32.const 1
        end
        if (result i32)  ;; label = @3
          i32.const 9536
          i32.const 6000
          i32.const 1312
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        else
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
        end
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 5
      i32.const 9232
      block (result i32)  ;; label = @2
        local.get 5
        call $generated/schema/GlobalStats#get:totalActiveConfigs
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 3
    if  ;; label = @1
      local.get 5
      i32.const 9232
      block (result i32)  ;; label = @2
        local.get 5
        call $generated/schema/GlobalStats#get:totalActiveConfigs
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 5
      i32.const 9296
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 9296
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
          i32.load
          i32.const 5
          i32.eq
        else
          i32.const 1
        end
        if (result i32)  ;; label = @3
          i32.const 9536
          i32.const 6000
          i32.const 1338
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        else
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
        end
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 4
    if  ;; label = @1
      local.get 5
      i32.const 9360
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 9360
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 1
        if (result i32)  ;; label = @3
          local.get 1
          i32.load
          i32.const 5
          i32.eq
        else
          i32.const 1
        end
        if (result i32)  ;; label = @3
          i32.const 9536
          i32.const 6000
          i32.const 1351
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        else
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
        end
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 5
    i32.const 9488
    block (result i32)  ;; label = @1
      local.get 0
      i64.extend_i32_u
      local.set 6
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 7
      i32.store
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 5
    call $generated/schema/GlobalStats#save)
  (func $generated/schema/User#get:activeConfigs (type 0) (param i32) (result i32)
    local.get 0
    i32.const 5856
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 93
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end)
  (func $generated/schema/SplitConfig#set:isSplitEnabled (type 3) (param i32 i32)
    (local i64)
    local.get 0
    i32.const 10464
    block (result i32)  ;; label = @1
      local.get 1
      i32.eqz
      i32.eqz
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 3
      i32.store
      local.get 0
      local.get 2
      i64.store offset=8
      local.get 0
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/SplitConfig#set:deleted (type 3) (param i32 i32)
    (local i64)
    local.get 0
    i32.const 10512
    block (result i32)  ;; label = @1
      local.get 1
      i32.eqz
      i32.eqz
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 3
      i32.store
      local.get 0
      local.get 2
      i64.store offset=8
      local.get 0
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/SplitConfig#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 10656
      i32.const 6000
      i32.const 112
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 10948
        local.get 0
        i32.store
        i32.const 10956
        local.get 1
        i32.store
        i32.const 10944
        i32.const 10940
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 114
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 10992
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray> (type 4) (param i32 i32 i32)
    local.get 2
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 2080
      i32.const 2144
      i32.const 1908
      i32.const 19
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    i32.load offset=8
    i32.add
    i32.lt_s
    if  ;; label = @1
      i32.const 2080
      i32.const 2144
      i32.const 1909
      i32.const 47
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    local.get 0
    i32.load offset=4
    i32.add
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $~lib/memory/memory.copy)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat (type 1) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load offset=8
    i32.add
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 2
    local.get 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray>
    local.get 2
    local.get 1
    local.get 0
    i32.load offset=8
    call $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray>
    local.get 2)
  (func $generated/schema/SplitRecipient#set:isActive (type 3) (param i32 i32)
    (local i64)
    local.get 0
    i32.const 11424
    block (result i32)  ;; label = @1
      local.get 1
      i32.eqz
      i32.eqz
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 3
      i32.store
      local.get 0
      local.get 2
      i64.store offset=8
      local.get 0
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/SplitRecipient#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 11472
      i32.const 6000
      i32.const 339
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 11780
        local.get 0
        i32.store
        i32.const 11788
        local.get 1
        i32.store
        i32.const 11776
        i32.const 11772
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 341
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 11824
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/split-plugin/handleSplitConfigCreated (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    local.get 0
    i32.load
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#constructor
    local.set 1
    i32.const 4
    i32.const 35
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 8
    i32.const 4
    i32.const 35
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 2
    local.get 1
    local.get 8
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#try_getSplitConfig
    local.tee 1
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 8
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 1
      i32.const 5488
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i32.load offset=4
    local.set 7
    local.get 1
    i32.load offset=8
    local.set 6
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 1
    i32.load8_u offset=16
    local.set 3
    local.get 0
    i32.load offset=16
    local.tee 1
    i32.load offset=40
    local.set 10
    local.get 1
    i32.load offset=28
    drop
    i32.const 5696
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 42
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 1
      local.get 2
      i64.extend_i32_u
      local.set 12
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 11
      i32.const 6
      i32.store
      local.get 11
      local.get 12
      i64.store offset=8
      local.get 1
      i32.const 5728
      local.get 11
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 10
      i64.extend_i32_u
      local.set 12
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 11
      i32.const 7
      i32.store
      local.get 11
      local.get 12
      i64.store offset=8
      local.get 1
      i32.const 5760
      local.get 11
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      global.get $src/split-plugin/BIGINT_ZERO
      i64.extend_i32_u
      local.set 12
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 11
      i32.const 7
      i32.store
      local.get 11
      local.get 12
      i64.store offset=8
      local.get 1
      i32.const 5808
      local.get 11
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      global.get $src/split-plugin/BIGINT_ZERO
      i64.extend_i32_u
      local.set 12
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 11
      i32.const 7
      i32.store
      local.get 11
      local.get 12
      i64.store offset=8
      local.get 1
      i32.const 5856
      local.get 11
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      call $generated/schema/User#save
      local.get 10
      i32.const 1
      i32.const 0
      i32.const 0
      i32.const 0
      call $src/split-plugin/updateGlobalStats
    end
    local.get 1
    i32.const 5808
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 10
    if (result i32)  ;; label = @1
      local.get 10
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 10
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end
    global.get $src/split-plugin/BIGINT_ONE
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 10
    i32.const 7
    i32.store
    local.get 10
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 5808
    local.get 10
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $generated/schema/User#get:activeConfigs
    global.get $src/split-plugin/BIGINT_ONE
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 10
    i32.const 7
    i32.store
    local.get 10
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 5856
    local.get 10
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $generated/schema/User#save
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 1
    local.get 8
    i64.extend_i32_u
    local.tee 12
    local.set 13
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 10
    i32.const 6
    i32.store
    local.get 10
    local.get 13
    i64.store offset=8
    local.get 1
    i32.const 5728
    local.get 10
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i64.extend_i32_u
    local.set 13
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 13
    i64.store offset=8
    local.get 1
    i32.const 4608
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 4640
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 5
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 10368
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 10416
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    local.get 3
    call $generated/schema/SplitConfig#set:isSplitEnabled
    local.get 1
    i32.const 0
    call $generated/schema/SplitConfig#set:deleted
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 5760
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 10560
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=20
    i32.load
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 10608
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/split-plugin/BIGINT_ZERO
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 9360
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    global.get $src/split-plugin/BIGINT_ZERO
    i64.extend_i32_u
    local.set 12
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 12
    i64.store offset=8
    local.get 1
    i32.const 9424
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $generated/schema/SplitConfig#save
    loop  ;; label = @1
      local.get 7
      i32.load offset=12
      local.get 9
      i32.gt_s
      if  ;; label = @2
        local.get 8
        local.get 7
        local.get 9
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
        local.get 0
        i32.load offset=20
        i32.load
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
        local.set 1
        i32.const 4
        i32.const 50
        call $~lib/rt/stub/__new
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
        local.set 2
        local.get 1
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 6
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 5728
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 8
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 6
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 11040
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 7
        local.get 9
        call $~lib/array/Array<~lib/string/String>#__get
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 6
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 11072
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 6
        local.get 9
        call $~lib/array/Array<~lib/string/String>#__get
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 11120
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 6
        local.get 9
        call $~lib/array/Array<~lib/string/String>#__get
        local.set 1
        i32.const 8
        i32.const 44
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 0
        i32.store
        local.get 3
        i32.const 0
        i32.store offset=4
        local.get 3
        local.get 1
        i32.store
        local.get 3
        i32.const 0
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
        i32.store offset=4
        i32.const 11168
        call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.fromString
        local.set 1
        local.get 3
        i32.eqz
        if  ;; label = @3
          i32.const 11216
          i32.const 9776
          i32.const 390
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 3
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.dividedBy
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 2
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 11360
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 0
        i32.load offset=16
        i32.load offset=40
        i64.extend_i32_u
        local.set 12
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 7
        i32.store
        local.get 1
        local.get 12
        i64.store offset=8
        local.get 2
        i32.const 5760
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 2
        i32.const 1
        call $generated/schema/SplitRecipient#set:isActive
        local.get 2
        call $generated/schema/SplitRecipient#save
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i32.const 0
    i32.const 1
    i32.const 0
    i32.const 0
    call $src/split-plugin/updateGlobalStats)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 8) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 11872
      i32.const 11968
      i32.const 45
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/split-plugin.test~anonymous|0~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 1
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 4
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 4
    i32.load offset=4
    local.get 5
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 4
    i32.load offset=4
    local.get 5
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 6
    local.get 2
    local.get 1
    local.get 3
    local.get 4
    local.get 5
    i32.const 3728
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.get 6
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 0
    local.get 1
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 4
    local.get 2
    i32.store
    local.get 4
    call $src/split-plugin/handleSplitConfigCreated
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5728
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5808
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5856
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 4608
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 10368
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 10416
    local.get 6
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|0 (type 2)
    i32.const 2864
    i32.const 0
    i32.const 12096
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $start:tests/split-plugin.test~anonymous|1~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 4
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    local.get 2
    i32.load offset=4
    local.get 3
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    local.get 2
    i32.load offset=4
    local.get 3
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 3
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 5
    local.get 3
    i32.load offset=4
    local.get 5
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 5
    local.get 3
    i32.load offset=4
    local.get 5
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 5
    local.get 3
    i32.const 12368
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.set 6
    local.get 1
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.tee 3
    local.get 4
    local.get 2
    local.get 6
    local.get 5
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 0
    local.get 3
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 7
    local.get 1
    i32.store
    local.get 7
    call $src/split-plugin/handleSplitConfigCreated
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5808
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 1
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.tee 7
    local.get 4
    local.get 2
    local.get 6
    local.get 5
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 0
    local.get 7
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 2
    local.get 1
    i32.store
    local.get 2
    call $src/split-plugin/handleSplitConfigCreated
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5808
    i32.const 12400
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 5696
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5856
    i32.const 12400
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    local.get 7
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 10992
    local.get 1
    i32.const 4608
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 2
    i32.const 4608
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 9136
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5808
    i32.const 12400
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|1 (type 2)
    i32.const 12240
    i32.const 0
    i32.const 12432
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $tests/split-plugin-utils/createSplitExecutedEvent (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 1
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 0
      i64.extend_i32_u
      local.set 3
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 4
      i32.store
      local.get 2
      local.get 3
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4640
      i32.store
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 1)
  (func $generated/schema/SplitConfig#get:totalExecutions (type 0) (param i32) (result i32)
    local.get 0
    i32.const 9360
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 307
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end)
  (func $src/split-plugin/handleSplitExecuted (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    local.get 0
    i32.load
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#constructor
    local.set 2
    i32.const 4
    i32.const 53
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i32.store
    i32.const 10992
    local.get 3
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.tee 5
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 6
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 5
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 1
      i32.const 12704
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 2
    local.get 5
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#try_getSplitConfig
    local.tee 2
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 5
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 1
      i32.const 12800
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
    local.tee 3
    i32.load
    local.set 2
    local.get 3
    i32.load offset=4
    local.set 7
    local.get 3
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    local.set 8
    i32.const 4
    i32.const 54
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 9
    i32.const 5728
    block (result i32)  ;; label = @1
      local.get 8
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 11040
    block (result i32)  ;; label = @1
      local.get 5
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 12912
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=16
      i32.load offset=40
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 7
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 12960
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=20
      i32.load
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 12992
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=20
      i32.load offset=8
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 10368
    block (result i32)  ;; label = @1
      local.get 2
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 10
      i64.store offset=8
      local.get 4
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 9
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 4
    i32.eqz
    if  ;; label = @1
      i32.const 13040
      i32.const 6000
      i32.const 461
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 4
    if  ;; label = @1
      local.get 4
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 4
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 4
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 13348
        local.get 0
        i32.store
        i32.const 13356
        local.get 1
        i32.store
        i32.const 13344
        i32.const 13340
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 463
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 13392
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 9
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    loop  ;; label = @1
      local.get 7
      i32.load offset=12
      local.get 1
      i32.gt_s
      if  ;; label = @2
        local.get 8
        local.get 7
        local.get 1
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
        local.set 4
        i32.const 4
        i32.const 55
        call $~lib/rt/stub/__new
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
        local.tee 5
        i32.const 5728
        block (result i32)  ;; label = @3
          local.get 4
          i64.extend_i32_u
          local.set 10
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 6
          i32.store
          local.get 4
          local.get 10
          i64.store offset=8
          local.get 4
        end
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 5
        i32.const 13440
        block (result i32)  ;; label = @3
          local.get 8
          i64.extend_i32_u
          local.set 10
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 6
          i32.store
          local.get 4
          local.get 10
          i64.store offset=8
          local.get 4
        end
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 5
        i32.const 11072
        block (result i32)  ;; label = @3
          local.get 7
          local.get 1
          call $~lib/array/Array<~lib/string/String>#__get
          i64.extend_i32_u
          local.set 10
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 6
          i32.store
          local.get 4
          local.get 10
          i64.store offset=8
          local.get 4
        end
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 5
        i32.const 11120
        block (result i32)  ;; label = @3
          local.get 3
          local.get 1
          call $~lib/array/Array<~lib/string/String>#__get
          i64.extend_i32_u
          local.set 10
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 7
          i32.store
          local.get 4
          local.get 10
          i64.store offset=8
          local.get 4
        end
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 5
        i32.const 10368
        block (result i32)  ;; label = @3
          local.get 2
          i64.extend_i32_u
          local.set 10
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 6
          i32.store
          local.get 4
          local.get 10
          i64.store offset=8
          local.get 4
        end
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 5
        i32.const 5728
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 4
        i32.eqz
        if  ;; label = @3
          i32.const 13488
          i32.const 6000
          i32.const 578
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 4
        if  ;; label = @3
          local.get 4
          i32.load
          i32.const 6
          i32.ne
          if  ;; label = @4
            local.get 4
            call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
            local.set 0
            local.get 4
            call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
            local.set 1
            i32.const 13796
            local.get 0
            i32.store
            i32.const 13804
            local.get 1
            i32.store
            i32.const 13792
            i32.const 13788
            i32.load
            i32.const 2
            i32.shr_u
            i32.const 2512
            call $~lib/util/string/joinStringArray
            i32.const 6000
            i32.const 580
            i32.const 7
            call $~lib/builtins/abort
            unreachable
          end
          i32.const 13840
          local.get 4
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          local.get 5
          call $~lib/@graphprotocol/graph-ts/index/store.set
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 6
    i32.const 9360
    block (result i32)  ;; label = @1
      local.get 6
      call $generated/schema/SplitConfig#get:totalExecutions
      global.get $src/split-plugin/BIGINT_ONE
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 10
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 6
    i32.const 10560
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=16
      i32.load offset=40
      i64.extend_i32_u
      local.set 10
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 10
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 6
    call $generated/schema/SplitConfig#save
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 1
    call $src/split-plugin/updateGlobalStats)
  (func $start:tests/split-plugin.test~anonymous|2~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 4
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 5
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    local.get 0
    i32.load offset=4
    local.get 6
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    local.get 0
    i32.load offset=4
    local.get 6
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 6
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 7
    local.get 6
    i32.load offset=4
    local.get 7
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 7
    local.get 6
    i32.load offset=4
    local.get 7
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 7
    local.get 3
    local.get 5
    local.get 2
    local.get 0
    local.get 6
    i32.const 12672
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.get 7
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 4
    local.get 5
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 4
    local.get 3
    i32.store
    local.get 4
    call $src/split-plugin/handleSplitConfigCreated
    local.get 5
    call $tests/split-plugin-utils/createSplitExecutedEvent
    local.tee 4
    local.get 3
    i32.store
    local.get 4
    call $src/split-plugin/handleSplitExecuted
    local.get 5
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 3
    i32.const 13392
    local.get 4
    i32.load offset=20
    i32.load
    local.get 4
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 5
    i32.const 11040
    local.get 3
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 13392
    local.get 5
    i32.const 12992
    local.get 4
    i32.load offset=20
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 13392
    local.get 5
    i32.const 10368
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    loop  ;; label = @1
      local.get 0
      i32.load offset=12
      local.get 1
      i32.gt_s
      if  ;; label = @2
        i32.const 13840
        local.get 4
        i32.load offset=20
        i32.load
        local.get 4
        i32.load offset=4
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
        local.get 0
        local.get 1
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        local.tee 2
        i32.const 11072
        local.get 0
        local.get 1
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
        i32.const 13840
        local.get 2
        i32.const 11120
        local.get 6
        local.get 1
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
        call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 10992
    local.get 3
    i32.const 9360
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 9136
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 9360
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|2~anonymous|1 (type 2)
    (local i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 999
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $tests/split-plugin-utils/createSplitExecutedEvent
    local.tee 0
    local.get 1
    i32.store
    local.get 0
    call $src/split-plugin/handleSplitExecuted
    i32.const 13392
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/_assert.notInStore
    i32.eqz
    if  ;; label = @1
      i32.const 14032
      i32.const 11968
      i32.const 65
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/split-plugin.test~anonymous|2 (type 2)
    i32.const 12560
    i32.const 0
    i32.const 13904
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 13936
    i32.const 0
    i32.const 14128
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $tests/split-plugin-utils/createSplitConfigFailedEvent (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 0
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 4
      i32.store
      local.get 3
      local.get 4
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4640
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 2
      i32.store
      local.get 0
      local.get 4
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 14464
      i32.store
      local.get 1
      local.get 0
      i32.store offset=4
      local.get 1
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2)
  (func $generated/schema/SplitConfig#get:tokenAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.const 10368
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 176
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
    end)
  (func $generated/schema/SplitConfig#get:totalFailedExecutions (type 0) (param i32) (result i32)
    local.get 0
    i32.const 9424
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 320
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end)
  (func $src/split-plugin/handleSplitConfigFailed (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 57
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 3
    i32.const 4
    i32.const 57
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    local.tee 1
    i32.load
    i32.const 1
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 1
      i32.load
      i32.const 2
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 14496
      i32.const 4432
      i32.const 67
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i64.load offset=8
    i32.wrap_i64
    local.set 1
    i32.const 10992
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 4
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 1
      i32.const 14576
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    local.set 5
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 2
    local.get 5
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 6
    i32.store
    local.get 5
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 5728
    local.get 5
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 3
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 6
    i32.store
    local.get 3
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 11040
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 7
    i32.store
    local.get 3
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 12912
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=20
    i32.load
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 6
    i32.store
    local.get 3
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 12960
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 6
    i32.store
    local.get 3
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 14688
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
    else
      i32.const 0
    end
    if  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 14800
        i32.const 6000
        i32.const 774
        i32.const 64
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      i64.extend_i32_u
      local.set 6
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 6
      i64.store offset=8
    else
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 5
      i32.store
      local.get 1
      i64.const 0
      i64.store offset=8
    end
    local.get 2
    i32.const 14736
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=20
    i32.load offset=8
    local.tee 1
    if  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 6
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 6
      i64.store offset=8
    else
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 5
      i32.store
      local.get 1
      i64.const 0
      i64.store offset=8
    end
    local.get 2
    i32.const 12992
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    call $generated/schema/SplitConfig#get:tokenAddress
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 6
    i64.store offset=8
    local.get 2
    i32.const 10368
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 14864
      i32.const 6000
      i32.const 674
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 15188
        local.get 0
        i32.store
        i32.const 15196
        local.get 1
        i32.store
        i32.const 15184
        i32.const 15180
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 676
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 15232
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 4
    call $generated/schema/SplitConfig#get:totalFailedExecutions
    global.get $src/split-plugin/BIGINT_ONE
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 6
    i64.store offset=8
    local.get 4
    i32.const 9424
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 6
    i64.store offset=8
    local.get 4
    i32.const 10560
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    call $generated/schema/SplitConfig#save
    call $src/split-plugin/getOrCreateGlobalStats
    local.tee 1
    i32.const 9424
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 2
    if (result i32)  ;; label = @1
      local.get 2
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 1364
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    end
    global.get $src/split-plugin/BIGINT_ONE
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7
    i32.store
    local.get 2
    local.get 6
    i64.store offset=8
    local.get 1
    i32.const 9424
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 1
    i32.const 9488
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $generated/schema/GlobalStats#save)
  (func $start:tests/split-plugin.test~anonymous|3~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 1
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    local.get 2
    i32.load offset=4
    local.get 3
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    local.get 2
    i32.load offset=4
    local.get 3
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 3
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 4
    local.get 3
    i32.load offset=4
    local.get 4
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 4
    local.get 3
    i32.load offset=4
    local.get 4
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 7
    i32.const 14384
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    local.set 4
    local.get 5
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    i32.const 14432
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.get 7
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 6
    local.get 1
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 2
    local.get 5
    i32.store
    local.get 2
    call $src/split-plugin/handleSplitConfigCreated
    local.get 1
    local.get 4
    call $tests/split-plugin-utils/createSplitConfigFailedEvent
    local.tee 2
    local.get 5
    i32.store
    local.get 2
    i32.load offset=20
    local.get 6
    i32.store offset=8
    local.get 2
    call $src/split-plugin/handleSplitConfigFailed
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 15232
    local.get 2
    i32.load offset=20
    i32.load
    local.get 2
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 3
    i32.const 11040
    local.get 1
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 15232
    local.get 3
    i32.const 14688
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 15232
    local.get 3
    i32.const 12992
    local.get 2
    i32.load offset=20
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 15232
    local.get 3
    i32.const 10368
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 1
    i32.const 9424
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 9136
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 9424
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|3~anonymous|1 (type 2)
    (local i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 999
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 14384
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    call $tests/split-plugin-utils/createSplitConfigFailedEvent
    local.tee 0
    local.get 1
    i32.store
    local.get 0
    call $src/split-plugin/handleSplitConfigFailed
    i32.const 15232
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/_assert.notInStore
    i32.eqz
    if  ;; label = @1
      i32.const 14032
      i32.const 11968
      i32.const 65
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/split-plugin.test~anonymous|3 (type 2)
    i32.const 14272
    i32.const 0
    i32.const 15296
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 13936
    i32.const 0
    i32.const 15328
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $tests/split-plugin-utils/createAutomationSwitchedEvent (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 0
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 4
      i32.store
      local.get 3
      local.get 4
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4640
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    block (result i32)  ;; label = @1
      local.get 1
      i32.eqz
      i32.eqz
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 5
      i32.store
      local.get 0
      local.get 4
      i64.store offset=8
      i32.const 8
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 15616
      i32.store
      local.get 1
      local.get 0
      i32.store offset=4
      local.get 1
    end
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2)
  (func $src/split-plugin/handleAutomationSwitched (type 5) (param i32)
    (local i64 i32 i32 i32 i32 i32)
    i32.const 4
    i32.const 60
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 4
    i32.const 4
    i32.const 60
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBoolean
    local.set 3
    i32.const 10992
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 2
      local.get 0
      i32.load offset=4
      local.get 2
      i32.store
      i32.const 1
      i32.const 15664
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    local.set 5
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 6
    local.get 5
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 6
    i32.store
    local.get 5
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 5728
    local.get 5
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 6
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 11040
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 12912
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=20
    i32.load
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 6
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 12960
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=20
    i32.load offset=8
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 6
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 15776
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i32.const 10464
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 4
    if (result i32)  ;; label = @1
      local.get 4
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 0
    else
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBoolean
    end
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 3
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 15824
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 3
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 3
    i32.store
    local.get 4
    local.get 1
    i64.store offset=8
    local.get 6
    i32.const 15872
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 6
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 4
    i32.eqz
    if  ;; label = @1
      i32.const 15920
      i32.const 6000
      i32.const 817
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 4
    if  ;; label = @1
      local.get 4
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 4
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 4
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 2
        i32.const 16228
        local.get 0
        i32.store
        i32.const 16236
        local.get 2
        i32.store
        i32.const 16224
        i32.const 16220
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 819
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 16272
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 6
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 2
    local.get 3
    call $generated/schema/SplitConfig#set:isSplitEnabled
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 2
    i32.const 10560
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    call $generated/schema/SplitConfig#save)
  (func $start:tests/split-plugin.test~anonymous|4~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 0
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 4
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 1
    i32.load offset=4
    local.get 5
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 1
    i32.load offset=4
    local.get 5
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 6
    local.get 2
    local.get 0
    local.get 4
    local.get 1
    local.get 5
    i32.const 15584
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.get 6
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 3
    local.get 0
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 1
    local.get 2
    i32.store
    local.get 1
    call $src/split-plugin/handleSplitConfigCreated
    local.get 0
    i32.const 0
    call $tests/split-plugin-utils/createAutomationSwitchedEvent
    local.tee 1
    local.get 2
    i32.store
    local.get 1
    i32.load offset=20
    local.get 3
    i32.store offset=8
    local.get 1
    call $src/split-plugin/handleAutomationSwitched
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 16272
    local.get 1
    i32.load offset=20
    i32.load
    local.get 1
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 2
    i32.const 11040
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 16272
    local.get 2
    i32.const 15824
    i32.const 8528
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 16272
    local.get 2
    i32.const 15872
    i32.const 8560
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 16272
    local.get 2
    i32.const 15776
    local.get 1
    i32.load offset=20
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 0
    i32.const 10464
    i32.const 8560
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|4~anonymous|1 (type 2)
    (local i32)
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 1
    call $tests/split-plugin-utils/createAutomationSwitchedEvent
    local.tee 0
    call $src/split-plugin/handleAutomationSwitched
    i32.const 16272
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 0
    i32.const 15824
    i32.const 8560
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 16272
    local.get 0
    i32.const 15872
    i32.const 8528
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|4~anonymous|2 (type 2)
    (local i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 999
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 0
    call $tests/split-plugin-utils/createAutomationSwitchedEvent
    local.tee 0
    local.get 1
    i32.store
    local.get 0
    call $src/split-plugin/handleAutomationSwitched
    i32.const 16272
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/_assert.notInStore
    i32.eqz
    if  ;; label = @1
      i32.const 14032
      i32.const 11968
      i32.const 65
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/split-plugin.test~anonymous|4 (type 2)
    i32.const 15472
    i32.const 0
    i32.const 16336
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 16368
    i32.const 0
    i32.const 16480
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 13936
    i32.const 0
    i32.const 16512
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $generated/schema/SplitConfig#get:user (type 0) (param i32) (result i32)
    local.get 0
    i32.const 4608
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if (result i32)  ;; label = @1
      i32.const 9536
      i32.const 6000
      i32.const 150
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
    end)
  (func $src/split-plugin/handleSplitConfigDeleted (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 10992
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.tee 5
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 3
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 3
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 0
      i32.load offset=4
      drop
      local.get 5
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.store
      i32.const 1
      i32.const 16832
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/format
      call $~lib/@graphprotocol/graph-ts/index/log.log
      return
    end
    global.get $src/split-plugin/BIGINT_ZERO
    local.set 1
    local.get 0
    i32.load
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#constructor
    local.get 5
    call $generated/SplitPlugin/SplitPlugin/SplitPlugin#try_getSplitConfig
    local.tee 4
    i32.load
    if  ;; label = @1
      local.get 4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      i32.load offset=4
      i32.load offset=12
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      local.set 1
    end
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    local.set 6
    i32.const 4
    i32.const 64
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 4
    i32.const 5728
    block (result i32)  ;; label = @1
      local.get 6
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 6
      i32.const 6
      i32.store
      local.get 6
      local.get 7
      i64.store offset=8
      local.get 6
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 4640
    block (result i32)  ;; label = @1
      local.get 5
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 7
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 4608
    block (result i32)  ;; label = @1
      local.get 3
      call $generated/schema/SplitConfig#get:user
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 6
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 12912
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=16
      i32.load offset=40
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 7
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 12960
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=20
      i32.load
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 6
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 16928
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=20
      i32.load offset=8
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 6
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 10368
    block (result i32)  ;; label = @1
      local.get 3
      call $generated/schema/SplitConfig#get:tokenAddress
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 5
      i32.const 6
      i32.store
      local.get 5
      local.get 7
      i64.store offset=8
      local.get 5
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 16976
    block (result i32)  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 9360
    block (result i32)  ;; label = @1
      local.get 3
      call $generated/schema/SplitConfig#get:totalExecutions
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 17024
    block (result i32)  ;; label = @1
      local.get 3
      call $generated/schema/SplitConfig#get:totalFailedExecutions
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 17072
      i32.const 6000
      i32.const 939
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        local.set 0
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        local.set 1
        i32.const 17396
        local.get 0
        i32.store
        i32.const 17404
        local.get 1
        i32.store
        i32.const 17392
        i32.const 17388
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2512
        call $~lib/util/string/joinStringArray
        i32.const 6000
        i32.const 941
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 17440
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 4
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 3
    i32.const 5728
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 14800
      i32.const 6000
      i32.const 267
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 16
    i32.const 65
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store offset=4
    local.get 4
    i32.const 0
    i32.store offset=8
    local.get 4
    i32.const 0
    i32.store offset=12
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 4
    i32.const 10992
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 4
    i32.const 17504
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/index/store.loadRelated
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.load offset=12
      local.get 2
      i32.gt_s
      if  ;; label = @2
        local.get 1
        local.get 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.tee 4
        i32.const 0
        call $generated/schema/SplitRecipient#set:isActive
        local.get 4
        call $generated/schema/SplitRecipient#save
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 3
    i32.const 1
    call $generated/schema/SplitConfig#set:deleted
    local.get 3
    i32.const 10560
    block (result i32)  ;; label = @1
      local.get 0
      i32.load offset=16
      i32.load offset=40
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 1
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 3
    call $generated/schema/SplitConfig#save
    i32.const 5696
    local.get 3
    call $generated/schema/SplitConfig#get:user
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    if  ;; label = @1
      local.get 1
      i32.const 5856
      block (result i32)  ;; label = @2
        local.get 1
        call $generated/schema/User#get:activeConfigs
        global.get $src/split-plugin/BIGINT_ONE
        call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus
        i64.extend_i32_u
        local.set 7
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 2
        i32.const 7
        i32.store
        local.get 2
        local.get 7
        i64.store offset=8
        local.get 2
      end
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      call $generated/schema/User#save
    end
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i32.const 0
    i32.const 0
    i32.const 1
    i32.const 0
    call $src/split-plugin/updateGlobalStats)
  (func $start:tests/split-plugin.test~anonymous|5~anonymous|0 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/store/clearStore
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 3104
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 0
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 3
    i32.const 2
    i32.const 15
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 4
    i32.load offset=4
    drop
    i32.const 3328
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 4
    i32.load offset=4
    local.get 5
    i32.store
    i32.const 3440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    local.get 4
    i32.load offset=4
    local.get 5
    i32.store offset=4
    i32.const 2
    i32.const 17
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store
    i32.const 5000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 6
    local.get 5
    i32.load offset=4
    local.get 6
    i32.store offset=4
    i32.const 3552
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 6
    local.get 1
    local.get 0
    local.get 3
    local.get 4
    local.get 5
    i32.const 16800
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/numbers/BigInt>#map<i32>
    local.get 6
    call $tests/split-plugin-utils/mockGetSplitConfig
    local.get 2
    local.get 0
    call $tests/split-plugin-utils/createSplitConfigCreatedEvent
    local.tee 3
    local.get 1
    i32.store
    local.get 3
    call $src/split-plugin/handleSplitConfigCreated
    local.get 0
    call $tests/split-plugin-utils/createSplitExecutedEvent
    local.tee 3
    local.get 1
    i32.store
    local.get 3
    call $src/split-plugin/handleSplitConfigDeleted
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 17440
    local.get 3
    i32.load offset=20
    i32.load
    local.get 3
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#concat
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 4
    i32.const 4640
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 17440
    local.get 4
    i32.const 16976
    i32.const 12400
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 17440
    local.get 4
    i32.const 16928
    local.get 3
    i32.load offset=20
    i32.load offset=8
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 10992
    local.get 1
    i32.const 10512
    i32.const 8528
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 5696
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 5856
    i32.const 2736
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 9136
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 0
    i32.const 9232
    i32.const 2736
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 9136
    local.get 0
    i32.const 9296
    i32.const 12064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/split-plugin.test~anonymous|5 (type 2)
    i32.const 16656
    i32.const 0
    i32.const 17552
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                block  ;; label = @135
                                                                                                                                                                                                                                                                                  block  ;; label = @136
                                                                                                                                                                                                                                                                                    block  ;; label = @137
                                                                                                                                                                                                                                                                                      block  ;; label = @138
                                                                                                                                                                                                                                                                                        block  ;; label = @139
                                                                                                                                                                                                                                                                                          block  ;; label = @140
                                                                                                                                                                                                                                                                                            block  ;; label = @141
                                                                                                                                                                                                                                                                                              block  ;; label = @142
                                                                                                                                                                                                                                                                                                block  ;; label = @143
                                                                                                                                                                                                                                                                                                  block  ;; label = @144
                                                                                                                                                                                                                                                                                                    block  ;; label = @145
                                                                                                                                                                                                                                                                                                      block  ;; label = @146
                                                                                                                                                                                                                                                                                                        block  ;; label = @147
                                                                                                                                                                                                                                                                                                          block  ;; label = @148
                                                                                                                                                                                                                                                                                                            block  ;; label = @149
                                                                                                                                                                                                                                                                                                              block  ;; label = @150
                                                                                                                                                                                                                                                                                                                block  ;; label = @151
                                                                                                                                                                                                                                                                                                                  block  ;; label = @152
                                                                                                                                                                                                                                                                                                                    block  ;; label = @153
                                                                                                                                                                                                                                                                                                                      block  ;; label = @154
                                                                                                                                                                                                                                                                                                                        block  ;; label = @155
                                                                                                                                                                                                                                                                                                                          block  ;; label = @156
                                                                                                                                                                                                                                                                                                                            block  ;; label = @157
                                                                                                                                                                                                                                                                                                                              block  ;; label = @158
                                                                                                                                                                                                                                                                                                                                block  ;; label = @159
                                                                                                                                                                                                                                                                                                                                  block  ;; label = @160
                                                                                                                                                                                                                                                                                                                                    block  ;; label = @161
                                                                                                                                                                                                                                                                                                                                      block  ;; label = @162
                                                                                                                                                                                                                                                                                                                                        block  ;; label = @163
                                                                                                                                                                                                                                                                                                                                          block  ;; label = @164
                                                                                                                                                                                                                                                                                                                                            block  ;; label = @165
                                                                                                                                                                                                                                                                                                                                              block  ;; label = @166
                                                                                                                                                                                                                                                                                                                                                local.get 0
                                                                                                                                                                                                                                                                                                                                                if  ;; label = @167
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 1 (;@166;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 2 (;@165;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 3 (;@164;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 4
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 4 (;@163;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 5
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 5 (;@162;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 6
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 6 (;@161;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 7 (;@160;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 8
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 8 (;@159;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 9
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 9 (;@158;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 10
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 10 (;@157;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 11
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 11 (;@156;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 12
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 12 (;@155;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 13
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 13 (;@154;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 14
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 14 (;@153;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 15
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 15 (;@152;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 16
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 16 (;@151;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 17
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 17 (;@150;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 18
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 18 (;@149;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 19
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 19 (;@148;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 20
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 20 (;@147;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 21
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 21 (;@146;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 27
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 22 (;@145;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 28
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 23 (;@144;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 29
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 24 (;@143;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 22
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 25 (;@142;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 23
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 26 (;@141;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 24
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 27 (;@140;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 25
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 28 (;@139;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 26
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 29 (;@138;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 30
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 30 (;@137;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 31
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 31 (;@136;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 32
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 32 (;@135;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 33
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 33 (;@134;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 34
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 34 (;@133;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 35
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 35 (;@132;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 36
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 36 (;@131;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 37
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 37 (;@130;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 38
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 38 (;@129;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 39
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 39 (;@128;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 40
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 40 (;@127;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 41
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 41 (;@126;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 42
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 42 (;@125;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 43
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 43 (;@124;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 44
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 44 (;@123;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 45
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 45 (;@122;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 46
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 46 (;@121;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 47
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 47 (;@120;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 48
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 48 (;@119;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 49
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 49 (;@118;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 50
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 50 (;@117;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 51
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 51 (;@116;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 52
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 52 (;@115;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 53
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 53 (;@114;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 54
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 54 (;@113;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 55
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 55 (;@112;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 56
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 56 (;@111;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 57
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 57 (;@110;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 58
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 58 (;@109;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 59
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 59 (;@108;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 60
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 60 (;@107;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 61
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 61 (;@106;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 63
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 62 (;@105;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 64
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 63 (;@104;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 65
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 64 (;@103;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 66
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 65 (;@102;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 67
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 66 (;@101;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 68
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 67 (;@100;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 69
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 68 (;@99;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 70
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 69 (;@98;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 71
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 70 (;@97;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 72
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 71 (;@96;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 73
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 72 (;@95;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 74
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 73 (;@94;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 75
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 74 (;@93;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 76
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 75 (;@92;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 77
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 76 (;@91;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 78
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 77 (;@90;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 79
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 78 (;@89;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 80
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 79 (;@88;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 81
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 80 (;@87;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 82
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 81 (;@86;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 83
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 82 (;@85;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 84
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 83 (;@84;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 85
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 84 (;@83;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 86
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 85 (;@82;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1000
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 86 (;@81;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1001
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 87 (;@80;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1002
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 88 (;@79;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1003
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 89 (;@78;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 90 (;@77;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 91 (;@76;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 92 (;@75;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 93 (;@74;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 94 (;@73;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1505
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 95 (;@72;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1506
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 96 (;@71;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1507
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 97 (;@70;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1508
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 98 (;@69;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1509
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 99 (;@68;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1510
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 100 (;@67;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1511
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 101 (;@66;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1512
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 102 (;@65;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1513
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 103 (;@64;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1514
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 104 (;@63;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1515
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 105 (;@62;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1516
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 106 (;@61;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1517
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 107 (;@60;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1518
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 108 (;@59;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1519
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 109 (;@58;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1520
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 110 (;@57;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1521
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 111 (;@56;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1522
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 112 (;@55;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1523
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 113 (;@54;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1524
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 114 (;@53;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1525
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 115 (;@52;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1526
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 116 (;@51;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1527
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 117 (;@50;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1528
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 118 (;@49;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1529
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 119 (;@48;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1530
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 120 (;@47;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1531
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 121 (;@46;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1532
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 122 (;@45;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1533
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 123 (;@44;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1534
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 124 (;@43;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1535
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 125 (;@42;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1536
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 126 (;@41;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1537
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 127 (;@40;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1538
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 128 (;@39;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1539
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 129 (;@38;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1540
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 130 (;@37;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1541
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 131 (;@36;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1542
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 132 (;@35;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1543
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 133 (;@34;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1544
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 134 (;@33;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1545
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 135 (;@32;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1546
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 136 (;@31;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1547
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 137 (;@30;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1548
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 138 (;@29;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1549
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 139 (;@28;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1550
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 140 (;@27;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1551
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 141 (;@26;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1552
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 142 (;@25;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1553
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 143 (;@24;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1554
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 144 (;@23;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1555
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 145 (;@22;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1556
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 146 (;@21;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1557
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 147 (;@20;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1558
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 148 (;@19;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1559
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 149 (;@18;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1560
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 150 (;@17;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1561
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 151 (;@16;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1562
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 152 (;@15;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1563
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 153 (;@14;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 154 (;@13;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 155 (;@12;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 156 (;@11;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 157 (;@10;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 158 (;@9;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2505
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 159 (;@8;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2506
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 160 (;@7;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 161 (;@6;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 162 (;@5;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 163 (;@4;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 164 (;@3;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 165 (;@2;)
                                                                                                                                                                                                                                                                                                                                                  br 166 (;@1;)
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                i32.const 1
                                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                              i32.const 0
                                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                            i32.const 68
                                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                          i32.const 69
                                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                        i32.const 70
                                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                      i32.const 71
                                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                    i32.const 13
                                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                  i32.const 72
                                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                i32.const 73
                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                              i32.const 74
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 75
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 76
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 77
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 79
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 80
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 82
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 84
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 86
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 3
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 88
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 90
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 95
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 96
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 97
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 98
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 99
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 87
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 103
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 104
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 105
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 81
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 83
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 85
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 106
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 91
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 111
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 92
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 111
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 112
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 115
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 117
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 118
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 119
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 120
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 121
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 122
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 123
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 16
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 124
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 125
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 126
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 127
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 129
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 109
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 131
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 132
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 137
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 139
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 141
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 143
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 144
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 130
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 136
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 140
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 145
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 146
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 144
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 128
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 147
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 148
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 149
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 150
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 151
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 152
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 154
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 155
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 156
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 157
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 133
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 158
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 138
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 159
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 135
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 142
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 160
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 161
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 107
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 108
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 80
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 110
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 162
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 163
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 109
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 165
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 168
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 172
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 171
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 188
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 193
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 195
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 203
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 187
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 205
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 199
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 206
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 176
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 16
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 211
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 164
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 183
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 166
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 192
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 182
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 210
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 174
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 213
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 169
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 170
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 216
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 175
                                                                                                  return
                                                                                                end
                                                                                                i32.const 173
                                                                                                return
                                                                                              end
                                                                                              i32.const 207
                                                                                              return
                                                                                            end
                                                                                            i32.const 212
                                                                                            return
                                                                                          end
                                                                                          i32.const 200
                                                                                          return
                                                                                        end
                                                                                        i32.const 181
                                                                                        return
                                                                                      end
                                                                                      i32.const 217
                                                                                      return
                                                                                    end
                                                                                    i32.const 179
                                                                                    return
                                                                                  end
                                                                                  i32.const 178
                                                                                  return
                                                                                end
                                                                                i32.const 189
                                                                                return
                                                                              end
                                                                              i32.const 191
                                                                              return
                                                                            end
                                                                            i32.const 190
                                                                            return
                                                                          end
                                                                          i32.const 177
                                                                          return
                                                                        end
                                                                        i32.const 186
                                                                        return
                                                                      end
                                                                      i32.const 208
                                                                      return
                                                                    end
                                                                    i32.const 202
                                                                    return
                                                                  end
                                                                  i32.const 209
                                                                  return
                                                                end
                                                                i32.const 16
                                                                return
                                                              end
                                                              i32.const 180
                                                              return
                                                            end
                                                            i32.const 16
                                                            return
                                                          end
                                                          i32.const 194
                                                          return
                                                        end
                                                        i32.const 167
                                                        return
                                                      end
                                                      i32.const 201
                                                      return
                                                    end
                                                    i32.const 219
                                                    return
                                                  end
                                                  i32.const 197
                                                  return
                                                end
                                                i32.const 198
                                                return
                                              end
                                              i32.const 196
                                              return
                                            end
                                            i32.const 185
                                            return
                                          end
                                          i32.const 214
                                          return
                                        end
                                        i32.const 184
                                        return
                                      end
                                      i32.const 220
                                      return
                                    end
                                    i32.const 204
                                    return
                                  end
                                  i32.const 215
                                  return
                                end
                                i32.const 221
                                return
                              end
                              i32.const 218
                              return
                            end
                            i32.const 222
                            return
                          end
                          i32.const 225
                          return
                        end
                        i32.const 223
                        return
                      end
                      i32.const 224
                      return
                    end
                    i32.const 226
                    return
                  end
                  i32.const 227
                  return
                end
                i32.const 228
                return
              end
              i32.const 229
              return
            end
            i32.const 230
            return
          end
          i32.const 16
          return
        end
        i32.const 231
        return
      end
      i32.const 109
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 2)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 17708
    global.set $~lib/rt/stub/offset
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1904
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1904
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/defaults/defaultAddress
    global.get $~lib/matchstick-as/defaults/defaultAddress
    global.set $~lib/matchstick-as/defaults/defaultAddressBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultBigInt
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultIntBytes
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $src/split-plugin/BIGINT_ZERO
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $src/split-plugin/BIGINT_ONE
    i32.const 100000000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    global.set $src/split-plugin/GLOBAL_STATS_ID
    i32.const 2800
    i32.const 12128
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 12160
    i32.const 12464
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 12496
    i32.const 14160
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 14192
    i32.const 15360
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 15392
    i32.const 16544
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 16576
    i32.const 17584
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe)
  (table $0 24 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $src/split-plugin/BIGINT_ZERO (mut i32) (i32.const 0))
  (global $src/split-plugin/BIGINT_ONE (mut i32) (i32.const 0))
  (global $src/split-plugin/GLOBAL_STATS_ID (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TransactionReceipt i32 (i32.const 1000))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Log i32 (i32.const 1001))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayH256 i32 (i32.const 1002))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayLog i32 (i32.const 1003))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAny i32 (i32.const 1500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAnyArray i32 (i32.const 1501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBytesArray i32 (i32.const 1502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoinArray i32 (i32.const 1503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSigArray i32 (i32.const 1504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventArray i32 (i32.const 1505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttributeArray i32 (i32.const 1506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceArray i32 (i32.const 1507))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoArray i32 (i32.const 1508))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfoArray i32 (i32.const 1509))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResultArray i32 (i32.const 1510))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorArray i32 (i32.const 1511))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdateArray i32 (i32.const 1512))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAuthInfo i32 (i32.const 1513))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlock i32 (i32.const 1514))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockId i32 (i32.const 1515))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockIdFlagEnum i32 (i32.const 1516))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockParams i32 (i32.const 1517))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoin i32 (i32.const 1518))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommit i32 (i32.const 1519))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSig i32 (i32.const 1520))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCompactBitArray i32 (i32.const 1521))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensus i32 (i32.const 1522))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensusParams i32 (i32.const 1523))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuplicateVoteEvidence i32 (i32.const 1524))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuration i32 (i32.const 1525))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvent i32 (i32.const 1526))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttribute i32 (i32.const 1527))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventData i32 (i32.const 1528))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventVote i32 (i32.const 1529))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidence i32 (i32.const 1530))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceList i32 (i32.const 1531))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceParams i32 (i32.const 1532))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosFee i32 (i32.const 1533))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeader i32 (i32.const 1534))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeaderOnlyBlock i32 (i32.const 1535))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightBlock i32 (i32.const 1536))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightClientAttackEvidence i32 (i32.const 1537))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfo i32 (i32.const 1538))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoMulti i32 (i32.const 1539))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoSingle i32 (i32.const 1540))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPartSetHeader i32 (i32.const 1541))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPublicKey i32 (i32.const 1542))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseBeginBlock i32 (i32.const 1543))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseDeliverTx i32 (i32.const 1544))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseEndBlock i32 (i32.const 1545))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignModeEnum i32 (i32.const 1546))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedHeader i32 (i32.const 1547))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedMsgTypeEnum i32 (i32.const 1548))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfo i32 (i32.const 1549))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTimestamp i32 (i32.const 1550))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTip i32 (i32.const 1551))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionData i32 (i32.const 1552))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTx i32 (i32.const 1553))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxBody i32 (i32.const 1554))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResult i32 (i32.const 1555))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidator i32 (i32.const 1556))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorParams i32 (i32.const 1557))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSet i32 (i32.const 1558))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSetUpdates i32 (i32.const 1559))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdate i32 (i32.const 1560))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosVersionParams i32 (i32.const 1561))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosMessageData i32 (i32.const 1562))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionContext i32 (i32.const 1563))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveBlock i32 (i32.const 2500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveProofOfAccess i32 (i32.const 2501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTag i32 (i32.const 2502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTagArray i32 (i32.const 2503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransaction i32 (i32.const 2504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionArray i32 (i32.const 2505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionWithBlockPtr i32 (i32.const 2506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetBlock i32 (i32.const 3500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetTransaction i32 (i32.const 3501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetTransactionTypeEnum i32 (i32.const 3502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetEvent i32 (i32.const 3503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetArrayBytes i32 (i32.const 3504))
  (global $~started (mut i32) (i32.const 0))
  (export "TypeId.String" (global 8))
  (export "TypeId.ArrayBuffer" (global 9))
  (export "TypeId.Int8Array" (global 10))
  (export "TypeId.Int16Array" (global 11))
  (export "TypeId.Int32Array" (global 12))
  (export "TypeId.Int64Array" (global 13))
  (export "TypeId.Uint8Array" (global 14))
  (export "TypeId.Uint16Array" (global 15))
  (export "TypeId.Uint32Array" (global 16))
  (export "TypeId.Uint64Array" (global 17))
  (export "TypeId.Float32Array" (global 18))
  (export "TypeId.Float64Array" (global 19))
  (export "TypeId.BigDecimal" (global 20))
  (export "TypeId.ArrayBool" (global 21))
  (export "TypeId.ArrayUint8Array" (global 22))
  (export "TypeId.ArrayEthereumValue" (global 23))
  (export "TypeId.ArrayStoreValue" (global 24))
  (export "TypeId.ArrayJsonValue" (global 25))
  (export "TypeId.ArrayString" (global 26))
  (export "TypeId.ArrayEventParam" (global 27))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 28))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 29))
  (export "TypeId.SmartContractCall" (global 30))
  (export "TypeId.EventParam" (global 31))
  (export "TypeId.EthereumTransaction" (global 32))
  (export "TypeId.EthereumBlock" (global 33))
  (export "TypeId.EthereumCall" (global 34))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 35))
  (export "TypeId.WrappedBool" (global 36))
  (export "TypeId.WrappedJsonValue" (global 37))
  (export "TypeId.EthereumValue" (global 38))
  (export "TypeId.StoreValue" (global 39))
  (export "TypeId.JsonValue" (global 40))
  (export "TypeId.EthereumEvent" (global 41))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 42))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 43))
  (export "TypeId.TypedMapStringStoreValue" (global 44))
  (export "TypeId.TypedMapStringJsonValue" (global 45))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 46))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 47))
  (export "TypeId.ResultJsonValueBool" (global 48))
  (export "TypeId.ArrayU8" (global 49))
  (export "TypeId.ArrayU16" (global 50))
  (export "TypeId.ArrayU32" (global 51))
  (export "TypeId.ArrayU64" (global 52))
  (export "TypeId.ArrayI8" (global 53))
  (export "TypeId.ArrayI16" (global 54))
  (export "TypeId.ArrayI32" (global 55))
  (export "TypeId.ArrayI64" (global 56))
  (export "TypeId.ArrayF32" (global 57))
  (export "TypeId.ArrayF64" (global 58))
  (export "TypeId.ArrayBigDecimal" (global 59))
  (export "TypeId.NearArrayDataReceiver" (global 60))
  (export "TypeId.NearArrayCryptoHash" (global 61))
  (export "TypeId.NearArrayActionValue" (global 62))
  (export "TypeId.NearMerklePath" (global 63))
  (export "TypeId.NearArrayValidatorStake" (global 64))
  (export "TypeId.NearArraySlashedValidator" (global 65))
  (export "TypeId.NearArraySignature" (global 66))
  (export "TypeId.NearArrayChunkHeader" (global 67))
  (export "TypeId.NearAccessKeyPermissionValue" (global 68))
  (export "TypeId.NearActionValue" (global 69))
  (export "TypeId.NearDirection" (global 70))
  (export "TypeId.NearPublicKey" (global 71))
  (export "TypeId.NearSignature" (global 72))
  (export "TypeId.NearFunctionCallPermission" (global 73))
  (export "TypeId.NearFullAccessPermission" (global 74))
  (export "TypeId.NearAccessKey" (global 75))
  (export "TypeId.NearDataReceiver" (global 76))
  (export "TypeId.NearCreateAccountAction" (global 77))
  (export "TypeId.NearDeployContractAction" (global 78))
  (export "TypeId.NearFunctionCallAction" (global 79))
  (export "TypeId.NearTransferAction" (global 80))
  (export "TypeId.NearStakeAction" (global 81))
  (export "TypeId.NearAddKeyAction" (global 82))
  (export "TypeId.NearDeleteKeyAction" (global 83))
  (export "TypeId.NearDeleteAccountAction" (global 84))
  (export "TypeId.NearActionReceipt" (global 85))
  (export "TypeId.NearSuccessStatus" (global 86))
  (export "TypeId.NearMerklePathItem" (global 87))
  (export "TypeId.NearExecutionOutcome" (global 88))
  (export "TypeId.NearSlashedValidator" (global 89))
  (export "TypeId.NearBlockHeader" (global 90))
  (export "TypeId.NearValidatorStake" (global 91))
  (export "TypeId.NearChunkHeader" (global 92))
  (export "TypeId.NearBlock" (global 93))
  (export "TypeId.NearReceiptWithOutcome" (global 94))
  (export "TypeId.TransactionReceipt" (global 95))
  (export "TypeId.Log" (global 96))
  (export "TypeId.ArrayH256" (global 97))
  (export "TypeId.ArrayLog" (global 98))
  (export "TypeId.CosmosAny" (global 99))
  (export "TypeId.CosmosAnyArray" (global 100))
  (export "TypeId.CosmosBytesArray" (global 101))
  (export "TypeId.CosmosCoinArray" (global 102))
  (export "TypeId.CosmosCommitSigArray" (global 103))
  (export "TypeId.CosmosEventArray" (global 104))
  (export "TypeId.CosmosEventAttributeArray" (global 105))
  (export "TypeId.CosmosEvidenceArray" (global 106))
  (export "TypeId.CosmosModeInfoArray" (global 107))
  (export "TypeId.CosmosSignerInfoArray" (global 108))
  (export "TypeId.CosmosTxResultArray" (global 109))
  (export "TypeId.CosmosValidatorArray" (global 110))
  (export "TypeId.CosmosValidatorUpdateArray" (global 111))
  (export "TypeId.CosmosAuthInfo" (global 112))
  (export "TypeId.CosmosBlock" (global 113))
  (export "TypeId.CosmosBlockId" (global 114))
  (export "TypeId.CosmosBlockIdFlagEnum" (global 115))
  (export "TypeId.CosmosBlockParams" (global 116))
  (export "TypeId.CosmosCoin" (global 117))
  (export "TypeId.CosmosCommit" (global 118))
  (export "TypeId.CosmosCommitSig" (global 119))
  (export "TypeId.CosmosCompactBitArray" (global 120))
  (export "TypeId.CosmosConsensus" (global 121))
  (export "TypeId.CosmosConsensusParams" (global 122))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 123))
  (export "TypeId.CosmosDuration" (global 124))
  (export "TypeId.CosmosEvent" (global 125))
  (export "TypeId.CosmosEventAttribute" (global 126))
  (export "TypeId.CosmosEventData" (global 127))
  (export "TypeId.CosmosEventVote" (global 128))
  (export "TypeId.CosmosEvidence" (global 129))
  (export "TypeId.CosmosEvidenceList" (global 130))
  (export "TypeId.CosmosEvidenceParams" (global 131))
  (export "TypeId.CosmosFee" (global 132))
  (export "TypeId.CosmosHeader" (global 133))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 134))
  (export "TypeId.CosmosLightBlock" (global 135))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 136))
  (export "TypeId.CosmosModeInfo" (global 137))
  (export "TypeId.CosmosModeInfoMulti" (global 138))
  (export "TypeId.CosmosModeInfoSingle" (global 139))
  (export "TypeId.CosmosPartSetHeader" (global 140))
  (export "TypeId.CosmosPublicKey" (global 141))
  (export "TypeId.CosmosResponseBeginBlock" (global 142))
  (export "TypeId.CosmosResponseDeliverTx" (global 143))
  (export "TypeId.CosmosResponseEndBlock" (global 144))
  (export "TypeId.CosmosSignModeEnum" (global 145))
  (export "TypeId.CosmosSignedHeader" (global 146))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 147))
  (export "TypeId.CosmosSignerInfo" (global 148))
  (export "TypeId.CosmosTimestamp" (global 149))
  (export "TypeId.CosmosTip" (global 150))
  (export "TypeId.CosmosTransactionData" (global 151))
  (export "TypeId.CosmosTx" (global 152))
  (export "TypeId.CosmosTxBody" (global 153))
  (export "TypeId.CosmosTxResult" (global 154))
  (export "TypeId.CosmosValidator" (global 155))
  (export "TypeId.CosmosValidatorParams" (global 156))
  (export "TypeId.CosmosValidatorSet" (global 157))
  (export "TypeId.CosmosValidatorSetUpdates" (global 158))
  (export "TypeId.CosmosValidatorUpdate" (global 159))
  (export "TypeId.CosmosVersionParams" (global 160))
  (export "TypeId.CosmosMessageData" (global 161))
  (export "TypeId.CosmosTransactionContext" (global 162))
  (export "TypeId.ArweaveBlock" (global 163))
  (export "TypeId.ArweaveProofOfAccess" (global 164))
  (export "TypeId.ArweaveTag" (global 165))
  (export "TypeId.ArweaveTagArray" (global 166))
  (export "TypeId.ArweaveTransaction" (global 167))
  (export "TypeId.ArweaveTransactionArray" (global 168))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 169))
  (export "TypeId.StarknetBlock" (global 170))
  (export "TypeId.StarknetTransaction" (global 171))
  (export "TypeId.StarknetTransactionTypeEnum" (global 172))
  (export "TypeId.StarknetEvent" (global 173))
  (export "TypeId.StarknetArrayBytes" (global 174))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 $start:tests/split-plugin.test~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|0 $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|1~anonymous|0 $start:tests/split-plugin.test~anonymous|1 $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|2~anonymous|0 $start:tests/split-plugin.test~anonymous|2~anonymous|1 $start:tests/split-plugin.test~anonymous|2 $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|3~anonymous|0 $start:tests/split-plugin.test~anonymous|3~anonymous|1 $start:tests/split-plugin.test~anonymous|3 $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|4~anonymous|0 $start:tests/split-plugin.test~anonymous|4~anonymous|1 $start:tests/split-plugin.test~anonymous|4~anonymous|2 $start:tests/split-plugin.test~anonymous|4 $start:tests/split-plugin.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/split-plugin.test~anonymous|5~anonymous|0 $start:tests/split-plugin.test~anonymous|5)
  (data (;0;) (i32.const 1036) "\1c")
  (data (;1;) (i32.const 1048) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;2;) (i32.const 1068) "\1c")
  (data (;3;) (i32.const 1080) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;4;) (i32.const 1100) ",")
  (data (;5;) (i32.const 1112) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;6;) (i32.const 1148) "\1c")
  (data (;7;) (i32.const 1160) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;8;) (i32.const 1180) "\1c")
  (data (;9;) (i32.const 1192) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;10;) (i32.const 1212) "\1c")
  (data (;11;) (i32.const 1224) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;12;) (i32.const 1244) "\1c")
  (data (;13;) (i32.const 1256) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;14;) (i32.const 1276) "\1c")
  (data (;15;) (i32.const 1288) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;16;) (i32.const 1308) "\1c")
  (data (;17;) (i32.const 1320) "\01\00\00\00\08\00\00\00I\00n\00t\008")
  (data (;18;) (i32.const 1340) ",")
  (data (;19;) (i32.const 1352) "\01\00\00\00\12\00\00\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;20;) (i32.const 1388) "<")
  (data (;21;) (i32.const 1404) "(\00\00\00 \04\00\00@\04\00\00`\04\00\00\90\04\00\00\b0\04\00\00\d0\04\00\00\f0\04\00\00\10\05\00\000\05\00\00P\05")
  (data (;22;) (i32.const 1452) ",")
  (data (;23;) (i32.const 1464) "\03\00\00\00\10\00\00\00\80\05\00\00\80\05\00\00(\00\00\00\0a")
  (data (;24;) (i32.const 1500) "l")
  (data (;25;) (i32.const 1512) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;26;) (i32.const 1612) ",")
  (data (;27;) (i32.const 1624) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;28;) (i32.const 1660) ",")
  (data (;29;) (i32.const 1672) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;30;) (i32.const 1708) ",")
  (data (;31;) (i32.const 1720) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;32;) (i32.const 1756) "<")
  (data (;33;) (i32.const 1768) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;34;) (i32.const 1820) "<")
  (data (;35;) (i32.const 1832) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;36;) (i32.const 1884) "l")
  (data (;37;) (i32.const 1896) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;38;) (i32.const 1996) "<")
  (data (;39;) (i32.const 2008) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;40;) (i32.const 2060) "<")
  (data (;41;) (i32.const 2072) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;42;) (i32.const 2124) "<")
  (data (;43;) (i32.const 2136) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;44;) (i32.const 2188) "<")
  (data (;45;) (i32.const 2200) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;46;) (i32.const 2252) "\9c")
  (data (;47;) (i32.const 2264) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;48;) (i32.const 2412) ",")
  (data (;49;) (i32.const 2424) "\01\00\00\00\1c\00\00\000\00x\006\007\006\00c\006\00f\006\002\006\001\006\00c")
  (data (;50;) (i32.const 2460) "\1c")
  (data (;51;) (i32.const 2472) "\01\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
  (data (;52;) (i32.const 2492) "\1c")
  (data (;53;) (i32.const 2504) "\01")
  (data (;54;) (i32.const 2524) "<")
  (data (;55;) (i32.const 2536) "\01\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;56;) (i32.const 2588) "|")
  (data (;57;) (i32.const 2600) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;58;) (i32.const 2716) "\1c")
  (data (;59;) (i32.const 2728) "\01\00\00\00\02\00\00\000")
  (data (;60;) (i32.const 2748) "\1c")
  (data (;61;) (i32.const 2760) "\01\00\00\00\02\00\00\00x")
  (data (;62;) (i32.const 2780) "<")
  (data (;63;) (i32.const 2792) "\01\00\00\00\22\00\00\00S\00p\00l\00i\00t\00P\00l\00u\00g\00i\00n\00 \00T\00e\00s\00t\00s")
  (data (;64;) (i32.const 2844) "|")
  (data (;65;) (i32.const 2856) "\01\00\00\00j\00\00\00h\00a\00n\00d\00l\00e\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00C\00r\00e\00a\00t\00e\00d\00 \00c\00r\00e\00a\00t\00e\00s\00 \00U\00s\00e\00r\00 \00a\00n\00d\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g")
  (data (;66;) (i32.const 2972) "l")
  (data (;67;) (i32.const 2984) "\01\00\00\00T\00\00\000\00x\00a\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;68;) (i32.const 3084) "l")
  (data (;69;) (i32.const 3096) "\01\00\00\00T\00\00\000\00x\00a\009\00a\00a\00C\008\00b\001\007\00F\007\00f\00b\007\00d\00F\000\001\000\004\00E\00C\00d\005\003\00F\008\00b\006\003\005\00b\008\000\005\002\00b\009\007\00E")
  (data (;70;) (i32.const 3196) "l")
  (data (;71;) (i32.const 3208) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00d\00e\00a\00d")
  (data (;72;) (i32.const 3308) "l")
  (data (;73;) (i32.const 3320) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001")
  (data (;74;) (i32.const 3420) "l")
  (data (;75;) (i32.const 3432) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002")
  (data (;76;) (i32.const 3532) "<")
  (data (;77;) (i32.const 3544) "\01\00\00\00&\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;78;) (i32.const 3596) "<")
  (data (;79;) (i32.const 3608) "\01\00\00\00(\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00c\00o\00n\00v\00e\00r\00t\00i\00n\00g\00 ")
  (data (;80;) (i32.const 3660) ",")
  (data (;81;) (i32.const 3672) "\01\00\00\00\0e\00\00\00 \00t\00o\00 \00i\003\002")
  (data (;82;) (i32.const 3708) "\1c")
  (data (;83;) (i32.const 3720) "\12\00\00\00\08\00\00\00\01")
  (data (;84;) (i32.const 3740) ",")
  (data (;85;) (i32.const 3752) "\01\00\00\00\1c\00\00\00g\00e\00t\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g")
  (data (;86;) (i32.const 3788) "\9c")
  (data (;87;) (i32.const 3800) "\01\00\00\00\82\00\00\00g\00e\00t\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00(\00u\00i\00n\00t\002\005\006\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00,\00a\00d\00d\00r\00e\00s\00s\00[\00]\00,\00u\00i\00n\00t\003\002\00[\00]\00,\00u\00i\00n\00t\002\005\006\00,\00b\00o\00o\00l\00)")
  (data (;88;) (i32.const 3948) "\1c")
  (data (;89;) (i32.const 3980) "\1c")
  (data (;90;) (i32.const 4012) "\5c")
  (data (;91;) (i32.const 4024) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;92;) (i32.const 4108) "L")
  (data (;93;) (i32.const 4120) "\01\00\00\002\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00l\00o\00g\00.\00t\00s")
  (data (;94;) (i32.const 4188) "|")
  (data (;95;) (i32.const 4200) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;96;) (i32.const 4316) "\5c")
  (data (;97;) (i32.const 4328) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;98;) (i32.const 4412) "l")
  (data (;99;) (i32.const 4424) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;100;) (i32.const 4524) "\1c")
  (data (;101;) (i32.const 4556) "\1c")
  (data (;102;) (i32.const 4588) "\1c")
  (data (;103;) (i32.const 4600) "\01\00\00\00\08\00\00\00u\00s\00e\00r")
  (data (;104;) (i32.const 4620) ",")
  (data (;105;) (i32.const 4632) "\01\00\00\00\16\00\00\00c\00o\00n\00f\00i\00g\00I\00n\00d\00e\00x")
  (data (;106;) (i32.const 4668) ",")
  (data (;107;) (i32.const 4680) "\01\00\00\00\16\00\00\00S\00p\00l\00i\00t\00P\00l\00u\00g\00i\00n")
  (data (;108;) (i32.const 4716) "\5c")
  (data (;109;) (i32.const 4728) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;110;) (i32.const 4812) "\5c")
  (data (;111;) (i32.const 4824) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;112;) (i32.const 4908) "\5c")
  (data (;113;) (i32.const 4920) "\01\00\00\00F\00\00\00a\00c\00c\00e\00s\00s\00e\00d\00 \00v\00a\00l\00u\00e\00 \00o\00f\00 \00a\00 \00r\00e\00v\00e\00r\00t\00e\00d\00 \00c\00a\00l\00l\00,\00 ")
  (data (;114;) (i32.const 5004) "\9c")
  (data (;115;) (i32.const 5016) "\01\00\00\00\88\00\00\00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00t\00h\00e\00 \00`\00r\00e\00v\00e\00r\00t\00e\00d\00`\00 \00f\00i\00e\00l\00d\00 \00b\00e\00f\00o\00r\00e\00 \00a\00c\00c\00e\00s\00s\00i\00n\00g\00 \00t\00h\00e\00 \00`\00v\00a\00l\00u\00e\00`\00 \00f\00i\00e\00l\00d")
  (data (;116;) (i32.const 5164) "l")
  (data (;117;) (i32.const 5176) "\01\00\00\00\5c\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00f\00i\00x\00e\00d\00 \00a\00r\00r\00a\00y\00.")
  (data (;118;) (i32.const 5276) "\5c")
  (data (;119;) (i32.const 5288) "\01\00\00\00>\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;120;) (i32.const 5372) "\5c")
  (data (;121;) (i32.const 5384) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;122;) (i32.const 5468) "l")
  (data (;123;) (i32.const 5480) "\01\00\00\00R\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00g\00e\00t\00 \00c\00o\00n\00f\00i\00g\00 \00d\00e\00t\00a\00i\00l\00s\00 \00f\00o\00r\00 \00i\00n\00d\00e\00x\00 \00{\00}")
  (data (;124;) (i32.const 5580) "\5c")
  (data (;125;) (i32.const 5592) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00i\00n\00d\00e\00x\00.\00t\00s")
  (data (;126;) (i32.const 5676) "\1c")
  (data (;127;) (i32.const 5688) "\01\00\00\00\08\00\00\00U\00s\00e\00r")
  (data (;128;) (i32.const 5708) "\1c")
  (data (;129;) (i32.const 5720) "\01\00\00\00\04\00\00\00i\00d")
  (data (;130;) (i32.const 5740) ",")
  (data (;131;) (i32.const 5752) "\01\00\00\00\12\00\00\00c\00r\00e\00a\00t\00e\00d\00A\00t")
  (data (;132;) (i32.const 5788) ",")
  (data (;133;) (i32.const 5800) "\01\00\00\00\18\00\00\00t\00o\00t\00a\00l\00C\00o\00n\00f\00i\00g\00s")
  (data (;134;) (i32.const 5836) ",")
  (data (;135;) (i32.const 5848) "\01\00\00\00\1a\00\00\00a\00c\00t\00i\00v\00e\00C\00o\00n\00f\00i\00g\00s")
  (data (;136;) (i32.const 5884) "\5c")
  (data (;137;) (i32.const 5896) "\01\00\00\00J\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00U\00s\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;138;) (i32.const 5980) "<")
  (data (;139;) (i32.const 5992) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;140;) (i32.const 6044) "\9c")
  (data (;141;) (i32.const 6056) "\01\00\00\00\80\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00U\00s\00e\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;142;) (i32.const 6204) ",")
  (data (;143;) (i32.const 6216) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;144;) (i32.const 6252) ",")
  (data (;145;) (i32.const 6264) "+\00\00\00\14\00\00\00\b0\17\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;146;) (i32.const 6300) "<")
  (data (;147;) (i32.const 6312) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;148;) (i32.const 6364) "l")
  (data (;149;) (i32.const 6376) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;150;) (i32.const 6476) "<")
  (data (;151;) (i32.const 6488) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;152;) (i32.const 6540) "|")
  (data (;153;) (i32.const 6552) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;154;) (i32.const 6668) "<")
  (data (;155;) (i32.const 6680) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;156;) (i32.const 6732) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;157;) (i32.const 7132) "\1c\04")
  (data (;158;) (i32.const 7144) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;159;) (i32.const 8188) "\5c")
  (data (;160;) (i32.const 8200) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;161;) (i32.const 8284) "<")
  (data (;162;) (i32.const 8296) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\006\004\00.")
  (data (;163;) (i32.const 8348) "L")
  (data (;164;) (i32.const 8360) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;165;) (i32.const 8428) "L")
  (data (;166;) (i32.const 8440) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;167;) (i32.const 8508) "\1c")
  (data (;168;) (i32.const 8520) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;169;) (i32.const 8540) "\1c")
  (data (;170;) (i32.const 8552) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;171;) (i32.const 8572) "<")
  (data (;172;) (i32.const 8584) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;173;) (i32.const 8636) "\1c")
  (data (;174;) (i32.const 8648) "\01\00\00\00\02\00\00\00[")
  (data (;175;) (i32.const 8668) "\1c")
  (data (;176;) (i32.const 8680) ".\00\00\00\08\00\00\00\02")
  (data (;177;) (i32.const 8700) "\1c")
  (data (;178;) (i32.const 8712) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;179;) (i32.const 8732) "\1c")
  (data (;180;) (i32.const 8744) "\01\00\00\00\02\00\00\00]")
  (data (;181;) (i32.const 8764) "L")
  (data (;182;) (i32.const 8776) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;183;) (i32.const 8844) "<")
  (data (;184;) (i32.const 8856) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;185;) (i32.const 8908) "<")
  (data (;186;) (i32.const 8920) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;187;) (i32.const 8972) "\1c")
  (data (;188;) (i32.const 8984) "\01\00\00\00\02\00\00\00)")
  (data (;189;) (i32.const 9004) "\1c")
  (data (;190;) (i32.const 9016) "+\00\00\00\0c\00\00\00\e0\22\00\00\00\00\00\00 #")
  (data (;191;) (i32.const 9036) ",")
  (data (;192;) (i32.const 9048) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;193;) (i32.const 9084) "\1c")
  (data (;194;) (i32.const 9096) "+\00\00\00\0c\00\00\00`#\00\00\00\00\00\00 #")
  (data (;195;) (i32.const 9116) ",")
  (data (;196;) (i32.const 9128) "\01\00\00\00\16\00\00\00G\00l\00o\00b\00a\00l\00S\00t\00a\00t\00s")
  (data (;197;) (i32.const 9164) ",")
  (data (;198;) (i32.const 9176) "\01\00\00\00\14\00\00\00t\00o\00t\00a\00l\00U\00s\00e\00r\00s")
  (data (;199;) (i32.const 9212) "<")
  (data (;200;) (i32.const 9224) "\01\00\00\00$\00\00\00t\00o\00t\00a\00l\00A\00c\00t\00i\00v\00e\00C\00o\00n\00f\00i\00g\00s")
  (data (;201;) (i32.const 9276) "<")
  (data (;202;) (i32.const 9288) "\01\00\00\00&\00\00\00t\00o\00t\00a\00l\00D\00e\00l\00e\00t\00e\00d\00C\00o\00n\00f\00i\00g\00s")
  (data (;203;) (i32.const 9340) "<")
  (data (;204;) (i32.const 9352) "\01\00\00\00\1e\00\00\00t\00o\00t\00a\00l\00E\00x\00e\00c\00u\00t\00i\00o\00n\00s")
  (data (;205;) (i32.const 9404) "<")
  (data (;206;) (i32.const 9416) "\01\00\00\00*\00\00\00t\00o\00t\00a\00l\00F\00a\00i\00l\00e\00d\00E\00x\00e\00c\00u\00t\00i\00o\00n\00s")
  (data (;207;) (i32.const 9468) ",")
  (data (;208;) (i32.const 9480) "\01\00\00\00\16\00\00\00l\00a\00s\00t\00U\00p\00d\00a\00t\00e\00d")
  (data (;209;) (i32.const 9516) "l")
  (data (;210;) (i32.const 9528) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00r\00e\00t\00u\00r\00n\00 \00n\00u\00l\00l\00 \00f\00o\00r\00 \00a\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00f\00i\00e\00l\00d\00.")
  (data (;211;) (i32.const 9628) "|")
  (data (;212;) (i32.const 9640) "\01\00\00\00l\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00m\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;213;) (i32.const 9756) "l")
  (data (;214;) (i32.const 9768) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00n\00u\00m\00b\00e\00r\00s\00.\00t\00s")
  (data (;215;) (i32.const 9868) "\8c")
  (data (;216;) (i32.const 9880) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00b\00t\00r\00a\00c\00t\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;217;) (i32.const 10012) "l")
  (data (;218;) (i32.const 10024) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00G\00l\00o\00b\00a\00l\00S\00t\00a\00t\00s\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;219;) (i32.const 10124) "\ac")
  (data (;220;) (i32.const 10136) "\01\00\00\00\8e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00G\00l\00o\00b\00a\00l\00S\00t\00a\00t\00s\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;221;) (i32.const 10300) ",")
  (data (;222;) (i32.const 10312) "+\00\00\00\14\00\00\00\a0'\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;223;) (i32.const 10348) ",")
  (data (;224;) (i32.const 10360) "\01\00\00\00\18\00\00\00t\00o\00k\00e\00n\00A\00d\00d\00r\00e\00s\00s")
  (data (;225;) (i32.const 10396) ",")
  (data (;226;) (i32.const 10408) "\01\00\00\00\1c\00\00\00m\00i\00n\00T\00o\00k\00e\00n\00A\00m\00o\00u\00n\00t")
  (data (;227;) (i32.const 10444) ",")
  (data (;228;) (i32.const 10456) "\01\00\00\00\1c\00\00\00i\00s\00S\00p\00l\00i\00t\00E\00n\00a\00b\00l\00e\00d")
  (data (;229;) (i32.const 10492) ",")
  (data (;230;) (i32.const 10504) "\01\00\00\00\0e\00\00\00d\00e\00l\00e\00t\00e\00d")
  (data (;231;) (i32.const 10540) ",")
  (data (;232;) (i32.const 10552) "\01\00\00\00\12\00\00\00u\00p\00d\00a\00t\00e\00d\00A\00t")
  (data (;233;) (i32.const 10588) ",")
  (data (;234;) (i32.const 10600) "\01\00\00\00\1a\00\00\00c\00r\00e\00a\00t\00e\00d\00T\00x\00H\00a\00s\00h")
  (data (;235;) (i32.const 10636) "l")
  (data (;236;) (i32.const 10648) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;237;) (i32.const 10748) "\ac")
  (data (;238;) (i32.const 10760) "\01\00\00\00\8e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;239;) (i32.const 10924) ",")
  (data (;240;) (i32.const 10936) "+\00\00\00\14\00\00\00\10*\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;241;) (i32.const 10972) ",")
  (data (;242;) (i32.const 10984) "\01\00\00\00\16\00\00\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g")
  (data (;243;) (i32.const 11020) "\1c")
  (data (;244;) (i32.const 11032) "\01\00\00\00\0c\00\00\00c\00o\00n\00f\00i\00g")
  (data (;245;) (i32.const 11052) ",")
  (data (;246;) (i32.const 11064) "\01\00\00\00\12\00\00\00r\00e\00c\00i\00p\00i\00e\00n\00t")
  (data (;247;) (i32.const 11100) ",")
  (data (;248;) (i32.const 11112) "\01\00\00\00\14\00\00\00p\00e\00r\00c\00e\00n\00t\00a\00g\00e")
  (data (;249;) (i32.const 11148) ",")
  (data (;250;) (i32.const 11160) "\01\00\00\00\0e\00\00\001\000\000\000\000\000\000")
  (data (;251;) (i32.const 11196) "\8c")
  (data (;252;) (i32.const 11208) "\01\00\00\00z\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00i\00v\00i\00d\00e\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;253;) (i32.const 11340) "<")
  (data (;254;) (i32.const 11352) "\01\00\00\00&\00\00\00p\00e\00r\00c\00e\00n\00t\00a\00g\00e\00F\00o\00r\00m\00a\00t\00t\00e\00d")
  (data (;255;) (i32.const 11404) ",")
  (data (;256;) (i32.const 11416) "\01\00\00\00\10\00\00\00i\00s\00A\00c\00t\00i\00v\00e")
  (data (;257;) (i32.const 11452) "|")
  (data (;258;) (i32.const 11464) "\01\00\00\00^\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00S\00p\00l\00i\00t\00R\00e\00c\00i\00p\00i\00e\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;259;) (i32.const 11580) "\ac")
  (data (;260;) (i32.const 11592) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00p\00l\00i\00t\00R\00e\00c\00i\00p\00i\00e\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;261;) (i32.const 11756) ",")
  (data (;262;) (i32.const 11768) "+\00\00\00\14\00\00\00P-\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;263;) (i32.const 11804) ",")
  (data (;264;) (i32.const 11816) "\01\00\00\00\1c\00\00\00S\00p\00l\00i\00t\00R\00e\00c\00i\00p\00i\00e\00n\00t")
  (data (;265;) (i32.const 11852) "\5c")
  (data (;266;) (i32.const 11864) "\01\00\00\00D\00\00\00a\00s\00s\00e\00r\00t\00.\00f\00i\00e\00l\00d\00E\00q\00u\00a\00l\00s\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;267;) (i32.const 11948) "\5c")
  (data (;268;) (i32.const 11960) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;269;) (i32.const 12044) "\1c")
  (data (;270;) (i32.const 12056) "\01\00\00\00\02\00\00\001")
  (data (;271;) (i32.const 12076) "\1c")
  (data (;272;) (i32.const 12088) "3\00\00\00\08\00\00\00\03")
  (data (;273;) (i32.const 12108) "\1c")
  (data (;274;) (i32.const 12120) "3\00\00\00\08\00\00\00\04")
  (data (;275;) (i32.const 12140) "L")
  (data (;276;) (i32.const 12152) "\01\00\00\004\00\00\00M\00u\00l\00t\00i\00p\00l\00e\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00 \00T\00e\00s\00t\00s")
  (data (;277;) (i32.const 12220) "|")
  (data (;278;) (i32.const 12232) "\01\00\00\00d\00\00\00C\00r\00e\00a\00t\00i\00n\00g\00 \00s\00e\00c\00o\00n\00d\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00 \00i\00n\00c\00r\00e\00m\00e\00n\00t\00s\00 \00c\00o\00u\00n\00t\00s\00 \00t\00o\00 \002")
  (data (;279;) (i32.const 12348) "\1c")
  (data (;280;) (i32.const 12360) "\12\00\00\00\08\00\00\00\05")
  (data (;281;) (i32.const 12380) "\1c")
  (data (;282;) (i32.const 12392) "\01\00\00\00\02\00\00\002")
  (data (;283;) (i32.const 12412) "\1c")
  (data (;284;) (i32.const 12424) "3\00\00\00\08\00\00\00\06")
  (data (;285;) (i32.const 12444) "\1c")
  (data (;286;) (i32.const 12456) "3\00\00\00\08\00\00\00\07")
  (data (;287;) (i32.const 12476) "<")
  (data (;288;) (i32.const 12488) "\01\00\00\00&\00\00\00h\00a\00n\00d\00l\00e\00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00e\00d")
  (data (;289;) (i32.const 12540) "l")
  (data (;290;) (i32.const 12552) "\01\00\00\00X\00\00\00c\00r\00e\00a\00t\00e\00s\00 \00e\00x\00e\00c\00u\00t\00i\00o\00n\00 \00r\00e\00c\00o\00r\00d\00s\00 \00a\00n\00d\00 \00u\00p\00d\00a\00t\00e\00s\00 \00c\00o\00u\00n\00t\00s")
  (data (;291;) (i32.const 12652) "\1c")
  (data (;292;) (i32.const 12664) "\12\00\00\00\08\00\00\00\08")
  (data (;293;) (i32.const 12684) "\5c")
  (data (;294;) (i32.const 12696) "\01\00\00\00D\00\00\00C\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00e\00x\00e\00c\00u\00t\00i\00o\00n\00:\00 \00{\00}")
  (data (;295;) (i32.const 12780) "l")
  (data (;296;) (i32.const 12792) "\01\00\00\00Z\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00g\00e\00t\00 \00c\00o\00n\00f\00i\00g\00 \00d\00e\00t\00a\00i\00l\00s\00 \00f\00o\00r\00 \00e\00x\00e\00c\00u\00t\00i\00o\00n\00 \00{\00}")
  (data (;297;) (i32.const 12892) ",")
  (data (;298;) (i32.const 12904) "\01\00\00\00\12\00\00\00t\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;299;) (i32.const 12940) "\1c")
  (data (;300;) (i32.const 12952) "\01\00\00\00\0c\00\00\00t\00x\00H\00a\00s\00h")
  (data (;301;) (i32.const 12972) ",")
  (data (;302;) (i32.const 12984) "\01\00\00\00\10\00\00\00e\00x\00e\00c\00u\00t\00o\00r")
  (data (;303;) (i32.const 13020) "|")
  (data (;304;) (i32.const 13032) "\01\00\00\00^\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;305;) (i32.const 13148) "\ac")
  (data (;306;) (i32.const 13160) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;307;) (i32.const 13324) ",")
  (data (;308;) (i32.const 13336) "+\00\00\00\14\00\00\00p3\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;309;) (i32.const 13372) ",")
  (data (;310;) (i32.const 13384) "\01\00\00\00\1c\00\00\00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n")
  (data (;311;) (i32.const 13420) ",")
  (data (;312;) (i32.const 13432) "\01\00\00\00\12\00\00\00e\00x\00e\00c\00u\00t\00i\00o\00n")
  (data (;313;) (i32.const 13468) "|")
  (data (;314;) (i32.const 13480) "\01\00\00\00`\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00R\00e\00c\00i\00p\00i\00e\00n\00t\00P\00a\00y\00o\00u\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;315;) (i32.const 13596) "\ac")
  (data (;316;) (i32.const 13608) "\01\00\00\00\96\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00R\00e\00c\00i\00p\00i\00e\00n\00t\00P\00a\00y\00o\00u\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;317;) (i32.const 13772) ",")
  (data (;318;) (i32.const 13784) "+\00\00\00\14\00\00\0005\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;319;) (i32.const 13820) "<")
  (data (;320;) (i32.const 13832) "\01\00\00\00\1e\00\00\00R\00e\00c\00i\00p\00i\00e\00n\00t\00P\00a\00y\00o\00u\00t")
  (data (;321;) (i32.const 13884) "\1c")
  (data (;322;) (i32.const 13896) "3\00\00\00\08\00\00\00\09")
  (data (;323;) (i32.const 13916) "\5c")
  (data (;324;) (i32.const 13928) "\01\00\00\00B\00\00\00h\00a\00n\00d\00l\00e\00s\00 \00m\00i\00s\00s\00i\00n\00g\00 \00c\00o\00n\00f\00i\00g\00 \00g\00r\00a\00c\00e\00f\00u\00l\00l\00y")
  (data (;325;) (i32.const 14012) "\5c")
  (data (;326;) (i32.const 14024) "\01\00\00\00B\00\00\00a\00s\00s\00e\00r\00t\00.\00n\00o\00t\00I\00n\00S\00t\00o\00r\00e\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;327;) (i32.const 14108) "\1c")
  (data (;328;) (i32.const 14120) "3\00\00\00\08\00\00\00\0a")
  (data (;329;) (i32.const 14140) "\1c")
  (data (;330;) (i32.const 14152) "3\00\00\00\08\00\00\00\0b")
  (data (;331;) (i32.const 14172) "L")
  (data (;332;) (i32.const 14184) "\01\00\00\00.\00\00\00h\00a\00n\00d\00l\00e\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00F\00a\00i\00l\00e\00d")
  (data (;333;) (i32.const 14252) "l")
  (data (;334;) (i32.const 14264) "\01\00\00\00R\00\00\00c\00r\00e\00a\00t\00e\00s\00 \00f\00a\00i\00l\00u\00r\00e\00 \00r\00e\00c\00o\00r\00d\00 \00a\00n\00d\00 \00u\00p\00d\00a\00t\00e\00s\00 \00c\00o\00u\00n\00t\00s")
  (data (;335;) (i32.const 14364) ",")
  (data (;336;) (i32.const 14376) "\01\00\00\00\14\00\00\000\00x\001\002\003\004\005\006\007\008")
  (data (;337;) (i32.const 14412) "\1c")
  (data (;338;) (i32.const 14424) "\12\00\00\00\08\00\00\00\0c")
  (data (;339;) (i32.const 14444) "\1c")
  (data (;340;) (i32.const 14456) "\01\00\00\00\06\00\00\00e\00r\00r")
  (data (;341;) (i32.const 14476) "L")
  (data (;342;) (i32.const 14488) "\01\00\00\008\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00y\00t\00e\00s\00.")
  (data (;343;) (i32.const 14556) "l")
  (data (;344;) (i32.const 14568) "\01\00\00\00R\00\00\00C\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00e\00x\00e\00c\00u\00t\00i\00o\00n\00:\00 \00{\00}")
  (data (;345;) (i32.const 14668) ",")
  (data (;346;) (i32.const 14680) "\01\00\00\00\1a\00\00\00f\00a\00i\00l\00u\00r\00e\00R\00e\00a\00s\00o\00n")
  (data (;347;) (i32.const 14716) "<")
  (data (;348;) (i32.const 14728) "\01\00\00\00&\00\00\00f\00a\00i\00l\00u\00r\00e\00R\00e\00a\00s\00o\00n\00S\00t\00r\00i\00n\00g")
  (data (;349;) (i32.const 14780) "<")
  (data (;350;) (i32.const 14792) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;351;) (i32.const 14844) "|")
  (data (;352;) (i32.const 14856) "\01\00\00\00j\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00F\00a\00i\00l\00e\00d\00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;353;) (i32.const 14972) "\bc")
  (data (;354;) (i32.const 14984) "\01\00\00\00\a0\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00F\00a\00i\00l\00e\00d\00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;355;) (i32.const 15164) ",")
  (data (;356;) (i32.const 15176) "+\00\00\00\14\00\00\00\90:\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;357;) (i32.const 15212) "<")
  (data (;358;) (i32.const 15224) "\01\00\00\00(\00\00\00F\00a\00i\00l\00e\00d\00S\00p\00l\00i\00t\00E\00x\00e\00c\00u\00t\00i\00o\00n")
  (data (;359;) (i32.const 15276) "\1c")
  (data (;360;) (i32.const 15288) "3\00\00\00\08\00\00\00\0d")
  (data (;361;) (i32.const 15308) "\1c")
  (data (;362;) (i32.const 15320) "3\00\00\00\08\00\00\00\0e")
  (data (;363;) (i32.const 15340) "\1c")
  (data (;364;) (i32.const 15352) "3\00\00\00\08\00\00\00\0f")
  (data (;365;) (i32.const 15372) "L")
  (data (;366;) (i32.const 15384) "\01\00\00\000\00\00\00h\00a\00n\00d\00l\00e\00A\00u\00t\00o\00m\00a\00t\00i\00o\00n\00S\00w\00i\00t\00c\00h\00e\00d")
  (data (;367;) (i32.const 15452) "l")
  (data (;368;) (i32.const 15464) "\01\00\00\00\5c\00\00\00c\00r\00e\00a\00t\00e\00s\00 \00t\00o\00g\00g\00l\00e\00 \00r\00e\00c\00o\00r\00d\00 \00a\00n\00d\00 \00u\00p\00d\00a\00t\00e\00s\00 \00c\00o\00n\00f\00i\00g\00 \00s\00t\00a\00t\00e")
  (data (;369;) (i32.const 15564) "\1c")
  (data (;370;) (i32.const 15576) "\12\00\00\00\08\00\00\00\10")
  (data (;371;) (i32.const 15596) ",")
  (data (;372;) (i32.const 15608) "\01\00\00\00\18\00\00\00c\00u\00r\00r\00e\00n\00t\00S\00t\00a\00t\00e")
  (data (;373;) (i32.const 15644) "l")
  (data (;374;) (i32.const 15656) "\01\00\00\00T\00\00\00C\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00a\00u\00t\00o\00m\00a\00t\00i\00o\00n\00 \00t\00o\00g\00g\00l\00e\00:\00 \00{\00}")
  (data (;375;) (i32.const 15756) ",")
  (data (;376;) (i32.const 15768) "\01\00\00\00\12\00\00\00t\00o\00g\00g\00l\00e\00d\00B\00y")
  (data (;377;) (i32.const 15804) ",")
  (data (;378;) (i32.const 15816) "\01\00\00\00\1a\00\00\00p\00r\00e\00v\00i\00o\00u\00s\00S\00t\00a\00t\00e")
  (data (;379;) (i32.const 15852) ",")
  (data (;380;) (i32.const 15864) "\01\00\00\00\10\00\00\00n\00e\00w\00S\00t\00a\00t\00e")
  (data (;381;) (i32.const 15900) "|")
  (data (;382;) (i32.const 15912) "\01\00\00\00b\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00u\00t\00o\00m\00a\00t\00i\00o\00n\00T\00o\00g\00g\00l\00e\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;383;) (i32.const 16028) "\ac")
  (data (;384;) (i32.const 16040) "\01\00\00\00\98\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00u\00t\00o\00m\00a\00t\00i\00o\00n\00T\00o\00g\00g\00l\00e\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;385;) (i32.const 16204) ",")
  (data (;386;) (i32.const 16216) "+\00\00\00\14\00\00\00\b0>\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;387;) (i32.const 16252) "<")
  (data (;388;) (i32.const 16264) "\01\00\00\00 \00\00\00A\00u\00t\00o\00m\00a\00t\00i\00o\00n\00T\00o\00g\00g\00l\00e")
  (data (;389;) (i32.const 16316) "\1c")
  (data (;390;) (i32.const 16328) "3\00\00\00\08\00\00\00\11")
  (data (;391;) (i32.const 16348) "l")
  (data (;392;) (i32.const 16360) "\01\00\00\00R\00\00\00h\00a\00n\00d\00l\00e\00s\00 \00e\00n\00a\00b\00l\00e\00 \00t\00o\00g\00g\00l\00e\00 \00f\00r\00o\00m\00 \00d\00i\00s\00a\00b\00l\00e\00d\00 \00s\00t\00a\00t\00e")
  (data (;393;) (i32.const 16460) "\1c")
  (data (;394;) (i32.const 16472) "3\00\00\00\08\00\00\00\12")
  (data (;395;) (i32.const 16492) "\1c")
  (data (;396;) (i32.const 16504) "3\00\00\00\08\00\00\00\13")
  (data (;397;) (i32.const 16524) "\1c")
  (data (;398;) (i32.const 16536) "3\00\00\00\08\00\00\00\14")
  (data (;399;) (i32.const 16556) "L")
  (data (;400;) (i32.const 16568) "\01\00\00\000\00\00\00h\00a\00n\00d\00l\00e\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00D\00e\00l\00e\00t\00e\00d")
  (data (;401;) (i32.const 16636) "\8c")
  (data (;402;) (i32.const 16648) "\01\00\00\00r\00\00\00p\00r\00o\00p\00e\00r\00l\00y\00 \00h\00a\00n\00d\00l\00e\00s\00 \00c\00o\00n\00f\00i\00g\00 \00d\00e\00l\00e\00t\00i\00o\00n\00 \00w\00i\00t\00h\00 \00a\00l\00l\00 \00r\00e\00l\00a\00t\00e\00d\00 \00u\00p\00d\00a\00t\00e\00s")
  (data (;403;) (i32.const 16780) "\1c")
  (data (;404;) (i32.const 16792) "\12\00\00\00\08\00\00\00\15")
  (data (;405;) (i32.const 16812) "\5c")
  (data (;406;) (i32.const 16824) "\01\00\00\00B\00\00\00C\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00d\00e\00l\00e\00t\00i\00o\00n\00:\00 \00{\00}")
  (data (;407;) (i32.const 16908) ",")
  (data (;408;) (i32.const 16920) "\01\00\00\00\12\00\00\00d\00e\00l\00e\00t\00e\00d\00B\00y")
  (data (;409;) (i32.const 16956) ",")
  (data (;410;) (i32.const 16968) "\01\00\00\00\1c\00\00\00r\00e\00c\00i\00p\00i\00e\00n\00t\00C\00o\00u\00n\00t")
  (data (;411;) (i32.const 17004) ",")
  (data (;412;) (i32.const 17016) "\01\00\00\00\1a\00\00\00t\00o\00t\00a\00l\00F\00a\00i\00l\00u\00r\00e\00s")
  (data (;413;) (i32.const 17052) "|")
  (data (;414;) (i32.const 17064) "\01\00\00\00h\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00D\00e\00l\00e\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;415;) (i32.const 17180) "\bc")
  (data (;416;) (i32.const 17192) "\01\00\00\00\9e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00D\00e\00l\00e\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;417;) (i32.const 17372) ",")
  (data (;418;) (i32.const 17384) "+\00\00\00\14\00\00\000C\00\00\00\00\00\00P\18\00\00\00\00\00\00\d0\09")
  (data (;419;) (i32.const 17420) "<")
  (data (;420;) (i32.const 17432) "\01\00\00\00&\00\00\00S\00p\00l\00i\00t\00C\00o\00n\00f\00i\00g\00D\00e\00l\00e\00t\00i\00o\00n")
  (data (;421;) (i32.const 17484) ",")
  (data (;422;) (i32.const 17496) "\01\00\00\00\14\00\00\00r\00e\00c\00i\00p\00i\00e\00n\00t\00s")
  (data (;423;) (i32.const 17532) "\1c")
  (data (;424;) (i32.const 17544) "3\00\00\00\08\00\00\00\16")
  (data (;425;) (i32.const 17564) "\1c")
  (data (;426;) (i32.const 17576) "3\00\00\00\08\00\00\00\17")
  (data (;427;) (i32.const 17596) "<")
  (data (;428;) (i32.const 17612) "(\00\00\00 \04\00\00@\04\00\00`\04\00\00\90\04\00\00\b0\04\00\00\d0\04\00\00\f0\04\00\00\10\05\00\000\05\00\00P\05")
  (data (;429;) (i32.const 17660) ",")
  (data (;430;) (i32.const 17672) "\03\00\00\00\10\00\00\00\d0D\00\00\d0D\00\00(\00\00\00\0a"))
