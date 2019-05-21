.class public interface abstract Lcom/android/camera/one/v2/command/CameraCommand;
.super Ljava/lang/Object;
.source "CameraCommand.java"


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
