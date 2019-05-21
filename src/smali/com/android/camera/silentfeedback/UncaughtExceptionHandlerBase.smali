.class public abstract Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerBase.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final nextExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "UncaughtExHndlrBase"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->nextExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    iput-object v0, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->callNext(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final callNext(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->TAG:Ljava/lang/String;

    const-string v1, "Calling next."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->nextExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->nextExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract handleException(Ljava/lang/Throwable;)V
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->handleException(Ljava/lang/Throwable;)V

    .line 29
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Uncaught exception in background thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;-><init>(Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->callNext(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
