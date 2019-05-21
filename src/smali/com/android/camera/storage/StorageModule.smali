.class public Lcom/android/camera/storage/StorageModule;
.super Ljava/lang/Object;
.source "StorageModule.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "StorageModule"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/StorageModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getExternalCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static provideDcimCameraFolder()Lcom/android/camera/storage/detachablefile/DetachableFolder;
    .locals 3

    .prologue
    .line 70
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/File;

    const-string v2, "Camera"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;

    invoke-direct {v0, v1}, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static provideFileNamer(Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/FileNamer;
    .locals 5

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/storage/FileNamerManager;->getFileNamer(Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/FileNamer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/android/camera/storage/StorageModule;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to get FileNamer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static provideImageFileFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 78
    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static providePanoramaFileFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 85
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static provideStorageSpaceChecker(Ljava/util/concurrent/ExecutorService;Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/StorageSpaceChecker;
    .locals 8

    .prologue
    .line 59
    new-instance v1, Lcom/android/camera/storage/StorageSpaceChecker;

    const-wide/32 v2, 0xa00000

    const-wide/32 v4, 0x3200000

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/storage/StorageSpaceChecker;-><init>(JJLcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public static provideVideoFileFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 92
    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method
