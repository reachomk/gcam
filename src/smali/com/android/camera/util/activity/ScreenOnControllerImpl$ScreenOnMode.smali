.class final Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;
.super Ljava/lang/Enum;
.source "ScreenOnControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/activity/ScreenOnControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScreenOnMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TGM6T39EPKN8U9FADHN4PB5DP7MSGRFDPQ74RRCDHIN4IBDE1M28KR3E9IMARIFDP6MUP357C______:[I

.field public static final enum KEEP_ON$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

.field public static final enum KEEP_ON_WITH_TIMEOUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

.field public static final enum NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    sput v3, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 38
    sput v4, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON_WITH_TIMEOUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 39
    sput v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    .line 36
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->NO_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON_WITH_TIMEOUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->KEEP_ON$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQJCDP6APBE9TN46RREEHP6UR3CCLP4IRBGDGI56ORICLIMSJRE9LNM8P9R:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$ScreenOnMode;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TGM6T39EPKN8U9FADHN4PB5DP7MSGRFDPQ74RRCDHIN4IBDE1M28KR3E9IMARIFDP6MUP357C______:[I

    return-void
.end method
