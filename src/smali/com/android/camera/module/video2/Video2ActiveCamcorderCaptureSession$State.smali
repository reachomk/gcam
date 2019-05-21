.class final enum Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;
.super Ljava/lang/Enum;
.source "Video2ActiveCamcorderCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field public static final enum CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field public static final enum NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field public static final enum RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field public static final enum STARTING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

.field public static final enum STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    const-string v1, "NO_RECORDING"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 81
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 84
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    const-string v1, "STARTING_RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STARTING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 87
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    const-string v1, "STOPPING_RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 91
    new-instance v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->NO_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->CLOSED:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STARTING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->STOPPING_RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->RECORDING:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->$VALUES:[Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->$VALUES:[Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    invoke-virtual {v0}, [Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$State;

    return-object v0
.end method
