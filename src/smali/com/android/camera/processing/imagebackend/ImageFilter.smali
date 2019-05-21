.class public interface abstract Lcom/android/camera/processing/imagebackend/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract start()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
.end method
