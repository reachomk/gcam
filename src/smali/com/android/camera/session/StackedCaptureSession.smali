.class public final Lcom/android/camera/session/StackedCaptureSession;
.super Ljava/lang/Object;
.source "StackedCaptureSession.java"

# interfaces
.implements Lcom/android/camera/session/SessionBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/StackedCaptureSession$Listener;,
        Lcom/android/camera/session/StackedCaptureSession$StackItemType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final collector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final gpsLocation:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Landroid/net/Uri;

.field private final sessionListener:Lcom/android/camera/session/StackedCaptureSession$Listener;

.field private final stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "StckdCptrSession"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/session/StackedCaptureSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Landroid/content/ContentResolver;Lcom/google/common/base/Optional;Lcom/android/camera/session/StackedCaptureSession$Listener;Lcom/android/camera/storage/Storage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Lcom/android/camera/session/StackedCaptureSession$Listener;",
            "Lcom/android/camera/storage/Storage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/camera/session/StackedCaptureSession$1;

    invoke-direct {v0}, Lcom/android/camera/session/StackedCaptureSession$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->collector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 186
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->id:Landroid/net/Uri;

    .line 187
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

    .line 188
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FilesProxy;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 189
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->contentResolver:Landroid/content/ContentResolver;

    .line 190
    iput-object p5, p0, Lcom/android/camera/session/StackedCaptureSession;->gpsLocation:Lcom/google/common/base/Optional;

    .line 191
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackedCaptureSession$Listener;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->sessionListener:Lcom/android/camera/session/StackedCaptureSession$Listener;

    .line 192
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->storage:Lcom/android/camera/storage/Storage;

    .line 193
    return-void
.end method

.method private final declared-synchronized renameFileAndAddToMediaStore(Ljava/io/File;Ljava/lang/String;IIIJ)Lcom/google/common/base/Optional;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "IIIJ)",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/StackedCaptureSession;->stackFolderFileNamer:Lcom/android/camera/storage/FileNamer;

    sget-object v3, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v14

    .line 259
    sget-object v2, Lcom/android/camera/session/StackedCaptureSession;->TAG:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Saving using stack image saver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/StackedCaptureSession;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Lcom/android/camera/storage/FilesProxy;->move(Ljava/io/File;Ljava/io/File;)V

    .line 262
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 264
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/StackedCaptureSession;->storage:Lcom/android/camera/storage/Storage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/StackedCaptureSession;->contentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/StackedCaptureSession;->gpsLocation:Lcom/google/common/base/Optional;

    .line 273
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    move-object/from16 v5, p2

    move-wide/from16 v6, p6

    move/from16 v9, p5

    move/from16 v11, p3

    move/from16 v12, p4

    .line 266
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/storage/Storage;->addImageToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D4KKJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v2

    .line 265
    invoke-static {v2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 288
    :goto_0
    monitor-exit p0

    return-object v2

    .line 278
    :catch_0
    move-exception v2

    .line 279
    :try_start_2
    sget-object v3, Lcom/android/camera/session/StackedCaptureSession;->TAG:Ljava/lang/String;

    const-string v4, "Unable to rename file from %s to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 283
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 284
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 281
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v3, v4, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->sessionListener:Lcom/android/camera/session/StackedCaptureSession$Listener;

    iget-object v1, p0, Lcom/android/camera/session/StackedCaptureSession;->id:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackedCaptureSession$Listener;->onStackedItemFailed(Landroid/net/Uri;)V

    .line 309
    return-void
.end method

.method public final getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->collector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public final getGpsLocation()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->gpsLocation:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getId()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->id:Landroid/net/Uri;

    return-object v0
.end method

.method public final saveAndFinish(Ljava/io/File;Ljava/lang/String;IIIJ)Lcom/google/common/base/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "IIIJ)",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p6

    .line 244
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/session/StackedCaptureSession;->renameFileAndAddToMediaStore(Ljava/io/File;Ljava/lang/String;IIIJ)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/camera/session/StackedCaptureSession;->sessionListener:Lcom/android/camera/session/StackedCaptureSession$Listener;

    iget-object v2, p0, Lcom/android/camera/session/StackedCaptureSession;->id:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/session/StackedCaptureSession$Listener;->onStackedItemFinished(Landroid/net/Uri;Lcom/google/common/base/Optional;)V

    .line 247
    return-object v0
.end method

.method public final saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/camera/session/MediaInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public final updateThumbnail$51666RRD5TH7ARBGEHIM6Q1FCTM6IP355TM6UOB45TP6ASRFELP66P9FCHP62TR1C9M6ABQ4E9GNEOB2DHIL4PBJDTQN4OR57D4KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHFADQ62ORBCLI46OBGEHQN4PAJCLPN6QBFDOI56T31CDLKIT35DLA7IS357CKLC___(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;II)V
    .locals 3

    .prologue
    .line 207
    sget-object v0, Lcom/android/camera/session/StackedCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, ">>> updateThumbnail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/session/StackedCaptureSession;->sessionListener:Lcom/android/camera/session/StackedCaptureSession$Listener;

    iget-object v1, p0, Lcom/android/camera/session/StackedCaptureSession;->id:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p3}, Lcom/android/camera/session/StackedCaptureSession$Listener;->onThumbnailUpdated$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNM8SJ1ETGM4R355T274OBNC5H6OPAICLPMUTBICDIJMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONL6T31CDLMAP23C5O78TBICL9MASRJD5NMS92JEHGM6QQ9EHIMQL3PE1IJMAAM(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;II)V

    .line 209
    return-void
.end method
