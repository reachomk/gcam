.class public final Lcom/google/android/apps/camera/async/UpdatableCountDownLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "UpdatableCountDownLatch.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/async/UpdatableCountDownLatch;->countDown()V

    .line 18
    return-void
.end method
