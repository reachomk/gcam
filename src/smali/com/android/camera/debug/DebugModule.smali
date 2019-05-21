.class public Lcom/android/camera/debug/DebugModule;
.super Ljava/lang/Object;
.source "DebugModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/android/camera/debug/Writer;
    .locals 1

    .prologue
    .line 3047
    new-instance v0, Lcom/android/camera/debug/Writers$4;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/Writers$4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static logFuture(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/debug/Logger;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1273
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 1273
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/android/camera/debug/Loggers$6;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/camera/debug/Loggers$6;-><init>(Lcom/android/camera/debug/Logger;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    .line 1274
    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1282
    return-void
.end method

.method public static logOnClose(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 2289
    new-instance v0, Lcom/android/camera/debug/Loggers$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/debug/Loggers$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static tagFactory()Lcom/android/camera/debug/Logger$Factory;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;->access$300()Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    move-result-object v0

    .line 1034
    return-object v0
.end method

.method public static w(Ljava/lang/String;)Lcom/android/camera/debug/Writer;
    .locals 1

    .prologue
    .line 3023
    new-instance v0, Lcom/android/camera/debug/Loggers$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/Loggers$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
