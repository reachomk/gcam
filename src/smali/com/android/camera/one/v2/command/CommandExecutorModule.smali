.class public Lcom/android/camera/one/v2/command/CommandExecutorModule;
.super Ljava/lang/Object;
.source "CommandExecutorModule.java"


# instance fields
.field public camcorderSnapshotFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;"
        }
    .end annotation
.end field

.field public imageExposedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->camcorderSnapshotFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1025
    iput-object p2, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->imageExposedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1026
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->camcorderSnapshotFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1030
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule;->imageExposedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1031
    return-void
.end method
