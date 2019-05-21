.class public Lcom/android/camera/storage/FileNamerManager;
.super Ljava/lang/Object;
.source "FileNamerManager.java"


# instance fields
.field private final fileNamerFactory:Lcom/android/camera/storage/FileNamerImplFactory;

.field private final fileNamerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/android/camera/storage/FileNamer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/storage/FileNamerImplFactory;)V
    .locals 1

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    iput-object p1, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerFactory:Lcom/android/camera/storage/FileNamerImplFactory;

    .line 2022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerMap:Ljava/util/Map;

    .line 2023
    return-void
.end method


# virtual methods
.method public getFileNamer(Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/FileNamer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerMap:Ljava/util/Map;

    monitor-enter v1

    .line 1032
    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 1033
    iget-object v0, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    monitor-exit v1

    .line 1038
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerFactory:Lcom/android/camera/storage/FileNamerImplFactory;

    invoke-virtual {v0, v2}, Lcom/android/camera/storage/FileNamerImplFactory;->create$5166KOBMC4NMIRPF8PKMOP9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQ6D5M6AJJ1DLIN4IBDE1M3M___(Ljava/io/File;)Lcom/android/camera/storage/FileNamer;

    move-result-object v0

    .line 1037
    iget-object v3, p0, Lcom/android/camera/storage/FileNamerManager;->fileNamerMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    monitor-exit v1

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
