.class public final Lcom/android/camera/burst/BurstVolumeKeyController$State;
.super Ljava/lang/Enum;
.source "BurstVolumeKeyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstVolumeKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/BurstVolumeKeyController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5CRRCELMMAIR5F51MURJKE9NMOR35E8I56T31EHIJM___:[I

.field public static final enum BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

.field public static final enum IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

.field public static final enum VOLUME_KEY_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    sput v3, Lcom/android/camera/burst/BurstVolumeKeyController$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    .line 23
    sput v4, Lcom/android/camera/burst/BurstVolumeKeyController$State;->VOLUME_KEY_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    .line 25
    sput v0, Lcom/android/camera/burst/BurstVolumeKeyController$State;->BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/burst/BurstVolumeKeyController$State;->IDLE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/burst/BurstVolumeKeyController$State;->VOLUME_KEY_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/burst/BurstVolumeKeyController$State;->BURST_STARTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHB6UR3LDLIKMPBP8DNMST3IDTM6OPBI4H9N8OBKCKTG____:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/burst/BurstVolumeKeyController$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5CRRCELMMAIR5F51MURJKE9NMOR35E8I56T31EHIJM___:[I

    return-void
.end method
