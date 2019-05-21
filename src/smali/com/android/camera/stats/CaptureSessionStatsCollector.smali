.class public interface abstract Lcom/android/camera/stats/CaptureSessionStatsCollector;
.super Ljava/lang/Object;
.source "CaptureSessionStatsCollector.java"


# virtual methods
.method public abstract decorateAtTimeCaptureRequest(ILjava/lang/String;ZZFLjava/lang/String;Ljava/lang/String;ZFLcom/google/android/apps/camera/uiutils/TouchCoordinate;Ljava/lang/Boolean;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;)V
.end method

.method public abstract decorateAtTimeOfCaptureRequestAvailable(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
.end method

.method public abstract decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V
.end method

.method public abstract getActiveSensorSize()Landroid/graphics/Rect;
.end method

.method public abstract getElapsedRealTime()J
.end method

.method public abstract getFaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsFlash()Ljava/lang/Boolean;
.end method

.method public abstract getMeteringData()Lcom/google/common/logging/nano/eventprotos$MeteringData;
.end method

.method public abstract getSessionTrace()Lcom/android/camera/stats/CaptureSessionTrace;
.end method

.method public abstract isCompleteForPhotoCaptureEvent()Z
.end method

.method public abstract isValidForPhotoCaptureEvent()Z
.end method

.method public abstract markProcessingTimeStart()V
.end method

.method public abstract photoCaptureDoneEvent()V
.end method

.method public abstract photoCaptureFailedEvent(I)V
.end method

.method public abstract setDirtyLensProbability(Ljava/lang/Float;)V
.end method

.method public abstract setIsFlash(Z)V
.end method

.method public abstract setLuckyShotStats(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
.end method

.method public abstract setSessionTrace(Lcom/android/camera/stats/CaptureSessionTrace;)V
.end method
