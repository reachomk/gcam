.class final Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;
.super Ljava/lang/Object;
.source "MainThreadFilmstripListener.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/MainThreadFilmstripListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainOrDirectExecutor"
.end annotation


# instance fields
.field private mainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
