.class public final Lcom/google/android/apps/lightcycle/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANDROID_BLUE:[F

.field public static final BACKGROUND_COLOR:[F

.field public static final GREEN:[F

.field public static final TRANSPARENT_WHITE:[F

.field public static final WHITE:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->GREEN:[F

    .line 36
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_COLOR:[F

    .line 39
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->WHITE:[F

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    .line 41
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35c28f    # 0.71f
        0x3f65e354    # 0.898f
        0x3f800000    # 1.0f
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3f800000    # 1.0f
    .end array-data

    .line 39
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 40
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method
