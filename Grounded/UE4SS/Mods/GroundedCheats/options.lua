---@diagnostic disable: missing-fields
local M = require("lua-mods-libs.options_module")
local items = M.items
local default = { ---@type Mod_Options_Item
    instances = M.instances.getAllInstances(),
    pre = { M.pre.checkPropertyValidity() },
    post = { M.post.checkPropertyValueChange(0.01) },
    reapplyOnModRestart = true,
    minNumberOfInstancesToFind = 1,
    logLevelForFatalError = "ERROR",
    epsilon = 0.01
}

-- GLOBAL DEFINITIONS --
-- Player Stats --          --    * | FORMAT     | DESCRIPTION
Player_Block_Window = 0.25  -- 0.25 | Seconds    | Length of Block Window
Player_Hauling_Capacity = 5 --    5 | Quantity   | Total Hauling capacity
Player_Mutation_Count = 2   --    2 | Quantity   | Total # of simultaneously equippable Mutations

-- Player Movement --          --   * | FORMAT     | DESCRIPTION
Player_Walk_Speed = 350        -- 350 | Value (cm) | Standard Walking speed
Player_Sprint_Speed = 600      -- 600 | Value (cm) | Sprinting Running speed
Player_Swim_Speed = 330        -- 330 | Value (cm) | Standard Swimming speed
Player_Swim_Sprint_Speed = 500 -- 500 | Value (cm) | Sprinting Swimming speed
Player_Jump_Count = 10         --  10 | Quantity   | Total number of successive Jumps in air

-- Player Properties ---    --        * | FORMAT     | DESCRIPTION
Player_Mass = 100           --      100 | Value      | ?????????
Player_Gravity = 1          --        1 | Multiplier | Player Gravity factor
Player_Step_Angle = 0.50000 -- 0.500000 | Degrees    | ????????

-- Survival Stats --       --         * | FORMAT     | DESCRIPTION
Player_Thirst_Drain = 0    -- -0.100000 | Multiplier | Rate at which active Player Thirst drains over time
Player_Hunger_Drain = 0    -- -0.075000 | Multiplier | Rate at which active Player Hunger drains over time
Player_Oxygen_Drain = -2.5 -- -2.500000 | Multiplier | Rate at which active Player Oxygen drains over time

-- Durability --                -- * | FORMAT     | DESCRIPTION
Player_Attack_Durability = 1    -- 1 | Multiplier | Durability lost per Attack
Player_Block_Durability = 1     -- 1 | Multiplier | Durability lost per Block
Player_Throw_Durability = 1     -- 1 | Multiplier | Durability lost per Weapon Throw
Player_Armor_Hit_Durability = 1 -- 1 | Multiplier | Durability lost per hit on Armor

-- Player Interaction --  --     * | FORMAT     | DESCRIPTION
Player_Item_Use_Delay = 4 --     4 | Seconds    | Cooldown between consumable uses
Interact_Timer = 0.6      --   0.6 | Seconds    | Hold button interaction time
Drop_Interact_Timer = 0.6 --   0.6 | Seconds    | Hold button interaction time 
Cancel_Interact_Timer = 1 --   1.0 | Seconds    | Hold button interaction time 
Interact_Range = 300      -- 300.0 | Distance   | Distance player can interact at
Build_Range = 4           --   4.0 | Multiplier | Interact range multiplier when building

-- Storage --                    --    * | FORMAT   | DESCRIPTION
Storage_Radius = 2000            -- 2000 | Distance | Distance Hot Deposit works at
Storage_Radius_Restricted = 4000 -- 4000 | Distance | Distance crafting stations can access storage at
Basket_Capacity = 20             --   20 | Quantity | # of slots of Basket
Chest_Capacity = 40              --   40 | Quantity | # of slots of Acorn Chest
Large_Chest_Capacity = 60        --   60 | Quantity | # of slots of Pinecone Chest
Fresh_Storage_Capacity = 20      --   20 | Quantity | # of slots of Refrigerator
Stem_Pallet_Capacity = 21        --   21 | Quantity | # of Stems that can be held by the Stem Pallet
Large_Stem_Pallet_Capacity = 60  --   60 | Quantity | # of Stems that can be held by the Large Stem Pallet
Grass_Pallet_Capacity = 24       --   24 | Quantity | # of Grass Planks that can be held by the Plank Pallet
Large_Grass_Pallet_Capacity = 60 --   60 | Quantity | # of Grass Planks that can be held by the Large Plank Pallet

-- Items --              --  * | FORMAT   | DESCRIPTION
Max_Drop_Stack_Size = 35 -- 35 | Quantity | Total stack size of dropped items

-- Milk Molar Upgrades --     -- * | FORMAT   | DESCRIPTION
Item_Stack_Bonus_Per_Tier = 5 -- 5 | Quantity | Bonus additional stack size per Milk Molar upgrade
Max_Item_Stack_Tier_Count = 5 -- 5 | Quantity | Maximum number of total Milk Molar stack size upgrades

-- Handy Gnat --                 --       * | FORMAT    | DESCRIPTION
Gnat_Max_Speed = 1200            -- 1200.00 | Units/s   | Max flight speed
Gnat_Max_Acceleration = 2048     -- 2048.00 | Units/s/s | Time to reach max flight speed
Gnat_Braking_Factor = 2          --    2.00 | Muliplier | 
Gnat_Braking_Friction = 0        --    0.00 | Value     | 
Gnat_Braking_SubStep_Time = 0.03 --    0.03 | Seconds   | 
Gnat_Braking_Deceleration = 1000 -- 1000.00 | Units/s/s | 

-- Automated Crafting --  --       * | FORMAT    | DESCRIPTION
Cooking_Time = 0.25 -- 0.25
Drying_Time = 8     -- 8.0
Spinning_Time = 1.2 -- 1.2
Smelting_Time = 1.0 -- 1.0
Refining_Time = 0.5 -- 0.5

-- Bounce Web Properties --                --     * | FORMAT  | DESCRIPTION
Bounce_Intensity_Default = 1.0             --  1.00 | Integer |
Bounce_Intensity_Slider_Min = 0.5          --  0.50 | Integer |
Bounce_Intensity_Slider_Max = 1.0          --  1.00 | Integer |
Bounce_Intensity_Slider_Step_Size = 0.05   --  0.05 | Integer |
Bounce_Intensity_Value_Format = 1          --     1 | Mixed   | 0 = Integer, 1 = Percent,
Bounce_Intensity_Max_Integral_Digits = 3   --     3 | Integer |
Bounce_Intensity_Min_Fractional_Digits = 1 --     1 | Integer |
Bounce_Intensity_Max_Fractional_Digits = 1 --     1 | Integer |
Bounce_Angle_Default = 0                   --   0.0 | Integer |
Bounce_Angle_Slider_Min = -45              -- -45.0 | Integer |
Bounce_Angle_Slider_Max = 45               --  45.0 | Integer |
Bounce_Angle_Slider_Step_Size = 10         --  10.0 | Integer |
Bounce_Angle_Max_Integral_Digits = 3       --     3 | Integer |
Bounce_Angle_Min_Fractional_Digits = 1     --     1 | Integer |
Bounce_Angle_Max_Fractional_Digits = 1     --     1 | Integer |

-- GameMode --            --   * | FORMAT     | DESCRIPTION
Hunger_Drain = 1          --   1 | Multiplier | Hunger drain Game Mode setting
Thirst_Drain = 1          --   1 | Multiplier | Thirst drain Game Mode setting
Player_Damage = 1         --   1 | Multiplier | Player damage multiplier Game Mode setting
Enemy_Damage = 1          --   1 | Multiplier | Enemy damage multiplier Game Mode setting
Building_Health = 1       --   1 | Multiplier | Building Health multiplier Game Mode setting
Heat = 1                  --   1 | Multiplier | Heat mechanic toggle Game Mode setting
Item_Spoilage = 1         --   1 | Multiplier | Item Spoilage mechanic toggle Game Mode setting
Item_Durability = 1       --   1 | Multiplier | Item Durability Game Mode setting
Death_Durability_Loss = 1 --   1 | Multiplier | Equipped Gear Durability loss on death Game Mode setting
Sizzle = 0.1              -- 0.1 | Multiplier | Sizzle rate Game Mode setting

-- Misc --                      --  * | FORMAT  | DESCRIPTION
Realtime_To_Gametime_Ratio = 30 -- 30 | Integer | In Game seconds per Real Time second

-- Player Character --
items:insert({
    id = "/Script/Maine.SurvivalPlayerCharacter",
    className = "/Script/Maine.SurvivalPlayerCharacter",
    shortClassName = "SurvivalPlayerCharacter",
}, {
    InteractTimerMax = Interact_Timer,
    DropInteractTimerMax = Drop_Interact_Timer,
    CancelInteractTimerMax = Cancel_Interact_Timer,
    InteractTraceLength = Interact_Range,
    BuildModeInteractionRangeMultiplier = Build_Range,
    JumpMaxCount = Player_Jump_Count,

    -- Movement --
    CharMovementComponent = {
        -- Player movement --
        MaxWalkSpeed = Player_Walk_Speed,
        MaxSprintSpeed = Player_Sprint_Speed,
        MaxSwimSpeed = Player_Swim_Speed,
        MaxSwimSprintSpeed = Player_Swim_Sprint_Speed,
        Mass = Player_Mass,
        GravityScale = Player_Gravity,
        WalkableFloorAngle = Player_Step_Angle,

        -- Zipline Functionality --
        ZiplineIgnoreCollisionDistance = 250, -- 250.0,
        ZiplineMaxSpeedMultiplier = 2.5,      -- 2.5,
        ZiplineExitVelocityMultiplier = 0.5,  -- 0.5,
        ZiplineAscendAccel = 600,             -- 600.0,
        ZiplineMaxAscendSpeed = 1000,         -- 1000.0,
    },

    -- Block --
    BlockComponent = {
        PerfectBlockWindow = Player_Block_Window,
    },

    -- Hauling --
    HaulingComponent = {
        Capacity = Player_Hauling_Capacity,
    },

    -- Storage --
    ProximityInventoryComponent = {
        -- Storage Radius --
        StorageRadius = Storage_Radius,
        TypeRestrictedStorageRadius = Storage_Radius_Restricted,
    }
} --[[@as ASurvivalPlayerCharacter]])
--#endregion

-- Survival Stats --
items:insert({
    id = "SurvivalStats/Thirst",
    className = "/Script/Maine.SurvivalComponent",
    shortClassName = "SurvivalComponent",
}, {
    -- Thirst --
    ThirstSettings = {
        AdjustmentPerSecond = Player_Thirst_Drain,
    },
    -- Hunger --
    HungerSettings = {
        AdjustmentPerSecond = Player_Hunger_Drain,
    },
    -- Breath --
    BreathSettings = {
        AdjustmentPerSecond = Player_Oxygen_Drain,
    },
} --[[@as ASurvivalComponent]])
 --#endregion

-- Handy Gnat --
items:insert({
    id = "HandyGnatMovement",
    className = "/Script/Maine.BuilderMovementComponent",
    shortClassName = "BuilderMovementComponent",
    minNumberOfInstancesToFind = 0,
}, {
    -- Handy Gnat Movement --
    MaxFlySpeed = Gnat_Max_Speed,
    MaxAcceleration = Gnat_Max_Acceleration,
    BrakingFrictionFactor = Gnat_Braking_Factor,
    BrakingFriction = Gnat_Braking_Friction,
    BrakingSubStepTime = Gnat_Braking_SubStep_Time,
    BrakingDecelerationFlying = Gnat_Braking_Deceleration,
} --[[@as UBuilderMovementComponent]])
--#endregion

-- Global Data --
items:insert({
    id = "GlobalItemData",
    className = "/Script/Maine.GlobalItemData",
    shortClassName = "GlobalItemData",
}, {
    -- Stack --
    ItemStackBonusPerTier = Item_Stack_Bonus_Per_Tier,
    MaxItemStackTier = Max_Item_Stack_Tier_Count,
    MaxDropStackSize = Max_Drop_Stack_Size,
    -- "StackSizes" is a "MapProperty".
    -- Actually, in UE4SS 3.0.1, the property type "MapProperty" is not supported.
    -- But you can use "IMPORT_TEXT" to change the property value.
    StackSizes = M.IMPORT_TEXT(
        [[(((TagName="StackSize.Default"), 123),((TagName="StackSize.Ammo"), 456),((TagName="StackSize.Single"), 1),((TagName="StackSize.Food"), 789),((TagName="StackSize.Resource"), 10),((TagName="StackSize.LargeResource"), 5),((TagName="StackSize.UpgradeStones"), 99))]]),

    -- Production speed --,
    ProcessingData = {
        -- Cooking
        { ProcessingTime = Cooking_Time },
        -- Drying
        { ProcessingTime = Drying_Time },
        -- Spinning
        { ProcessingTime = Spinning_Time },
        -- Smelting
        { ProcessingTime = Smelting_Time },
        -- Refining
        { ProcessingTime = Refining_Time },
    },

    -- Durability --,
    AttackDurability = Player_Attack_Durability,
    BlockDurability = Player_Block_Durability,
    ThrowDurability = Player_Throw_Durability,
    ArmorHitDurability = Player_Armor_Hit_Durability,

    ItemUseCooldown = Player_Item_Use_Delay,
} --[[@as UGlobalItemData]])
--#endregion

--#region Bounce Web (trampoline)
items:insert({
    id = "BounceWeb",
    className = "/Game/Design/CustomizablePropertyData/TrampolineCustomProperties.TrampolineCustomProperties",
    instances = M.instances.getStaticObject(),
}, {
    CustomProperties = {
        -- BounceIntensity --,
        {
            DefaultValue = Bounce_Intensity_Default,
            SliderMinValue = Bounce_Intensity_Slider_Min,
            SliderMaxValue = Bounce_Intensity_Slider_Max,
            SliderStepSize = Bounce_Intensity_Slider_Step_Size,
            ValueFormat = Bounce_Intensity_Value_Format,
            MaxIntegralDigits = Bounce_Intensity_Max_Integral_Digits,
            MinFractionalDigits = Bounce_Intensity_Min_Fractional_Digits,
            MaxFractionalDigits = Bounce_Intensity_Max_Fractional_Digits,
        },
        -- Angle --,
        {
            DefaultValue = Bounce_Angle_Default,
            SliderMinValue = Bounce_Angle_Slider_Min,
            SliderMaxValue = Bounce_Angle_Slider_Max,
            SliderStepSize = Bounce_Angle_Slider_Step_Size,
            MaxIntegralDigits = Bounce_Angle_Max_Integral_Digits,
            MinFractionalDigits = Bounce_Angle_Min_Fractional_Digits,
            MaxFractionalDigits = Bounce_Angle_Max_Fractional_Digits,
        },
    },
} --[[@as UCustomPropertyDataAsset]])

--#region SurvivalGameState
items:insert({
    id = "/Script/Maine.Default__SurvivalGameplayStatics->SurvivalGameState",
    className = "/Script/Maine.Default__SurvivalGameplayStatics",
    target = "instance:GetSurvivalGameState(UEHelpers.GetGameViewportClient())",
    instances = M.instances.getStaticObject(),
    targetVars = { UEHelpers = M.UEHelpers },
}, {
    -- Calendar --,
    CalendarComponent = {
        GameToRealTimeRatio = Realtime_To_Gametime_Ratio,
    }
} --[[@as ABP_SurvivalGameState_C]])
--#endregion

--#region Storages
-- Storage & Utilities/Storage
-- https://grounded.fandom.com/wiki/Category:Storage_%26_Utilities/Storage

-- Storage Basket
items:insert({
    id = "Buildings/Storage",
    className = "/Script/Maine.StorageBuilding",
    shortClassName = "StorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_Storage.BP_Storage_C") },
}, {
    InventoryComponent = {
        MaxSize = Basket_Capacity,
    }
} --[[@as AStorageBuilding]])

-- Storage Chest
items:insert({
    id = "Buildings/Storage",
    className = "/Script/Maine.StorageBuilding",
    shortClassName = "StorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_Storage_Big.BP_Storage_Big_C") },
}, {
    InventoryComponent = {
        MaxSize = Chest_Capacity,
    }
} --[[@as AStorageBuilding]])

-- Large Storage Chest
items:insert({
    id = "Buildings/Storage",
    className = "/Script/Maine.StorageBuilding",
    shortClassName = "StorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_Storage_Tier3.BP_Storage_Tier3_C") },
}, {
    InventoryComponent = {
        MaxSize = Large_Chest_Capacity,
    }
} --[[@as AStorageBuilding]])

-- Fresh Storage
items:insert({
    id = "Buildings/Storage",
    className = "/Script/Maine.StorageBuilding",
    shortClassName = "StorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_StorageFridge.BP_StorageFridge_C") },
}, {
    InventoryComponent = {
        MaxSize = Fresh_Storage_Capacity,
    }
} --[[@as AStorageBuilding]])

-- Stem Pallet
items:insert({
    id = "Buildings/LogStorage",
    className = "/Script/Maine.TypeRestrictedStorageBuilding",
    shortClassName = "TypeRestrictedStorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_LogStorage.BP_LogStorage_C") },
}, {
    Capacity = Stem_Pallet_Capacity,
} --[[@as ATypeRestrictedStorageBuilding]])

-- Large Stem Pallet
items:insert({
    id = "Buildings/PlankStorage",
    className = "/Script/Maine.TypeRestrictedStorageBuilding",
    shortClassName = "TypeRestrictedStorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_LogStorage_Tier3.BP_LogStorage_Tier3_C") },
}, {
    Capacity = Large_Stem_Pallet_Capacity,
} --[[@as ATypeRestrictedStorageBuilding]])

-- Plank Pallet
items:insert({
    id = "Buildings/PlankStorage",
    className = "/Script/Maine.TypeRestrictedStorageBuilding",
    shortClassName = "TypeRestrictedStorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_PlankStorage.BP_PlankStorage_C") },
}, {
    Capacity = Grass_Pallet_Capacity,
} --[[@as ATypeRestrictedStorageBuilding]])

-- Large Plank Pallet
items:insert({
    id = "Buildings/PlankStorage",
    className = "/Script/Maine.TypeRestrictedStorageBuilding",
    shortClassName = "TypeRestrictedStorageBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/Storage/BP_PlankStorage_Tier3.BP_PlankStorage_Tier3_C") },
}, {
    Capacity = Large_Grass_Pallet_Capacity,
} --[[@as ATypeRestrictedStorageBuilding]])
--#endregion

--#region Dew Collector
-- https://grounded.fandom.com/wiki/Dew_Collector
items:insert({
    id = "FaucetBuilding",
    className = "/Script/Maine.FaucetBuilding",
    shortClassName = "FaucetBuilding",
    filters = { M.filters.isA("/Game/Blueprints/Items/Buildings/BP_DewCollector.BP_DewCollector_C") },

}, {
    FillAmountPerHour = 5, -- 5,
} --[[@as ABP_DewCollector_C]])
--#endregion

--#region Mutations
-- https://grounded.fandom.com/wiki/Mutations
items:insert({
    id = "SurvivalPlayerState",
    className = "/Script/Maine.SurvivalPlayerState",
    shortClassName = "SurvivalPlayerState",
}, {
    PerkComponent = {
        MaxEquippedPerks = Player_Mutation_Count,
    }
} --[[@as ASurvivalPlayerState]])
--#endregion

--#region Building
items:insert({
    id = "Building",
    className = "/Script/Maine.Building",
    shortClassName = "Building",
}, {
    DropIngredientsPercentage = 1,                       -- 1.0,
    DestroyedByCreatureDropIngredientsPercentage = 0.25, -- 0.25,
} --[[@as ABuilding]])
--#endregion

--#region ProductionBuilding
items:insert({
    id = "ProductionBuilding",
    className = "/Script/Maine.ProductionBuilding",
    shortClassName = "ProductionBuilding",
}, {
    -- The default value depends on the building. --,
    ProductionTime = M.MULT(1.0),    -- (float),
    MaxProductionItems = M.MULT(1),  -- (integer),
    MaxSimulateousItems = M.MULT(1), -- (integer),
} --[[@as AProductionBuilding]])
--#endregion

--#region TimeOfDayLightingManager
items:insert({
    id = "TimeOfDayLightingManager",
    className = "/Script/Maine.TimeOfDayLightingManager",
    shortClassName = "TimeOfDayLightingManager",
}, {

} --[[@as ATimeOfDayLightingManager]])
--#endregion

return { ---@type Mod_Options
    items = items,
    default = default,
    loader = M.loaders._ifPCExists_or_onPCRestart()
}
