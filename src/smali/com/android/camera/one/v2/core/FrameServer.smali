.class public interface abstract Lcom/android/camera/one/v2/core/FrameServer;
.super Ljava/lang/Object;
.source "FrameServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/FrameServer$RequestType;,
        Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    }
.end annotation


# virtual methods
.method public abstract createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
