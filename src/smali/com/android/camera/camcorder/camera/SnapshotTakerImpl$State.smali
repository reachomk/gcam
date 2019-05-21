.class final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;
.super Ljava/lang/Enum;
.source "SnapshotTakerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C4H9N8OBKCKTG____:[I

.field public static final enum BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

.field public static final enum CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

.field public static final enum READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 91
    sput v3, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 96
    sput v4, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 101
    sput v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 87
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C4H9N8OBKCKTG____:[I

    return-void
.end method
