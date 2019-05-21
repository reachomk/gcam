.class public interface abstract Lcom/android/camera/one/v2/autofocus/TorchSwitch;
.super Ljava/lang/Object;
.source "TorchSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;
    }
.end annotation


# virtual methods
.method public abstract acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
