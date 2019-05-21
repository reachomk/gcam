.class final Lcom/android/camera/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/android/camera/storage/Storage;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContentUrisToSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToContentUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToCreationTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderDrawable:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

.field private final contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "Storage"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToContentUris:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sContentUrisToSessions:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcom/android/camera/storage/StorageImpl$1;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lcom/android/camera/storage/StorageImpl$1;-><init>(I)V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;Lcom/android/camera/storage/FileNamer;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/storage/StorageImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    .line 63
    iput-object p2, p0, Lcom/android/camera/storage/StorageImpl;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    .line 64
    iput-object p3, p0, Lcom/android/camera/storage/StorageImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 65
    return-void
.end method

.method private addVideoToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D54KJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;JLjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/storage/MimeType;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    new-instance v2, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    .line 424
    invoke-virtual {v2, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 425
    invoke-virtual {v1, p5}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 426
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/util/Size;

    move/from16 v0, p10

    invoke-direct {v2, p9, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 427
    invoke-virtual {v1, v2}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 428
    invoke-virtual {v1, p6, p7}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {v1, p3, p4}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 430
    invoke-virtual {v1, p2}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 433
    const/4 v1, 0x0

    .line 435
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v2

    .line 442
    sget-object v3, Lcom/android/camera/storage/StorageImpl;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static generateUniquePlaceholderUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 315
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, "camera_session"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 317
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueOutputImagePath(Lcom/android/camera/storage/FileNamer;Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v1

    .line 240
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {p0, v1, p2}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v1

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final addEmptyPlaceholder(Lcom/android/camera/util/Size;J)Landroid/net/Uri;
    .locals 6

    .prologue
    .line 218
    invoke-static {}, Lcom/android/camera/storage/StorageImpl;->generateUniquePlaceholderUri()Landroid/net/Uri;

    move-result-object v1

    .line 219
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 222
    sget-object v2, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-object v1

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final addFileToMediaStore(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-object v1
.end method

.method public final addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILcom/google/common/base/Optional;Ljava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;I",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/android/camera/storage/MimeType;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/camera/storage/StorageImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    new-instance v2, Ljava/io/IOException;

    const-string v3, "image file already exists."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-interface {v3, v2, v0, v1}, Lcom/android/camera/storage/CameraFileUtil;->writeImageFile(Ljava/io/File;Ljava/io/InputStream;Lcom/google/common/base/Optional;)J

    move-result-wide v4

    .line 85
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 86
    invoke-virtual/range {v3 .. v13}, Lcom/android/camera/storage/StorageImpl;->addImageToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D4KKJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addImageToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D4KKJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/StorageImpl;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v1, v2}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    .line 150
    invoke-virtual {v1, v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p5}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p10}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 153
    invoke-static {p6}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, p8, p9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p3, p4}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p2}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 159
    const/4 v0, 0x0

    .line 161
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v1

    .line 168
    sget-object v2, Lcom/android/camera/storage/StorageImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to write MediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addPlaceholder(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;J)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Lcom/android/camera/storage/StorageImpl;->generateUniquePlaceholderUri()Landroid/net/Uri;

    move-result-object v0

    .line 1211
    sget-object v1, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/storage/StorageImpl;->replacePlaceholder(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 186
    return-object v0
.end method

.method public final containsPlaceholderSize(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public final getTimestampForSession(Landroid/net/Uri;)J
    .locals 4

    .prologue
    .line 464
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using current time for session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToCreationTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isSessionUri(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removePlaceholder(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public final replacePlaceholder(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V
    .locals 4

    .prologue
    .line 198
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "session bitmap cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 201
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderDrawable:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 206
    sget-object v1, Lcom/android/camera/storage/StorageImpl;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILcom/google/common/base/Optional;Ljava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;I",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/android/camera/storage/MimeType;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/camera/storage/StorageImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-static {v2, v0, v1}, Lcom/android/camera/storage/StorageImpl;->getUniqueOutputImagePath(Lcom/android/camera/storage/FileNamer;Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v2

    .line 263
    sget-object v3, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    move-object/from16 v0, p12

    if-ne v0, v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-interface {v3, v2, v0, v1}, Lcom/android/camera/storage/CameraFileUtil;->writeImageFile(Ljava/io/File;Ljava/io/InputStream;Lcom/google/common/base/Optional;)J

    .line 277
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/camera/storage/StorageImpl;->isSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1337
    invoke-virtual/range {v3 .. v13}, Lcom/android/camera/storage/StorageImpl;->addImageToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D4KKJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;ILjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v2

    .line 1348
    sget-object v3, Lcom/android/camera/storage/StorageImpl;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-object v3, Lcom/android/camera/storage/StorageImpl;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    .line 269
    :goto_1
    return-object p1

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-interface {v3, v2, v0, v4}, Lcom/android/camera/storage/CameraFileUtil;->writeImageFile(Ljava/io/File;Ljava/io/InputStream;Lcom/google/common/base/Optional;)J

    goto :goto_0

    .line 1352
    :cond_1
    new-instance v2, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v2, v3}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1355
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1356
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1357
    invoke-static/range {p7 .. p7}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/util/Size;

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {v3, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1358
    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1359
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1360
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v2

    .line 1361
    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v2

    .line 1362
    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1363
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final updateVideo(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;JLjava/io/InputStream;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;J",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/android/camera/storage/MimeType;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/camera/storage/StorageImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-static {v2, v0, v1}, Lcom/android/camera/storage/StorageImpl;->getUniqueOutputImagePath(Lcom/android/camera/storage/FileNamer;Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    move-object/from16 v0, p9

    invoke-interface {v3, v2, v0}, Lcom/android/camera/storage/CameraFileUtil;->writeFile(Ljava/io/File;Ljava/io/InputStream;)J

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/camera/storage/StorageImpl;->isSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1385
    invoke-direct/range {v2 .. v13}, Lcom/android/camera/storage/StorageImpl;->addVideoToMediaStore$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCD9GNCO9FDHGMSPPFADQ74QBECSTKKJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D54KJ3AC5R62BRCC5N6EBQJEHP6IRJ77D4KIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSRKDTP62PR55T6MIRB5AHSN0P9R55662RJ4E9NMIP1FDPIN8BQLE9KJM___(Landroid/content/ContentResolver;Ljava/lang/String;JLcom/google/common/base/Optional;JLjava/lang/String;IILcom/android/camera/storage/MimeType;)Landroid/net/Uri;

    move-result-object v2

    .line 1387
    sget-object v3, Lcom/android/camera/storage/StorageImpl;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v3, Lcom/android/camera/storage/StorageImpl;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    .line 298
    :goto_0
    return-object p1

    .line 1391
    :cond_0
    new-instance v2, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/StorageImpl;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1394
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1395
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/util/Size;

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {v3, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1396
    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1397
    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1398
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1399
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v2

    .line 1400
    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v2

    .line 1401
    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1402
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
