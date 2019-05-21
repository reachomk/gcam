.class public final Lcom/android/camera/session/StackSaverFactory;
.super Ljava/lang/Object;
.source "StackSaverFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final dcimCameraFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

.field private final fileNamerManager:Lcom/android/camera/storage/FileNamerManager;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "StackSaverFactory"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/session/StackSaverFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/camera/storage/detachablefile/DetachableFolder;Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/Storage;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/detachablefile/DetachableFolder;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->dcimCameraFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 46
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamerManager;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->fileNamerManager:Lcom/android/camera/storage/FileNamerManager;

    .line 47
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 48
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->storage:Lcom/android/camera/storage/Storage;

    .line 49
    return-void
.end method


# virtual methods
.method public final create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOORFDKNMERRFCTM6ABR3DTMMQRRE5TH62SR55T7N0T39DTN62R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJEHGM6QQJC5R6ASHR(Lcom/android/camera/session/StackableSession;Ljava/lang/String;Lcom/google/common/base/Optional;)Lcom/android/camera/session/StackSaver;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/StackableSession;",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/android/camera/session/StackSaver;"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/StackSaverFactory;->fileNamerManager:Lcom/android/camera/storage/FileNamerManager;

    iget-object v1, p0, Lcom/android/camera/session/StackSaverFactory;->dcimCameraFolder:Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 64
    invoke-interface {v1, p2}, Lcom/android/camera/storage/detachablefile/DetachableFolder;->subdirectory(Ljava/lang/String;)Lcom/android/camera/storage/detachablefile/DetachableFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/FileNamerManager;->getFileNamer(Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/FileNamer;

    move-result-object v2

    .line 65
    new-instance v0, Lcom/android/camera/session/StackSaverImpl;

    iget-object v3, p0, Lcom/android/camera/session/StackSaverFactory;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    iget-object v5, p0, Lcom/android/camera/session/StackSaverFactory;->contentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/session/StackSaverFactory;->storage:Lcom/android/camera/storage/Storage;

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/session/StackSaverImpl;-><init>(Lcom/android/camera/session/StackableSession;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/google/common/base/Optional;Landroid/content/ContentResolver;Lcom/android/camera/storage/Storage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/android/camera/session/StackSaverFactory;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to get FileNamer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method
