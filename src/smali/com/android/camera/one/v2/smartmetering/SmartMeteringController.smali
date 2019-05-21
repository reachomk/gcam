.class public interface abstract Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;
.super Ljava/lang/Object;
.source "SmartMeteringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;
    }
.end annotation


# virtual methods
.method public abstract currentMode$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRJDLGN4T3DCLQ6ASJ9DPJIUKRDC5P78JB5EHIN4QBECT6MUP357C______()I
.end method

.method public abstract getLatestViewfinderFrame()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startCapture(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;J)Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
