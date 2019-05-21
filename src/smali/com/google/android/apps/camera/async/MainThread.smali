.class public final Lcom/google/android/apps/camera/async/MainThread;
.super Lcom/google/android/apps/camera/async/HandlerExecutor;
.source "MainThread.java"


# static fields
.field private static final sIsMainThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread$1;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 13
    return-void
.end method

.method public static checkMainThread()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/apps/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Not main thread."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static isMainThread()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
