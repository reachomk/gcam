.class public final Lcom/android/camera/storage/MediaSaverImpl;
.super Ljava/lang/Object;
.source "MediaSaverImpl.java"

# interfaces
.implements Lcom/android/camera/storage/MediaSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "MediaSaverImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/MediaSaverImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/camera/storage/Storage;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/storage/MediaSaverImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 36
    iput-object p2, p0, Lcom/android/camera/storage/MediaSaverImpl;->storage:Lcom/android/camera/storage/Storage;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/MediaSaverImpl;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/storage/MediaSaverImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;Lcom/android/camera/storage/MimeType;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;III",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            "Lcom/android/camera/storage/MimeType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;

    iget-object v12, p0, Lcom/android/camera/storage/MediaSaverImpl;->contentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p11

    move-object/from16 v11, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;-><init>(Lcom/android/camera/storage/MediaSaverImpl;Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/android/camera/storage/MimeType;Lcom/google/common/base/Optional;Landroid/content/ContentResolver;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V

    .line 77
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/MediaSaverImpl$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method


# virtual methods
.method public final addAnimation(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IILcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;II",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v9, 0x0

    .line 98
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v10

    sget-object v12, Lcom/android/camera/storage/MimeType;->GIF:Lcom/android/camera/storage/MimeType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p8

    .line 90
    invoke-direct/range {v1 .. v12}, Lcom/android/camera/storage/MediaSaverImpl;->addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;Lcom/android/camera/storage/MimeType;)V

    .line 101
    return-void
.end method

.method public final addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;III",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v12, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/camera/storage/MediaSaverImpl;->addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;Lcom/android/camera/storage/MimeType;)V

    .line 51
    return-void
.end method
