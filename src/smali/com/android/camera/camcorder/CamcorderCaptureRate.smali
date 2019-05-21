.class public final enum Lcom/android/camera/camcorder/CamcorderCaptureRate;
.super Ljava/lang/Enum;
.source "CamcorderCaptureRate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field public static final enum FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field public static final enum FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field public static final enum FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field public static final enum FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;


# instance fields
.field private final captureFrameRate:I

.field private final encodingFrameRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1e

    .line 10
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    const-string v1, "FPS_30"

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 11
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    const-string v1, "FPS_60"

    const/16 v2, 0x3c

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/camera/camcorder/CamcorderCaptureRate;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 12
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    const-string v1, "FPS_120"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 13
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    const-string v1, "FPS_240"

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->$VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->captureFrameRate:I

    .line 20
    iput p4, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->encodingFrameRate:I

    .line 21
    return-void
.end method

.method public static hfrValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->values()[Lcom/android/camera/camcorder/CamcorderCaptureRate;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 31
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isSlowMotion()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    return-object v1
.end method

.method public static values()[Lcom/android/camera/camcorder/CamcorderCaptureRate;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->$VALUES:[Lcom/android/camera/camcorder/CamcorderCaptureRate;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/CamcorderCaptureRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/CamcorderCaptureRate;

    return-object v0
.end method


# virtual methods
.method public final getCaptureFrameRate()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->captureFrameRate:I

    return v0
.end method

.method public final getEncodingFrameRate()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->encodingFrameRate:I

    return v0
.end method

.method public final getSlowMotionFactor()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->captureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->encodingFrameRate:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final isNormal()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->captureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->encodingFrameRate:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSlowMotion()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->captureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->encodingFrameRate:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
