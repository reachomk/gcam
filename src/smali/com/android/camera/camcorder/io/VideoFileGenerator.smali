.class public final Lcom/android/camera/camcorder/io/VideoFileGenerator;
.super Ljava/lang/Object;
.source "VideoFileGenerator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/storage/FileNamer;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/camcorder/io/VideoFileGenerator;->mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 29
    iput-object p2, p0, Lcom/android/camera/camcorder/io/VideoFileGenerator;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 30
    return-void
.end method


# virtual methods
.method public final cleanEmptyFiles()V
    .locals 8

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/camcorder/io/VideoFileGenerator;->mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 44
    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/camera/camcorder/io/VideoFileGenerator$1;

    invoke-direct {v1}, Lcom/android/camera/camcorder/io/VideoFileGenerator$1;-><init>()V

    .line 45
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public final createVideoFile(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;)Ljava/io/File;
    .locals 7

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/camcorder/io/VideoFileGenerator;->fileNamer:Lcom/android/camera/storage/FileNamer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/FileNamer;->generateVideoName(J)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/camcorder/io/VideoFileGenerator;->mediaFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 35
    invoke-interface {v2}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->get()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->getFilenameExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    return-object v1
.end method
