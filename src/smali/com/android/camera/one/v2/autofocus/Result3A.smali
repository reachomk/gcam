.class public interface abstract Lcom/android/camera/one/v2/autofocus/Result3A;
.super Ljava/lang/Object;
.source "Result3A.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract awaitResultFrameNumber()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
