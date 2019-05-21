.class public interface abstract Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;
.super Ljava/lang/Object;
.source "SingleCreationsGenerator.java"


# virtual methods
.method public abstract generateCreationAsync(Lcom/android/camera/burst/postprocessing/CreationType;)V
.end method

.method public abstract getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/CreationType;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateAvailableCreationsAsync()V
.end method
