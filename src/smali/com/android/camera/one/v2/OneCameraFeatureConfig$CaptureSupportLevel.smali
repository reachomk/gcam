.class public final enum Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;
.super Ljava/lang/Enum;
.source "OneCameraFeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraFeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureSupportLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

.field public static final enum LEGACY_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

.field public static final enum LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

.field public static final enum NEXUS_2015:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

.field public static final enum ZSL:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

.field public static final enum ZSL_REPROCESSING:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    const-string v1, "ZSL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 26
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    const-string v1, "LEGACY_JPEG"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 28
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    const-string v1, "LIMITED_JPEG"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 33
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    const-string v1, "ZSL_REPROCESSING"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL_REPROCESSING:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 38
    new-instance v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    const-string v1, "NEXUS_2015"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->NEXUS_2015:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL_REPROCESSING:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->NEXUS_2015:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->$VALUES:[Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 54
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL_REPROCESSING:Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static values()[Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->$VALUES:[Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/OneCameraFeatureConfig$CaptureSupportLevel;

    return-object v0
.end method
