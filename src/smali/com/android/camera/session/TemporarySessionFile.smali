.class public final Lcom/android/camera/session/TemporarySessionFile;
.super Ljava/lang/Object;
.source "TemporarySessionFile.java"


# instance fields
.field private file:Ljava/io/File;

.field private final sessionDirectory:Ljava/lang/String;

.field private final sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/SessionStorageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/session/TemporarySessionFile;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 26
    iput-object p2, p0, Lcom/android/camera/session/TemporarySessionFile;->sessionDirectory:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/camera/session/TemporarySessionFile;->title:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->file:Ljava/io/File;

    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isUsable()Z
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/TemporarySessionFile;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

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

.method public final declared-synchronized prepare()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/session/TemporarySessionFile;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 49
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/session/TemporarySessionFile;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    iget-object v2, p0, Lcom/android/camera/session/TemporarySessionFile;->sessionDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/session/TemporarySessionFile;->title:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/session/SessionStorageManager;->createTemporaryOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/session/TemporarySessionFile;->file:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
