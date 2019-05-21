.class public final Lcom/android/camera/burst/FrameSavingProgressMonitor;
.super Ljava/lang/Object;
.source "FrameSavingProgressMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final burstDirectory:Ljava/io/File;

.field private final inProgressFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "BurstFSPM"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->burstDirectory:Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->burstDirectory:Ljava/io/File;

    const-string v2, ".burst_in_progress.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized isCompleted()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized markCompleted()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Could not delete in progress lock file."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Could not find in progress lock file."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized markStarted()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->burstDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->burstDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/FrameSavingProgressMonitor;->inProgressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_1
    monitor-exit p0

    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
