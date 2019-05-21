.class public interface abstract Lcom/android/camera/processing/ProcessingTask;
.super Ljava/lang/Object;
.source "ProcessingTask.java"


# virtual methods
.method public abstract getSession()Lcom/android/camera/session/SessionBase;
.end method

.method public abstract process(Landroid/content/Context;)V
.end method

.method public abstract resume()V
.end method

.method public abstract setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract suspend()V
.end method
