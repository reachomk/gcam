.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "NO_FLASH"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 123
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 128
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 133
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 138
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "TORCH"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 143
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "RED_EYE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0
.end method
