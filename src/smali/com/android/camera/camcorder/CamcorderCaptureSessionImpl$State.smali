.class final enum Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;
.super Ljava/lang/Enum;
.source "CamcorderCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

.field public static final enum CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

.field public static final enum READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

.field public static final enum RECORDING:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

.field public static final enum STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 101
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 102
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    const-string v1, "STARTING_RECORD"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 103
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->RECORDING:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->RECORDING:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->$VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    return-object v0
.end method
