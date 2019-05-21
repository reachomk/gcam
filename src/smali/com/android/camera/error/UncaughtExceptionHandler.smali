.class public final Lcom/android/camera/error/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"


# instance fields
.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/error/UncaughtExceptionHandler;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 22
    return-void
.end method

.method public static crash(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/error/UncaughtExceptionHandler;

    new-instance v1, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/camera/error/UncaughtExceptionHandler;-><init>(Lcom/google/android/apps/camera/async/MainThread;)V

    invoke-virtual {v0, p0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crashOnMainThread(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final crashOnMainThread(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/error/UncaughtExceptionHandler;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/error/UncaughtExceptionHandler$1;

    invoke-direct {v1, p1}, Lcom/android/camera/error/UncaughtExceptionHandler$1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
