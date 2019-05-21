.class public final Lcom/google/android/apps/camera/async/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v1, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;-><init>(Landroid/os/HandlerThread;B)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method
