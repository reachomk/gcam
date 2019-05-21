.class public final Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;
.super Ljava/lang/Object;
.source "GcamDngImageWriter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WRITE_DNG_TO_MEDIA_STORE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final appContext:Landroid/content/Context;

.field private final cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final flags:Lcom/android/camera/util/flags/Flags;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "GcamDngImgWrtr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.exp.dng.ms"

    invoke-direct {v0, v1}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->WRITE_DNG_TO_MEDIA_STORE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/storage/Storage;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/util/flags/Flags;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->appContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->contentResolver:Landroid/content/ContentResolver;

    .line 58
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 59
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    .line 60
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->storage:Lcom/android/camera/storage/Storage;

    .line 61
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 62
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->flags:Lcom/android/camera/util/flags/Flags;

    .line 63
    return-void
.end method


# virtual methods
.method public final processDngImageData$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRED5NIUGJPEHIK4TB6CPIN4EQ995666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQJC5J6AGRCDTPMAOB2DHIJMAAM(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/nio/ByteBuffer;IILcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 78
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/storage/MimeType;->DNG:Lcom/android/camera/storage/MimeType;

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v2

    .line 80
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HDR raw output enabled: Writing merged DNG image to disk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v1, -0x1

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    invoke-interface {v0, v2, p2}, Lcom/android/camera/storage/CameraFileUtil;->writeBytesToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 88
    :goto_0
    if-lez v0, :cond_0

    .line 89
    :try_start_2
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    .line 103
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HDR DNG output saved. Writing file to media store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->storage:Lcom/android/camera/storage/Storage;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/storage/Storage;->addFileToMediaStore(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :cond_0
    invoke-interface {p5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 109
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_3
    sget-object v3, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->TAG:Ljava/lang/String;

    const-string v4, "Exception while writing merged DNG image: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    invoke-interface {p5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    throw v0
.end method
