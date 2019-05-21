.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;
.super Ljava/lang/Object;
.source "CaptureResultProxy.java"


# virtual methods
.method public abstract get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getFrameNumber()J
.end method

.method public abstract getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract getRequest()Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;
.end method
