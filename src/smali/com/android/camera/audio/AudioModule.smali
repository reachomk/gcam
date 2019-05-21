.class public Lcom/android/camera/audio/AudioModule;
.super Ljava/lang/Object;
.source "AudioModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideBatchedUiExecutor(Lcom/google/android/apps/camera/async/MainThread;)Lcom/google/android/apps/camera/async/BatchedUiExecutor;
    .locals 1

    .prologue
    .line 1103
    new-instance v0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/BatchedUiExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
