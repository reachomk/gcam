.class final Lcom/android/camera/burst/BurstA11yButtonController$State;
.super Ljava/lang/Enum;
.source "BurstA11yButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstA11yButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/BurstA11yButtonController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ42C9HF517AT3KDTN46RREEHP6UR3CCLP28KRKC5Q6AEO_:[I

.field public static final enum BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I

.field public static final enum IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 25
    sput v3, Lcom/android/camera/burst/BurstA11yButtonController$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I

    .line 26
    sput v0, Lcom/android/camera/burst/BurstA11yButtonController$State;->BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I

    .line 24
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/burst/BurstA11yButtonController$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/burst/BurstA11yButtonController$State;->BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH0J2CBP89QN8T3FDP1MURJKE9NMOR35E8I56T31EHIJM___:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/camera/burst/BurstA11yButtonController$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ42C9HF517AT3KDTN46RREEHP6UR3CCLP28KRKC5Q6AEO_:[I

    return-void
.end method
