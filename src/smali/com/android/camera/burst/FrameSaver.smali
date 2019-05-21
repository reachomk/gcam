.class interface abstract Lcom/android/camera/burst/FrameSaver;
.super Ljava/lang/Object;
.source "FrameSaver.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/FrameSaver$FrameSavingTask;
    }
.end annotation


# virtual methods
.method public abstract enqueue(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract releaseTask(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
.end method

.method public abstract tryAcquireFreeTask()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/burst/FrameSaver$FrameSavingTask;",
            ">;"
        }
    .end annotation
.end method
