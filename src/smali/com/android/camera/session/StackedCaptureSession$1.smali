.class final Lcom/android/camera/session/StackedCaptureSession$1;
.super Ljava/lang/Object;
.source "StackedCaptureSession.java"

# interfaces
.implements Lcom/android/camera/stats/CaptureSessionStatsCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/StackedCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decorateAtTimeCaptureRequest(ILjava/lang/String;ZZFLjava/lang/String;Ljava/lang/String;ZFLcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final decorateAtTimeOfCaptureRequestAvailable(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final getActiveSensorSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getElapsedRealTime()J
    .locals 2

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIsFlash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMeteringData()Lcom/google/common/logging/nano/eventprotos$MeteringData;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSessionTrace()Lcom/android/camera/stats/CaptureSessionTrace;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCompleteForPhotoCaptureEvent()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final isValidForPhotoCaptureEvent()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final markProcessingTimeStart()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final photoCaptureDoneEvent()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final photoCaptureFailedEvent(I)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final setDirtyLensProbability(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public final setIsFlash(Z)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final setLuckyShotStats(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final setSessionTrace(Lcom/android/camera/stats/CaptureSessionTrace;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
