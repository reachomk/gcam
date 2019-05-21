.class final Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;
.super Ljava/lang/Object;
.source "HandlerFactory.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/HandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedHandlerCloser"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/os/HandlerThread;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->thread:Landroid/os/HandlerThread;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/HandlerThread;B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;-><init>(Landroid/os/HandlerThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    new-instance v1, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser$1;-><init>(Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
