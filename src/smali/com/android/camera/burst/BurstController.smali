.class interface abstract Lcom/android/camera/burst/BurstController;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstController$ImageStreamProperties;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract processBurstResults(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;>;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startAnalysis()Lcom/google/android/libraries/smartburst/selection/FrameDropper;
.end method
